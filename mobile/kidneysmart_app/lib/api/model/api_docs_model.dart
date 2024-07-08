import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_docs_model.freezed.dart';

part 'api_docs_model.g.dart';

@freezed
class ApiDocsModel with _$ApiDocsModel {
  const factory ApiDocsModel({
    @Default('') String agreementCreditReport,
  }) = _ApiDocsModel;

  factory ApiDocsModel.fromJson(Map<String, dynamic> json) =>
      _$ApiDocsModelFromJson(json);
}
