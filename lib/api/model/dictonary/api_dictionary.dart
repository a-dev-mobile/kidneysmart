// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:kidneysmart/api/model/dictonary/dictonary_item.dart';
import 'package:meta/meta.dart';

/* no: tomap  */
@immutable
class ApiDictionary {
  /* 
  init: const <DictionaryItem>[]

  */
  final List<DictionaryItem> position_type;
  /* 
  init: const <DictionaryItem>[]

  */
  final List<DictionaryItem> employer_activity;
  /* 
  init: const <DictionaryItem>[]

  */
  final List<DictionaryItem> position;
  /* 
  init: const <DictionaryItem>[]

  */
  final List<DictionaryItem> employer_amount_workers;
  /* 
  init: const <DictionaryItem>[]

  */
  final List<DictionaryItem> education;
  /* 
  init: const <DictionaryItem>[]

  */
  final List<DictionaryItem> contact_type;
  /* 
  init: const <DictionaryItem>[]

  */
  final List<DictionaryItem> marital_status;
  /* 
  init: const <DictionaryItem>[]

  */
  final List<DictionaryItem> number_of_children;
// end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const ApiDictionary({
    this.position_type = const <DictionaryItem>[],
    this.employer_activity = const <DictionaryItem>[],
    this.position = const <DictionaryItem>[],
    this.employer_amount_workers = const <DictionaryItem>[],
    this.education = const <DictionaryItem>[],
    this.contact_type = const <DictionaryItem>[],
    this.marital_status = const <DictionaryItem>[],
    this.number_of_children = const <DictionaryItem>[],
  });

  factory ApiDictionary.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const ApiDictionary();

    return ApiDictionary(
      position_type: map['position_type'] != null
          ? (map['position_type'] as List<dynamic>)
              .map(
                (e) => DictionaryItem.fromMap(
                  e as Map<dynamic, dynamic>,
                ),
              )
              .toList()
          : const <DictionaryItem>[],
      employer_activity: map['employer_activity'] != null
          ? (map['employer_activity'] as List<dynamic>)
              .map(
                (e) => DictionaryItem.fromMap(
                  e as Map<dynamic, dynamic>,
                ),
              )
              .toList()
          : const <DictionaryItem>[],
      position: map['position'] != null
          ? (map['position'] as List<dynamic>)
              .map(
                (e) => DictionaryItem.fromMap(
                  e as Map<dynamic, dynamic>,
                ),
              )
              .toList()
          : const <DictionaryItem>[],
      employer_amount_workers: map['employer_amount_workers'] != null
          ? (map['employer_amount_workers'] as List<dynamic>)
              .map(
                (e) => DictionaryItem.fromMap(
                  e as Map<dynamic, dynamic>,
                ),
              )
              .toList()
          : const <DictionaryItem>[],
      education: map['education'] != null
          ? (map['education'] as List<dynamic>)
              .map(
                (e) => DictionaryItem.fromMap(
                  e as Map<dynamic, dynamic>,
                ),
              )
              .toList()
          : const <DictionaryItem>[],
      contact_type: map['contact_type'] != null
          ? (map['contact_type'] as List<dynamic>)
              .map(
                (e) => DictionaryItem.fromMap(
                  e as Map<dynamic, dynamic>,
                ),
              )
              .toList()
          : const <DictionaryItem>[],
      marital_status: map['marital_status'] != null
          ? (map['marital_status'] as List<dynamic>)
              .map(
                (e) => DictionaryItem.fromMap(
                  e as Map<dynamic, dynamic>,
                ),
              )
              .toList()
          : const <DictionaryItem>[],
      number_of_children: map['number_of_children'] != null
          ? (map['number_of_children'] as List<dynamic>)
              .map(
                (e) => DictionaryItem.fromMap(
                  e as Map<dynamic, dynamic>,
                ),
              )
              .toList()
          : const <DictionaryItem>[],
    );
  }

  ApiDictionary copyWith({
    List<DictionaryItem>? position_type,
    List<DictionaryItem>? employer_activity,
    List<DictionaryItem>? position,
    List<DictionaryItem>? employer_amount_workers,
    List<DictionaryItem>? education,
    List<DictionaryItem>? contact_type,
    List<DictionaryItem>? marital_status,
    List<DictionaryItem>? number_of_children,
  }) {
    return ApiDictionary(
      position_type: position_type ?? this.position_type,
      employer_activity: employer_activity ?? this.employer_activity,
      position: position ?? this.position,
      employer_amount_workers:
          employer_amount_workers ?? this.employer_amount_workers,
      education: education ?? this.education,
      contact_type: contact_type ?? this.contact_type,
      marital_status: marital_status ?? this.marital_status,
      number_of_children: number_of_children ?? this.number_of_children,
    );
  }

  factory ApiDictionary.fromJson(String source) => ApiDictionary.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiDictionary &&
            const DeepCollectionEquality().equals(
              other.position_type,
              position_type,
            ) &&
            const DeepCollectionEquality().equals(
              other.employer_activity,
              employer_activity,
            ) &&
            const DeepCollectionEquality().equals(
              other.position,
              position,
            ) &&
            const DeepCollectionEquality().equals(
              other.employer_amount_workers,
              employer_amount_workers,
            ) &&
            const DeepCollectionEquality().equals(
              other.education,
              education,
            ) &&
            const DeepCollectionEquality().equals(
              other.contact_type,
              contact_type,
            ) &&
            const DeepCollectionEquality().equals(
              other.marital_status,
              marital_status,
            ) &&
            const DeepCollectionEquality().equals(
              other.number_of_children,
              number_of_children,
            ));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(
          position_type,
        ),
        const DeepCollectionEquality().hash(
          employer_activity,
        ),
        const DeepCollectionEquality().hash(
          position,
        ),
        const DeepCollectionEquality().hash(
          employer_amount_workers,
        ),
        const DeepCollectionEquality().hash(
          education,
        ),
        const DeepCollectionEquality().hash(
          contact_type,
        ),
        const DeepCollectionEquality().hash(
          marital_status,
        ),
        const DeepCollectionEquality().hash(
          number_of_children,
        ),
      ]);

  @override
  String toString() {
    return 'ApiDictionary(position_type: $position_type, employer_activity: $employer_activity, position: $position, employer_amount_workers: $employer_amount_workers, education: $education, contact_type: $contact_type, marital_status: $marital_status, number_of_children: $number_of_children, )';
  }
}
