// ***************************************
import 'package:dartlog/dartlog.dart';
import 'package:intl/intl.dart';

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
