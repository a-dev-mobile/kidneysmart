// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
import 'dart:convert';

import 'package:meta/meta.dart';

@immutable
class AppState {
  /* init: true */
  final bool isFirstTime;
  /* init: false */
  final bool isOnboardingCompleted;

  // end

//          --TURN_GEN--
//             v0.4.1
//  *************************************
//           GENERATED CODE
//  *************************************

  const AppState({
    this.isFirstTime = true,
    this.isOnboardingCompleted = false,
  });

  /// Converts the [AppState] object to a map of key-value pairs.
  ///
  /// Returns a new [Map] instance containing the non-null properties of this
  /// [AppState] instance. The keys are [String]s corresponding to the property
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
      'isFirstTime': isFirstTime,
      'isOnboardingCompleted': isOnboardingCompleted,
    };
  }

  /// Creates a new [AppState] instance from a map of key-value pairs.
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
  factory AppState.fromMap(Map<String, dynamic>? map) {
    if (map == null) return const AppState();

    return AppState(
      isFirstTime:
          map['isFirstTime'] != null ? map['isFirstTime'] as bool : true,
      isOnboardingCompleted: map['isOnboardingCompleted'] != null
          ? map['isOnboardingCompleted'] as bool
          : false,
    );
  }

  /// Returns a new [AppState] instance with updated properties.
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
  AppState copyWith({
    bool? isFirstTime,
    bool? isOnboardingCompleted,
  }) {
    return AppState(
      isFirstTime: isFirstTime ?? this.isFirstTime,
      isOnboardingCompleted:
          isOnboardingCompleted ?? this.isOnboardingCompleted,
    );
  }

  /// Returns a JSON-encoded string representing this [AppState] instance.
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
  factory AppState.fromJson(String source) => AppState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  /// Determines whether this [AppState] instance is equal to another object.
  ///
  /// Returns `true` if the other object is also a [AppState] instance and has
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
            other is AppState &&
            (identical(other.isFirstTime, isFirstTime) ||
                other.isFirstTime == isFirstTime) &&
            (identical(other.isOnboardingCompleted, isOnboardingCompleted) ||
                other.isOnboardingCompleted == isOnboardingCompleted));
  }

  /// Returns a hash code for this [AppState] instance.
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
        isFirstTime,
        isOnboardingCompleted,
      ]);

  /// Returns a string representation of this model [AppState].
  /// The string representation includes the fields class.
  /// Example of returned string:
  /// ``` dart
  /// UserModel(url: https://example.com, name: John Doe)
  /// ```
  /// Returns: A string representation of this user model object.
  @override
  String toString() {
    return 'AppState(isFirstTime: $isFirstTime, isOnboardingCompleted: $isOnboardingCompleted, )';
  }
}
