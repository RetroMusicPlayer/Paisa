import 'dart:math';

import 'package:flutter/material.dart';

import 'ball.dart';

class LavaPainter extends CustomPainter {
  LavaPainter(this.lava, {required this.color});

  final Color color;
  final Lava lava;

  @override
  void paint(Canvas canvas, Size size) {
    if (lava.size != size) lava.updateSize(size);
    lava.draw(canvas, size, color, debug: false);
  }

  @override
  bool shouldRepaint(LavaPainter oldDelegate) {
    return true;
  }
}

class Lava {
  Lava(this.ballsLength);

  late List<Ball> balls;
  int ballsLength;
  double iter = 0;
  final ix = [1, 0, -1, 0, 0, 1, 0, -1, -1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1];
  late Map<int, Map<int, ForcePoint>> matrix;
  final List<int> mscases = [0, 3, 0, 3, 1, 3, 0, 3, 2, 2, 0, 2, 1, 1, 0];
  bool paint = false;
  final List<int> plx = [0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0];
  final List<int> ply = [0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 1, 0, 1];
  late Rect sRect;
  int sign = 1;
  Size? size;
  num step = 5;

  double get width => size?.width ?? 10;

  double get height => size?.height ?? 10;

  double get sx => (width ~/ step).floor().toDouble();

  double get sy => (height ~/ step).floor().toDouble();

  updateSize(Size size) {
    this.size = size;
    sRect = Rect.fromCenter(
        center: Offset.zero, width: sx.toDouble(), height: sy.toDouble());

    matrix = {};
    for (int i = (sRect.left - step).toInt(); i < sRect.right + step; i++) {
      matrix[i] = {};
      for (int j = (sRect.top - step).toInt(); j < sRect.bottom + step; j++) {
        matrix[i]![j] = ForcePoint(
            (i + sx ~/ 2).toDouble() * step, (j + sy ~/ 2).toDouble() * step);
      }
    }
    balls = List.filled(ballsLength, Ball(const Size(0, 0)));
    for (var index = 0; ballsLength > index; index++) {
      balls[index] = Ball(size);
    }
  }

  double computeForce(int sx, int sy) {
    double force;
    if (!sRect.contains(Offset(sx.toDouble(), sy.toDouble()))) {
      force = .6 * sign;
    } else {
      force = 0;
      final ForcePoint? point = matrix[sx]![sy];
      for (final ball in balls) {
        force += ball.size *
            ball.size /
            (-2 * point!.x * ball.pos.x -
                2 * point.y * ball.pos.y +
                ball.pos.magnitude +
                point.magnitude);
      }
      force *= sign;
    }

    matrix[sx]![sy]!.force = force;
    return force;
  }

  List? marchingSquares(List? pathParameters, Path path) {
    int sx = pathParameters?[0] ?? 0;
    int sy = pathParameters?[1] ?? 0;
    int pdir = pathParameters?[2] ?? 0;

    if (matrix[sx]![sy]!.computed == iter) return null;

    int dir;

    int mscase = 0;
    for (var a = 0; 4 > a; a++) {
      final dx = ix[a + 12];
      final dy = ix[a + 16];
      double force = matrix[sx + dx]![sy + dy]!.force;
      if (force > 0 && sign < 0 || force < 0 && sign > 0 || force == 0) {
        force = computeForce(sx + dx, sy + dy);
      }
      if (force.abs() > 1) mscase += pow(2, a).toInt();
    }

    if (15 == mscase) {
      return [sx, sy - 1, null];
    } else if (5 == mscase) {
      dir = 2 == pdir ? 3 : 1;
    } else if (10 == mscase) {
      dir = 3 == pdir ? 0 : 2;
    } else {
      dir = mscases[mscase];
      matrix[sx]![sy]!.computed = iter;
    }

    final dx1 = plx[4 * dir + 2];
    final dy1 = ply[4 * dir + 2];
    final pForce1 = matrix[sx + dx1]![sy + dy1]!.force;

    final dx2 = plx[4 * dir + 3];
    final dy2 = ply[4 * dir + 3];
    final pForce2 = matrix[sx + dx2]![sy + dy2]!.force;
    final p =
        step / ((pForce1.abs() - 1).abs() / (pForce2.abs() - 1).abs() + 1.0);

    final dxX = plx[4 * dir];
    final dyX = ply[4 * dir];
    final dxY = plx[4 * dir + 1];
    final dyY = ply[4 * dir + 1];

    final lineX = matrix[sx + dxX]![sy + dyX]!.x + ix[dir] * p;
    final lineY = matrix[sx + dxY]![sy + dyY]!.y + ix[dir + 4] * p;

    if (paint == false) {
      path.moveTo(lineX, lineY);
    } else {
      path.lineTo(lineX, lineY);
    }
    paint = true;
    return [sx + ix[dir + 4], sy + ix[dir + 8], dir];
  }

  draw(Canvas canvas, Size size, Color color, {bool debug = false}) {
    for (Ball ball in balls) {
      ball.moveIn(size);
    }

    try {
      iter++;
      sign = -sign;
      paint = false;

      for (Ball ball in balls) {
        Path path = Path();
        List? pathParameters = [
          (ball.pos.x / step - sx / 2).round(),
          (ball.pos.y / step - sy / 2).round(),
          null
        ];
        do {
          pathParameters = marchingSquares(pathParameters, path);
        } while (pathParameters != null);
        if (paint) {
          path.close();

          Paint paint = Paint()..color = color;

          canvas.drawPath(path, paint);

          this.paint = false;
        }
      }
    } catch (_) {}

    if (debug) {
      for (final ball in balls) {
        canvas.drawCircle(Offset(ball.pos.x.toDouble(), ball.pos.y.toDouble()),
            ball.size, Paint()..color = Colors.black.withOpacity(0.5));
      }

      matrix.forEach(
        (_, item) => item.forEach(
          (_, point) => canvas.drawCircle(
            Offset(point.x.toDouble(), point.y.toDouble()),
            max(1, min(point.force.abs(), 5)),
            Paint()..color = point.force > 0 ? Colors.blue : Colors.red,
          ),
        ),
      );
    }
  }
}
