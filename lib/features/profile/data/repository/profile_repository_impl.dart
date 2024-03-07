import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/features/profile/domain/repository/profile_repository.dart';
import 'package:path_provider/path_provider.dart';

@Singleton(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  ProfileRepositoryImpl(
    this.imagePicker,
    @Named('settings') this.settings,
  );

  final ImagePicker imagePicker;
  final Box<dynamic> settings;

  @override
  Future<Either<Failure, bool>> pickImageAndSave() async {
    try {
      final XFile? imageFile =
          await imagePicker.pickImage(source: ImageSource.gallery);
      if (imageFile != null) {
        final String path = await _saveImageFileToCache(imageFile);
        await settings.put(userImageKey, path);
        return right(true);
      } else {
        return left(const Failure.fileNotFound());
      }
    } catch (err) {
      return left(const Failure.errorPickingImage());
    }
  }

  Future<String> _saveImageFileToCache(XFile xFile) async {
    final Directory directory = await getTemporaryDirectory();
    final cachePath = '${directory.path}/profile_picture.jpg';
    final imageFile = File(xFile.path);
    await imageFile.copy(cachePath);
    return cachePath;
  }
}
