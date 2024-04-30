// ignore_for_file: prefer_constructors_over_static_methods, sort_constructors_first, sort_unnamed_constructors_first

import 'package:freezed_annotation/freezed_annotation.dart';
part 'document_data.freezed.dart';
part 'document_data.g.dart';

@freezed
class DocumentData with _$DocumentData {
  const DocumentData._();

  const factory DocumentData({
    required String title,
    @Default('') String prefix,
    @Default('') String suffix,
    String? url,
    String? number,
    String? date,
  }) = _DocumentData;

  static DocumentData getItemDoc(List<DocumentData> docs, int index) {
    return DocumentData(
      title: docs.length > index ? docs[index].title : '',
      url: docs.length > index ? docs[index].url : '',
      date: docs.length > index ? docs[index].date : '',
      number: docs.length > index ? docs[index].number : '',
      prefix: docs.length > index ? docs[index].prefix : '',
      suffix: docs.length > index ? docs[index].suffix : '',
    );
  }

  factory DocumentData.fromJson(Map<String, dynamic> json) =>
      _$DocumentDataFromJson(json);
}
