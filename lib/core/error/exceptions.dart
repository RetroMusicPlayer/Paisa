import 'package:freezed_annotation/freezed_annotation.dart';
part 'exceptions.freezed.dart';

@freezed
class Exceptions with _$Exceptions {
  const factory Exceptions.fileNotFound() = FileNotFoundException;
  const factory Exceptions.itemNotFound() = ItemNotFoundException;
  const factory Exceptions.errorFile() = ErrorFileException;
  const factory Exceptions.cache() = CacheException;
  const factory Exceptions.empty() = NoItemsException;
  const factory Exceptions.itemNotAbleToAdd() = ItemNotAbleToAddException;
  const factory Exceptions.notASuperIdClass() = NotASuperIdClassException;
  const factory Exceptions.cannotClear() = CannotClearException;
  const factory Exceptions.notAbleToDelete() = NotAbleToDeleteException;
  const factory Exceptions.unAbleToExport() = UnableToExportException;
  const factory Exceptions.unAbleToFileExport() = UnableToExportFileException;
  const factory Exceptions.unAbleToUpdate() = UnableToUpdateException;
  const factory Exceptions.unknown() = UnknownException;
}
