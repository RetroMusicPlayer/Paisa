import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/widgets/paisa_widgets/paisa_card.dart';

class SummaryMonthCardWidget extends StatelessWidget {
  const SummaryMonthCardWidget({
    super.key,
    required this.total,
    required this.title,
    required this.graphLineColor,
    required this.iconData,
    required this.data,
  });

  final List<double> data;
  final Color graphLineColor;
  final IconData iconData;
  final String title;
  final String total;

  @override
  Widget build(BuildContext context) {
    return PaisaFilledCard(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                CircleAvatar(
                  maxRadius: 16,
                  backgroundColor: graphLineColor.withOpacity(0.3),
                  child: Icon(
                    iconData,
                    color: graphLineColor,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: context.bodySmall?.copyWith(
                            color: context.onSurfaceVariant.withOpacity(0.75),
                          ),
                        ),
                        Text(
                          total,
                          style: context.titleSmall
                              ?.copyWith(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Sparkline(
                  data: data,
                  useCubicSmoothing: true,
                  cubicSmoothingFactor: 0.2,
                  lineWidth: 3,
                  lineColor: graphLineColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
