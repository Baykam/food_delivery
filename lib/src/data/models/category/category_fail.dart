import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_fail.freezed.dart';

@freezed
class CategoryFailed with _$CategoryFailed {
  const factory CategoryFailed.noConnection() = NoConnection;
  const factory CategoryFailed.serverError() = ServerError;
  const factory CategoryFailed.errorOccured() = ErrorOccured;
}

String mapCategoryFailedToMessage(CategoryFailed failed) {
  if (failed.runtimeType == NoConnection) {
    return 'CategoryFailures No Connection';
  } else if (failed.runtimeType == ServerError) {
    return 'CategoryFailures Server Error';
  } else {
    return 'CategoryFailures Error Occured';
  }
}
