import 'package:collection/collection.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:paisa/core/data/super_id.dart';
import 'package:paisa/core/error/exceptions.dart';

class DataManager<T extends HiveObject> {
  final Box<T> box;

  DataManager({required this.box});

  Future<int> add(T model) async {
    try {
      if (model is SuperId) {
        final int id = await box.add(model);
        (model as SuperId).superId = id;
        await model.save();
        return id;
      } else {
        throw const Exceptions.notASuperIdClass();
      }
    } catch (err) {
      throw const Exceptions.itemNotAbleToAdd();
    }
  }

  Future<List<T>> all() async {
    try {
      final Iterable<T> result = box.values;
      if (result.isEmpty) {
        throw const Exceptions.empty();
      } else {
        return result.toList();
      }
    } catch (err) {
      if (err is NoItemsException) {
        throw const Exceptions.empty();
      }
      throw const Exceptions.unknown();
    }
  }

  Future<void> deleteById(int id) async {
    try {
      return box.delete(id);
    } catch (err) {
      throw const Exceptions.notAbleToDelete();
    }
  }

  Future<T?> findById(int? id) async {
    try {
      return box.values
          .firstWhereOrNull((element) => (element as SuperId).superId == id);
    } catch (err) {
      throw const Exceptions.itemNotFound();
    }
  }

  Future<void> update(T model) {
    try {
      if (model is SuperId) {
        return box.put((model as SuperId).superId!, model);
      } else {
        throw const Exceptions.notASuperIdClass();
      }
    } catch (err) {
      throw const Exceptions.unAbleToUpdate();
    }
  }

  Future<void> clear() {
    try {
      return box.clear();
    } catch (err) {
      throw const Exceptions.cannotClear();
    }
  }
}
