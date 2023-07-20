part of 'profile_cubit.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

class ProfileInitial extends ProfileState {}

class ProfileImagePickErrorState extends ProfileState {
  final String error;

  const ProfileImagePickErrorState(this.error);
  @override
  List<Object> get props => [error];
}

class SavedNameState extends ProfileState {
  @override
  List<Object> get props => [identityHashCode(this)];
}
