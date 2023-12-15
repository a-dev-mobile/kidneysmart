import 'dart:convert';

///Вернуть строку в формате json
String toJson(dynamic data) {
  const je = JsonEncoder.withIndent('  ');
  final json = je.convert(data);
  return json;
}

///Возвращает строку в формате json
String map2Json(Map<dynamic, dynamic>? map) {
  if (map == null) {
    return '';
  }
  final sb = StringBuffer();
  // ignore: cascade_invocations
  sb.writeln('{');
  map.forEach((key, value) => sb.writeln('$key:$value'));
  sb.write('}');
  return sb.toString();
}
