// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:meta/meta.dart';

@immutable
class BtnToggleModel {   
  final int? selectedIndex;
  /* init: '' */
  final String errorMessage;

  // end
   
//          --TURN_GEN--
//           v0.6.3 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const BtnToggleModel({
    this.errorMessage = '',
    this.selectedIndex,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedIndex': selectedIndex, 
      'errorMessage': errorMessage, 
    };
  }


  factory BtnToggleModel.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const BtnToggleModel();

    return BtnToggleModel(
      selectedIndex: (map['selectedIndex'] as num?)?.toInt(), 
      errorMessage: map['errorMessage'] != null ? map['errorMessage'] as String : '', 
    );
  }

  BtnToggleModel copyWith({
    int? selectedIndex,
    String? errorMessage,
  }) {
    return BtnToggleModel(
      selectedIndex: selectedIndex ?? this.selectedIndex, 
      errorMessage: errorMessage ?? this.errorMessage, 
    );
  }

  String toJson() => json.encode(toMap());  
  factory BtnToggleModel.fromJson(String source) => BtnToggleModel.fromMap(json.decode(source) as Map<String, dynamic>,);  
   
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BtnToggleModel &&
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
    return 'BtnToggleModel(selectedIndex: $selectedIndex, errorMessage: $errorMessage, )';
    }

}
