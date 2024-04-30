// ignore_for_file: parameter_assignments

import 'package:intl/intl.dart';
import 'package:kidneysmart/core/enum/enum_type_form.dart';

class EnumUtils {
static List<bool> enumToBooleanList<T>(List<T> enumValues, [T? activeElement]) {
  return enumValues.map((e) => e == activeElement).toList();
}


}
