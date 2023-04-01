// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:meta/meta.dart';

@immutable
class ValidBtnToggleModel { 
  final int? selectedIndex;
  /* init: '' */
  final String errorMessage;

  // end
   
//          --TURN_GEN--
//          v0.8.2 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const ValidBtnToggleModel({
    this.errorMessage = '',
    this.selectedIndex,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedIndex': selectedIndex, 
      'errorMessage': errorMessage, 
    };
  }


  factory ValidBtnToggleModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const ValidBtnToggleModel();

    return ValidBtnToggleModel(
      selectedIndex: (map['selectedIndex'] as num?)?.toInt(), 
      errorMessage: map['errorMessage'] as String? ?? '', 
    );
  }

  ValidBtnToggleModel copyWith({
    int? selectedIndex,
    String? errorMessage,
  }) {
    return ValidBtnToggleModel(
      selectedIndex: selectedIndex ?? this.selectedIndex, 
      errorMessage: errorMessage ?? this.errorMessage, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory ValidBtnToggleModel.fromJson(String source) => ValidBtnToggleModel.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValidBtnToggleModel &&
            (identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex) && 
            (identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        selectedIndex,
        errorMessage,
]);

  @override
  String toString() {
    return 'ValidBtnToggleModel(selectedIndex: $selectedIndex, errorMessage: $errorMessage, )';
    }

}
