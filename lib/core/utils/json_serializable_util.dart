// ***************************************
import 'package:dartlog/dartlog.dart';
import 'package:intl/intl.dart';
import 'package:kidneysmart/core/enum/enum_step.dart';

DateTime? dateTimeFromJson(String? dateTimeString) {
  if (dateTimeString == null || dateTimeString.isEmpty) {
    return null;
  }

  try {
    return DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").parse(dateTimeString, true).toUtc();
  } catch (e, s) {
    Logger.error('dateTimeFromJson', e, s);
    return null;
  }
}

String? dateTimeToJson(DateTime? date) {
  return date != null ? DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").format(date.toUtc()) : null;
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
