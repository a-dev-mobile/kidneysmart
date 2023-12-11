part of 'api_documents_all.dart';

ApiAgreements? _converToApiAgreementsFromJson(dynamic json) {
  if (json == null || json is List<dynamic> && json.isEmpty) {
    return null;
  }

  if (json is Map<String, dynamic>) {
    return ApiAgreements.fromJson(json);
  }

  throw const FormatException(
    'Expected a json of type Map<String, dynamic> for ApiAgreements',
  );
}

ApiDocLoan? _converToApiDocLoanFromJson(dynamic json) {
  if (json == null || json is List<dynamic> && json.isEmpty) {
    return null;
  }

  if (json is Map<String, dynamic>) {
    return ApiDocLoan.fromJson(json);
  }

  throw const FormatException(
    'Expected a json of type Map<String, dynamic> for ApiDocLoan',
  );
}

ApiReference? _converToApiReferenceFromJson(dynamic json) {
  if (json == null || json is List<dynamic> && json.isEmpty) {
    return null;
  }

  if (json is Map<String, dynamic>) {
    return ApiReference.fromJson(json);
  }

  throw const FormatException(
    'Expected a json of type Map<String, dynamic> for ApiReference',
  );
}

Map<String, ApiHistoryItem>? _convertToMapStringApiHistoryItemFromJson(
  dynamic json,
) {
  if (json == null || json is List<dynamic>) {
    return null;
  }

  if (json is Map<String, dynamic>) {
    return json.map(
      (key, value) =>
          MapEntry(key, ApiHistoryItem.fromJson(value as Map<String, dynamic>)),
    );
  }

  throw const FormatException(
    'Expected a map of type <String, ApiHistoryItem>',
  );
}

Map<String, List<ApiInsuranceContracts>>?
    _convertToMapStringListOfApiInsuranceContracts(dynamic json) {
  if (json == null || json is List<dynamic>) {
    return null;
  }

  if (json is! Map<String, dynamic>) {
    return null;
  }

  return json.map((key, value) {
    if (value is! List) {
      throw FormatException('Expected a list for value of key $key');
    }
    return MapEntry(
      key,
      value
          .map(
            (item) =>
                ApiInsuranceContracts.fromJson(item as Map<String, dynamic>),
          )
          .toList(),
    );
  });
}
