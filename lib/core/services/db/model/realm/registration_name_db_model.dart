// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions, non_constant_identifier_names
import 'dart:convert';

import 'package:meta/meta.dart';

@immutable
class RegistrationNameDbModel {                                                                                                                            
  /* init: '' */
  final String url;

  // end
   
//          --TURN_GEN--
//          v0.8.2 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const RegistrationNameDbModel({
    this.url = '',
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url, 
    };
  }


  factory RegistrationNameDbModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const RegistrationNameDbModel();

    return RegistrationNameDbModel(
      url: map['url'] as String? ?? '', 
    );
  }

  RegistrationNameDbModel copyWith({
    String? url,
  }) {
    return RegistrationNameDbModel(
      url: url ?? this.url, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory RegistrationNameDbModel.fromJson(String source) => RegistrationNameDbModel.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegistrationNameDbModel &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        url,
]);

  @override
  String toString() {
    return 'RegistrationNameDbModel(url: $url, )';
    }

}
