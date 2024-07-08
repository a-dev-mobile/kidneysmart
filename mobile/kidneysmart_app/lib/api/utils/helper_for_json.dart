// Custom toJson  fromJson method

import 'package:intl/intl.dart';
import 'package:kidneysmart/api/model/documents/api_documents_all.dart';
import 'package:kidneysmart/api/model/user_api/api_user_loan.dart';
import 'package:kidneysmart/core/enum/enum_auth_status.dart';
import 'package:kidneysmart/core/enum/enum_available_product.dart';
import 'package:kidneysmart/core/enum/enum_doc_user_type.dart';
import 'package:kidneysmart/core/enum/enum_loan_status.dart';
import 'package:kidneysmart/core/enum/enum_payment_status.dart';
import 'package:kidneysmart/core/enum/enum_step.dart';
import 'package:kidneysmart/core/enum/enum_vacation_status.dart';

// ***************************************
// ***************************************
// ***************************************
int? authorizationStatusToJson(EnumAuthStatus? status) => status?.value;

EnumAuthStatus authorizationStatusFromJson(int? jsonValue) {
  return EnumAuthStatus.fromValue(
    jsonValue,
    fallback: EnumAuthStatus.activeOrRequestLoan,
  );
}

// ***************************************
// ***************************************
// ***************************************
int? availableProductIdToJson(EnumAvailableProduct? status) => status?.id;
EnumAvailableProduct availableProductIdFromJson(int? jsonValue) {
  return EnumAvailableProduct.fromId(
    jsonValue,
    fallback: EnumAvailableProduct.payday,
  );
}

// ***************************************
// ***************************************
// ***************************************
int? vacationStatusToJson(EnumVacationStatus? status) => status?.id;

EnumVacationStatus vacationStatusFromJson(int? jsonValue) {
  return EnumVacationStatus.fromId(
    jsonValue,
    fallback: EnumVacationStatus.inActive,
  );
}

// ***************************************
// ***************************************
// ***************************************
int? loanStatusToJson(EnumLoanStatus? status) => status?.id;

EnumLoanStatus loanStatusFromJson(int? jsonValue) {
  return EnumLoanStatus.fromId(
    jsonValue,
    fallback: EnumLoanStatus.unknown,
  );
}

// ***************************************
// ***************************************
// ***************************************
String? availableProductTypeToJson(EnumAvailableProduct? status) =>
    status?.type;

EnumAvailableProduct availableProductTypeFromJson(String? jsonValue) {
  return EnumAvailableProduct.fromType(
    jsonValue,
    fallback: EnumAvailableProduct.payday,
  );
}

// ***************************************
// ***************************************
// ***************************************
String? stepToJson(EnumStep? value) => value?.name;

EnumStep? stepFromJson(String? jsonValue) {
  return EnumStep.fromNameOrNull(
    jsonValue,
  );
}

// ***************************************
// ***************************************
// ***************************************
/// Converts a dynamic value to a numerical value. If the conversion is not possible,
/// it defaults to zero.
///
/// - If the value is a String, attempts to parse it into a number. If parsing fails, returns 0.
/// - If the value is already a number, returns it as-is.
/// - In all other cases, returns 0.
num convertToNumOrZeroToJson(dynamic value) {
  if (value is String) {
    return num.tryParse(value) ?? 0;
  } else if (value is num) {
    return value;
  } else {
    return 0;
  }
}

/// Converts a dynamic value from JSON to a numerical value. If the conversion is not possible,
/// it defaults to zero.
///
/// - If the JSON value is a String, attempts to parse it into a number. If parsing fails, returns 0.
/// - If the JSON value is already a number, returns it as-is.
/// - In all other cases, returns 0.
num convertToNumOrZeroFromJson(dynamic json) {
  if (json is String) {
    return num.tryParse(json) ?? 0;
  } else if (json is num) {
    return json;
  } else {
    return 0;
  }
}

// ***************************************
// ***************************************
// ***************************************
/// Converts a dynamic value to a numerical value or null if conversion is not possible.
///
/// - If the value is a String, attempts to parse it into a number. Returns null if parsing fails.
/// - If the value is already a number, returns it as-is.
/// - In all other cases, returns null.
num? convertToNumOrNullToJson(dynamic value) {
  if (value is String) {
    return num.tryParse(value);
  } else if (value is num) {
    return value;
  } else {
    return null;
  }
}

/// Converts a dynamic value from JSON to a numerical value or null if conversion is not possible.
///
/// - If the JSON value is a String, attempts to parse it into a number. Returns null if parsing fails.
/// - If the JSON value is already a number, returns it as-is.
/// - In all other cases, returns null.
num? convertToNumOrNullFromJson(dynamic json) {
  if (json is String) {
    return num.tryParse(json);
  } else if (json is num) {
    return json;
  } else {
    return null;
  }
}

// ***************************************
// ***************************************
// ***************************************
/* 
            converter 

    "name": "registration",
    "name": "photo",
    "name": "passport",
    "name": "card_1111",
 */
String? docUserNameDetailsToJson(DocUserNameDetails? value) => value?.name;

DocUserNameDetails? docUserNameDetailsFromJson(
  String? jsonValue,
) {
  if (jsonValue == null && jsonValue!.isEmpty) return null;
  EnumDocUserType? enumDocUserType;
  if (jsonValue.contains(EnumDocUserType.card.name)) {
    enumDocUserType = EnumDocUserType.card;
  } else {
    enumDocUserType = EnumDocUserType.fromNameOrNull(jsonValue);
  }

  return DocUserNameDetails(
    enumDocUserType: enumDocUserType,
    name: jsonValue,
  );
}

// ***************************************
// ***************************************
// ***************************************
// ***************************************
// ***************************************

dynamic convertEmptyListToNullFromJson(dynamic json) {
  // Проверяем, является ли 'json' списком
  if (json is List<dynamic> && json.isEmpty) {
    return null;
  }

  return json;
}

// ***************************************
// ***************************************
// ***************************************
// ***************************************
String? scheduleStatusToJson(EnumScheduleStatus? status) => status?.value;

EnumScheduleStatus scheduleStatusFromJson(String? jsonValue) {
  return EnumScheduleStatus.fromValue(
    jsonValue,
    fallback: EnumScheduleStatus.error,
  );
}

// ***************************************
// ***************************************
// ***************************************
// ***************************************
DateTime? dateTimeFromJson(String? dateTimeString) {
  if (dateTimeString == null || dateTimeString.isEmpty) {
    return null;
  }

  try {
    // Проверка наличия времени в строке
    if (dateTimeString.contains(' ')) {
      return DateFormat('yyyy-MM-dd HH:mm:ss').parse(dateTimeString);
    } else {
      return DateFormat('yyyy-MM-dd').parse(dateTimeString);
    }
  } catch (e) {
    return null;
  }
}

String? dateTimeToJson(DateTime? date) {
  return date != null ? DateFormat('yyyy-MM-dd HH:mm:ss').format(date) : null;
}

// ***************************************
// ***************************************
// ***************************************
// ***************************************
PersonalNotificationMessage?
    convertStringOrMapToPersonalNotificationMessageFromJson(dynamic json) {
  if (json == null) {
    return null;
  }

  if (json is String) {
    try {
      // Преобразование JSON строки в Map
      return PersonalNotificationMessage.fromJson(json as Map<String, dynamic>);
    } catch (e) {
      // В случае ошибки возвращаем null
      return null;
    }
  }

  if (json is Map<String, dynamic>) {
    return PersonalNotificationMessage.fromJson(json);
  }

  return null;
}
