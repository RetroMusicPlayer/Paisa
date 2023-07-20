import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object?> get props => [];
}

class FileNotFoundFailure extends Failure {}

class ErrorFileExportFailure extends Failure {}

class ErrorImagePickFailure extends Failure {}

String mapFailureToMessage(Failure failure) {
  switch (failure.runtimeType) {
    case FileNotFoundFailure:
      return 'File not found';
    case ErrorFileExportFailure:
      return 'Error file export';
    default:
      return 'Unexpected error';
  }
}
