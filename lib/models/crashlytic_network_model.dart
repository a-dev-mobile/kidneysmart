// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

@immutable
class CrashlyticNetworkModel {
  final String endpoint;
  final String method;
  final Map<String, dynamic>? params;
  final String options;
  final String body;
// end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const CrashlyticNetworkModel({
    required this.endpoint,
    required this.method,
    required this.options,
    required this.body,
    this.params,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'method': method,
      'params': params?.map(MapEntry.new),
      'options': options,
      'body': body,
    };
  }

  factory CrashlyticNetworkModel.fromMap(Map<dynamic, dynamic> map) {
    return CrashlyticNetworkModel(
      endpoint: map['endpoint'] != null
          ? map['endpoint'] as String
          : throw Exception(
              "map['endpoint']_type_'Null'",
            ),
      method: map['method'] != null
          ? map['method'] as String
          : throw Exception(
              "map['method']_type_'Null'",
            ),
      params:
          map['params'] != null ? map['params'] as Map<String, dynamic> : null,
      options: map['options'] != null
          ? map['options'] as String
          : throw Exception(
              "map['options']_type_'Null'",
            ),
      body: map['body'] != null
          ? map['body'] as String
          : throw Exception(
              "map['body']_type_'Null'",
            ),
    );
  }

  CrashlyticNetworkModel copyWith({
    String? endpoint,
    String? method,
    Map<String, dynamic>? params,
    String? options,
    String? body,
  }) {
    return CrashlyticNetworkModel(
      endpoint: endpoint ?? this.endpoint,
      method: method ?? this.method,
      params: params ?? this.params,
      options: options ?? this.options,
      body: body ?? this.body,
    );
  }

  String toJson() => json.encode(toMap());
  factory CrashlyticNetworkModel.fromJson(String source) =>
      CrashlyticNetworkModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CrashlyticNetworkModel &&
            (identical(
                  other.endpoint,
                  endpoint,
                ) ||
                other.endpoint == endpoint) &&
            (identical(
                  other.method,
                  method,
                ) ||
                other.method == method) &&
            const DeepCollectionEquality().equals(
              other.params,
              params,
            ) &&
            (identical(
                  other.options,
                  options,
                ) ||
                other.options == options) &&
            (identical(
                  other.body,
                  body,
                ) ||
                other.body == body));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        endpoint,
        method,
        const DeepCollectionEquality().hash(
          params,
        ),
        options,
        body,
      ]);

  @override
  String toString() {
    return 'CrashlyticNetworkModel(endpoint: $endpoint, method: $method, params: $params, options: $options, body: $body, )';
  }
}
