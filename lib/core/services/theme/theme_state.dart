// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:flutter/material.dart';

@immutable
class ThemeState {
  /* init: ThemeMode.light */
  final ThemeMode themeMode;

  // end

//          --TURN_GEN--
//             v0.4.1
//  *************************************
//           GENERATED CODE
//  *************************************

  const ThemeState({
    this.themeMode = ThemeMode.light,
  });

  /// Converts the [ThemeState] object to a map of key-value pairs.
  ///
  /// Returns a new [Map] instance containing the non-null properties of this
  /// [ThemeState] instance. The keys are [String]s corresponding to the property
  /// names, and the values are their respective values.
  ///
  /// If a property is `null`, it will not be included in the resulting map.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final user = UserModel(url: 'https://example.com', name: 'John');
  /// final userMap = user.toMap();
  /// print(userMap); // Output: {'url': 'https://example.com', 'name': 'John'}
  /// ```
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'themeMode': themeMode.index,
    };
  }

  /// Creates a new [ThemeState] instance from a map of key-value pairs.
  ///
  /// The [map] argument may be null. If a value in the map is null or
  /// of an invalid type, it will be treated as an empty string.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final userMap = {'url': 'https://example.com', 'name': 'John'};
  /// final user = UserModel.fromMap(userMap);
  /// print(user); // Output: UserModel(url: https://example.com, name: John)
  /// ```
  factory ThemeState.fromMap(Map<String, dynamic>? map) {
    if (map == null) return const ThemeState();

    return ThemeState(
      themeMode: map['themeMode'] != null
          ? ThemeMode.values[map['themeMode'] as int]
          : ThemeMode.light,
    );
  }

  /// Returns a new [ThemeState] instance with updated properties.
  ///
  /// The arguments may be null. If they are null, the
  /// corresponding properties in the returned instance will be the same
  /// as in the original instance.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final user = UserModel(url: 'https://example.com', name: 'John');
  /// final newUser = user.copyWith(name: 'Jane');
  /// print(newUser); // Output: UserModel(url: https://example.com, name: Jane)
  /// ```
  ThemeState copyWith({
    ThemeMode? themeMode,
  }) {
    return ThemeState(
      themeMode: themeMode ?? this.themeMode,
    );
  }

  /// Returns a JSON-encoded string representing this [ThemeState] instance.
  ///
  /// The JSON string has the following format:
  ///
  /// ```json
  /// {
  ///   "url": "https://example.com",
  ///   "name": "John"
  /// }
  /// ```
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final user = UserModel(url: 'https://example.com', name: 'John');
  /// final jsonString = user.toJson();
  /// print(jsonString); // Output: {"url":"https://example.com","name":"John"}
  /// ```
  String toJson() => json.encode(toMap());
  factory ThemeState.fromJson(String source) => ThemeState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  /// Determines whether this [ThemeState] instance is equal to another object.
  ///
  /// Returns `true` if the other object is also a [ThemeState] instance and has
  /// the same values property as this instance.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final user1 = UserModel(url: 'https://example.com', name: 'John');
  /// final user2 = UserModel(url: 'https://example.com', name: 'John');
  /// final user3 = UserModel(url: 'https://example.com', name: 'Jane');
  ///
  /// print(user1 == user2); // Output: true
  /// print(user1 == user3); // Output: false
  /// ```
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThemeState &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  /// Returns a hash code for this [ThemeState] instance.
  ///
  /// The hash code is based on the properties class. If
  /// instances have the same values for these properties, they will have
  /// the same hash code.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final user1 = UserModel(url: 'https://example.com', name: 'John');
  /// final user2 = UserModel(url: 'https://example.com', name: 'John');
  /// print(user1.hashCode); // Output: 1796192025
  /// print(user2.hashCode); // Output: 1796192025
  /// ```
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        themeMode,
      ]);

  /// Returns a string representation of this model [ThemeState].
  /// The string representation includes the fields class.
  /// Example of returned string:
  /// ``` dart
  /// UserModel(url: https://example.com, name: John Doe)
  /// ```
  /// Returns: A string representation of this user model object.
  @override
  String toString() {
    return 'ThemeState(themeMode: $themeMode, )';
  }
}
