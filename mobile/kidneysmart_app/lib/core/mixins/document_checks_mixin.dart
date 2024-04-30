import 'package:kidneysmart/core/enum/enum_state_checkbox.dart';

mixin DocumentChecks<T> on Object {
  /// List of documents that are considered required.
  List<T> get requaredDocs;

  /// Map representing the selected documents with their current checkbox states.
  Map<T, EnumStateCheckboxValue> get mapDoc;

  /// Checks if all documents in the [mapDoc] are checked.
  bool get areAllDocsChecked => mapDoc.values.every((value) => value.isChecked);

  /// Checks if all documents in the provided [mapDoc] are checked.
  bool areAllDocsCheckedFromMap(
    Map<T, EnumStateCheckboxValue> mapDoc,
  ) =>
      mapDoc.values.every((value) => value.isChecked);

  /// Checks if any document in the [mapDoc] is checked.
  bool get isAnyDocChecked =>
      mapDoc.values.any((value) => value == EnumStateCheckboxValue.checked);

  /// Checks if any document in the provided [mapDoc] is checked.
  bool isAnyDocCheckedFromMap(Map<T, EnumStateCheckboxValue> mapDoc) =>
      mapDoc.values.any((value) => value == EnumStateCheckboxValue.checked);

  /// Checks if any document in the [mapDoc] has an error state.
  bool get isAnyDocError =>
      mapDoc.values.any((value) => value == EnumStateCheckboxValue.error);

  /// Compares two maps ([map1] and [map2]) to see if they are equal.
  bool areMapsEqual(
    Map<T, EnumStateCheckboxValue> map1,
    Map<T, EnumStateCheckboxValue> map2,
  ) {
    if (map1.keys.toSet().difference(map2.keys.toSet()).isNotEmpty ||
        map2.keys.toSet().difference(map1.keys.toSet()).isNotEmpty) {
      return false;
    }

    for (final key in map1.keys) {
      if (map1[key] != map2[key]) {
        return false;
      }
    }
    return true;
  }

  /// Returns a new map based on [mapDoc], where required documents
  /// with unchecked state are set to error state.
  Map<T, EnumStateCheckboxValue> mapWithRequaredDocsErrorFromMap(
    Map<T, EnumStateCheckboxValue> mapDoc,
  ) {
    final resultMap = Map<T, EnumStateCheckboxValue>.from(mapDoc);
    for (final doc in requaredDocs) {
      if (resultMap[doc] == EnumStateCheckboxValue.unchecked) {
        resultMap[doc] = EnumStateCheckboxValue.error;
      }
    }
    return resultMap;
  }

  /// Checks if all required documents in the provided [mapDoc] are checked.
  bool areRequaredDocsCheckedFromMap(
    Map<T, EnumStateCheckboxValue> mapDoc,
  ) {
    for (final doc in requaredDocs) {
      if (mapDoc[doc] != EnumStateCheckboxValue.checked) {
        return false;
      }
    }
    return true;
  }

  /// Checks if all required documents in the [mapDoc] are checked.
  bool get areRequaredDocsChecked {
    for (final doc in requaredDocs) {
      if (mapDoc[doc] != EnumStateCheckboxValue.checked) {
        return false;
      }
    }
    return true;
  }
}
