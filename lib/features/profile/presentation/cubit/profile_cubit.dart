import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/error/failures.dart';
import 'package:paisa/features/profile/domain/use_case/profile_use_case.dart';

part 'profile_state.dart';

@injectable
class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(
    this.imagePickerUseCase,
    @Named('settings') this.settings,
  ) : super(ProfileInitial());

  final ImagePickerUseCase imagePickerUseCase;
  final Box<dynamic> settings;

  void saveName(String name) {
    settings.put(userNameKey, name).then((value) => emit(SavedNameState()));
  }

  void pickImage() {
    imagePickerUseCase().then((imagePicker) {
      return imagePicker.fold(
        (failure) =>
            emit(ProfileImagePickErrorState(mapFailureToMessage(failure))),
        (status) => null,
      );
    });
  }
}
