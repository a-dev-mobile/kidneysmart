// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_cards.freezed.dart';
part 'api_cards.g.dart';

extension CurrentApiCardItemGetter on List<ApiCardItem> {
  ApiCardItem? get currentCard {
    return firstWhereOrNull((item) => item.current);
  }

  List<ApiCardItem> sortedByCurrent() {
    final sortedList = List<ApiCardItem>.from(this);
    // ignore: cascade_invocations
    sortedList.sort((a, b) {
      if (a.current && !b.current) {
        return -1; // Помещаем a перед b, если a.current == true и b.current == false
      } else if (!a.current && b.current) {
        return 1; // Помещаем b перед a, если a.current == false и b.current == true
      }
      return 0; // Не меняем порядок, если оба элемента имеют одинаковое значение current
    });
    return sortedList; // Возвращаем отсортированный список
  }
}

@freezed
class ApiCardItem with _$ApiCardItem {
  const ApiCardItem._();
  const factory ApiCardItem({
    @Default(0) int id,
    @Default('') String cardNumber,
    @Default('') String cardHolderName,
    @Default('') String expiry,
    @Default(false) bool isVerified,
    @Default('') String bankName,
    @Default(false) bool current,
    @Default([]) List<String> verifiedBy,
    @Default([]) List<String> defaultFor,
    @Default(false) bool isAutoCharge,
    @Default(false) bool isPhotoExists,
    // added for ui so as not to produce more models
    @Default('') String patchImage,
  }) = _ApiCardItem;

  factory ApiCardItem.fromJson(Map<String, dynamic> json) =>
      _$ApiCardItemFromJson(json);
}
