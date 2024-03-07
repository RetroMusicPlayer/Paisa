import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.fileNotFound() = FileNotFoundFailure;
  const factory Failure.itemNotFound() = ItemNotFoundFailure;
  const factory Failure.empty() = EmptyItemsFailure;
  const factory Failure.errorFile() = ErrorFileFailure;
  const factory Failure.cache() = CacheFailure;
  const factory Failure.itemNotAbleToAdd() = ItemNotAbleToAddFailure;
  const factory Failure.cannotClear() = CannotClearFailure;
  const factory Failure.notAbleToDelete() = NotAbleToDeleteFailure;
  const factory Failure.unAbleToExport() = UnableToExportFailure;
  const factory Failure.unAbleToExportFile() = UnableToExportFileFailure;
  const factory Failure.unAbleToUpdate() = UnableToUpdateFailure;
  const factory Failure.errorPickingImage() = ErrorPickIngImageFailure;
}

String mapFailureToMessage(Failure failure) {
  switch (failure.runtimeType) {
    case FileNotFoundFailure:
      return 'File not found';
    case UnableToExportFailure:
      return 'Error file export';
    default:
      return 'Unexpected error';
  }
}
