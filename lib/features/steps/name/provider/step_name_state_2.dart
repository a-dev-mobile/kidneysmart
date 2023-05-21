// import 'package:kidneysmart/core/enum/enum.dart';
// import 'package:kidneysmart/features/steps/common/models/models.dart';
// import 'package:kidneysmart/features/steps/gender/gender.dart';
// import 'package:meta/meta.dart';

// @immutable
// class _StepNameState {
//   const _StepNameState.init();
//   const _StepNameState.load();
//   const _StepNameState.success({
//     String result = '',
//     EnumValid enumValid = EnumValid.init,
//     EnumGender enumGender = EnumGender.none,
//     KeyboardState keyboard = const KeyboardState(),
//   });
//   const _StepNameState.error([String msg = 'error']);
// }

// // end

// //          --TURN_GEN--
// //             (union)
// //  *************************************
// //         GENERATED CODE
// //  *************************************
// // coverage:ignore-file
// // ignore_for_file: library_private_types_in_public_api
// // ignore_for_file: avoid-non-null-assertion
// // ignore_for_file: non_constant_identifier_names
// // ignore_for_file: unnecessary_null_checks
// // ignore_for_file: unused_element
// // ignore_for_file: avoid_unused_constructor_parameters
// // ignore_for_file: avoid_positional_boolean_parameters,
// // ignore_for_file: always_put_required_named_parameters_first

// @immutable
// class StepNameState {
//   const StepNameState.init()
//       : _tag = _StepNameStateTag.init,
//         _result_success = null,
//         _enumValid_success = null,
//         _enumGender_success = null,
//         _keyboard_success = null,
//         _msg_error = null;

//   const StepNameState.load()
//       : _tag = _StepNameStateTag.load,
//         _result_success = null,
//         _enumValid_success = null,
//         _enumGender_success = null,
//         _keyboard_success = null,
//         _msg_error = null;

//   const StepNameState.success({
//     String result = '',
//     EnumValid enumValid = EnumValid.init,
//     EnumGender enumGender = EnumGender.none,
//     KeyboardState keyboard = const KeyboardState(),
//   })  : _tag = _StepNameStateTag.success,
//         _result_success = result,
//         _enumValid_success = enumValid,
//         _enumGender_success = enumGender,
//         _keyboard_success = keyboard,
//         _msg_error = null;

//   const StepNameState.error([String msg = 'error'])
//       : _tag = _StepNameStateTag.error,
//         _result_success = null,
//         _enumValid_success = null,
//         _enumGender_success = null,
//         _keyboard_success = null,
//         _msg_error = msg;

//   Map<String, dynamic> toMap() {
//     switch (_tag) {
//       case _StepNameStateTag.init:
//         return {
//           'tag': 'init',
//         };
//       case _StepNameStateTag.load:
//         return {
//           'tag': 'load',
//         };
//       case _StepNameStateTag.success:
//         return {
//           'tag': 'success',
//           'result': _result_success,
//           'enumValid': _enumValid_success?.index,
//           'enumGender': _enumGender_success?.index,
//           'keyboard': _keyboard_success?.toMap() ?? const KeyboardState(),
//         };
//       case _StepNameStateTag.error:
//         return {
//           'tag': 'error',
//           'msg': _msg_error,
//         };
//     }
//   }

//   static StepNameState fromMap(Map<dynamic, dynamic> map) {
//     final tag = map['tag'];
//     switch (tag) {
//       case 'init':
//         return const StepNameState.init();
//       case 'load':
//         return const StepNameState.load();
//       case 'success':
//         return StepNameState.success(
//           result: map['result'] as String? ?? '',
//           enumValid: map['enumValid'] != null
//               ? EnumValid.values[map['enumValid'] as int]
//               : EnumValid.init,
//           enumGender: map['enumGender'] != null
//               ? EnumGender.values[map['enumGender'] as int]
//               : EnumGender.none,
//           keyboard: map['keyboard'] != null
//               ? KeyboardState.fromMap(
//                   Map<String, dynamic>.from(map['keyboard'] as Map),
//                 )
//               : const KeyboardState(),
//         );
//       case 'error':
//         return StepNameState.error(
//           map['msg'] as String? ?? 'error',
//         );
//       default:
//         throw ArgumentError('Invalid map: $map');
//     }
//   }

//   T map<T>({
//     required T Function(_StepNameStateInit v) init,
//     required T Function(_StepNameStateLoad v) load,
//     required T Function(_StepNameStateSuccess v) success,
//     required T Function(_StepNameStateError v) error,
//   }) {
//     switch (_tag) {
//       case _StepNameStateTag.init:
//         return init(
//           const _StepNameStateInit(),
//         );
//       case _StepNameStateTag.load:
//         return load(
//           const _StepNameStateLoad(),
//         );
//       case _StepNameStateTag.success:
//         return success(
//           _StepNameStateSuccess(
//             _result_success!,
//             _enumValid_success!,
//             _enumGender_success!,
//             _keyboard_success!,
//           ),
//         );
//       case _StepNameStateTag.error:
//         return error(
//           _StepNameStateError(
//             _msg_error!,
//           ),
//         );
//     }
//   }

//   T maybeMap<T>({
//     required T Function() orElse,
//     T Function(_StepNameStateInit v)? init,
//     T Function(_StepNameStateLoad v)? load,
//     T Function(_StepNameStateSuccess v)? success,
//     T Function(_StepNameStateError v)? error,
//   }) {
//     switch (_tag) {
//       case _StepNameStateTag.init:
//         if (init != null) {
//           return init(
//             const _StepNameStateInit(),
//           );
//         }
//         return orElse();
//       case _StepNameStateTag.load:
//         if (load != null) {
//           return load(
//             const _StepNameStateLoad(),
//           );
//         }
//         return orElse();
//       case _StepNameStateTag.success:
//         if (success != null) {
//           return success(
//             _StepNameStateSuccess(
//               _result_success!,
//               _enumValid_success!,
//               _enumGender_success!,
//               _keyboard_success!,
//             ),
//           );
//         }
//         return orElse();
//       case _StepNameStateTag.error:
//         if (error != null) {
//           return error(
//             _StepNameStateError(
//               _msg_error!,
//             ),
//           );
//         }
//         return orElse();
//     }
//   }

//   T? mapOrNull<T>({
//     T? Function(_StepNameStateInit v)? init,
//     T? Function(_StepNameStateLoad v)? load,
//     T? Function(_StepNameStateSuccess v)? success,
//     T? Function(_StepNameStateError v)? error,
//   }) {
//     switch (_tag) {
//       case _StepNameStateTag.init:
//         return init?.call(
//           const _StepNameStateInit(),
//         );
//       case _StepNameStateTag.load:
//         return load?.call(
//           const _StepNameStateLoad(),
//         );
//       case _StepNameStateTag.success:
//         return success?.call(
//           _StepNameStateSuccess(
//             _result_success!,
//             _enumValid_success!,
//             _enumGender_success!,
//             _keyboard_success!,
//           ),
//         );
//       case _StepNameStateTag.error:
//         return error?.call(
//           _StepNameStateError(
//             _msg_error!,
//           ),
//         );
//     }
//   }

//   T? maybeMapOrNull<T>({
//     T? Function(_StepNameStateInit v)? init,
//     T? Function(_StepNameStateLoad v)? load,
//     T? Function(_StepNameStateSuccess v)? success,
//     T? Function(_StepNameStateError v)? error,
//   }) {
//     switch (_tag) {
//       case _StepNameStateTag.init:
//         if (init != null) {
//           return init(
//             const _StepNameStateInit(),
//           );
//         }
//         return null;
//       case _StepNameStateTag.load:
//         if (load != null) {
//           return load(
//             const _StepNameStateLoad(),
//           );
//         }
//         return null;
//       case _StepNameStateTag.success:
//         if (success != null) {
//           return success(
//             _StepNameStateSuccess(
//               _result_success!,
//               _enumValid_success!,
//               _enumGender_success!,
//               _keyboard_success!,
//             ),
//           );
//         }
//         return null;
//       case _StepNameStateTag.error:
//         if (error != null) {
//           return error(
//             _StepNameStateError(
//               _msg_error!,
//             ),
//           );
//         }
//         return null;
//     }
//   }

//   T when<T>({
//     required T Function() init,
//     required T Function() load,
//     required T Function(
//       String result,
//       EnumValid enumValid,
//       EnumGender enumGender,
//       KeyboardState keyboard,
//     ) success,
//     required T Function(
//       String msg,
//     ) error,
//   }) {
//     switch (_tag) {
//       case _StepNameStateTag.init:
//         return init();
//       case _StepNameStateTag.load:
//         return load();
//       case _StepNameStateTag.success:
//         return success(
//           _result_success!,
//           _enumValid_success!,
//           _enumGender_success!,
//           _keyboard_success!,
//         );
//       case _StepNameStateTag.error:
//         return error(
//           _msg_error!,
//         );
//     }
//   }

//   @override
//   bool operator ==(dynamic other) {
//     switch (_tag) {
//       case _StepNameStateTag.init:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType && other is StepNameState);

//       case _StepNameStateTag.load:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType && other is StepNameState);

//       case _StepNameStateTag.success:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType &&
//                 other is StepNameState &&
//                 (identical(
//                       other._result_success,
//                       _result_success,
//                     ) ||
//                     other._result_success == _result_success) &&
//                 (identical(
//                       other._enumValid_success,
//                       _enumValid_success,
//                     ) ||
//                     other._enumValid_success == _enumValid_success) &&
//                 (identical(
//                       other._enumGender_success,
//                       _enumGender_success,
//                     ) ||
//                     other._enumGender_success == _enumGender_success) &&
//                 (identical(
//                       other._keyboard_success,
//                       _keyboard_success,
//                     ) ||
//                     other._keyboard_success == _keyboard_success));
//       case _StepNameStateTag.error:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType &&
//                 other is StepNameState &&
//                 (identical(
//                       other._msg_error,
//                       _msg_error,
//                     ) ||
//                     other._msg_error == _msg_error));
//     }
//   }

//   @override
//   int get hashCode {
//     switch (_tag) {
//       case _StepNameStateTag.init:
//         return Object.hashAll(
//           [
//             runtimeType,
//           ],
//         );
//       case _StepNameStateTag.load:
//         return Object.hashAll(
//           [
//             runtimeType,
//           ],
//         );
//       case _StepNameStateTag.success:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _result_success,
//             _enumValid_success,
//             _enumGender_success,
//             _keyboard_success,
//           ],
//         );
//       case _StepNameStateTag.error:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _msg_error,
//           ],
//         );
//     }
//   }

//   @override
//   String toString() {
//     switch (_tag) {
//       case _StepNameStateTag.init:
//         return 'StepNameState.init()';
//       case _StepNameStateTag.load:
//         return 'StepNameState.load()';
//       case _StepNameStateTag.success:
//         return 'StepNameState.success(result: $_result_success, enumValid: $_enumValid_success, enumGender: $_enumGender_success, keyboard: $_keyboard_success)';
//       case _StepNameStateTag.error:
//         return 'StepNameState.error(msg: $_msg_error)';
//     }
//   }

//   final _StepNameStateTag _tag;
//   final String? _result_success;
//   final EnumValid? _enumValid_success;
//   final EnumGender? _enumGender_success;
//   final KeyboardState? _keyboard_success;
//   final String? _msg_error;
// }

// enum _StepNameStateTag {
//   init,
//   load,
//   success,
//   error,
// }

// @immutable
// class _StepNameStateInit extends StepNameState {
//   const _StepNameStateInit() : super.init();
// }

// @immutable
// class _StepNameStateLoad extends StepNameState {
//   const _StepNameStateLoad() : super.load();
// }

// @immutable
// class _StepNameStateSuccess extends StepNameState {
//   const _StepNameStateSuccess(
//     this.result,
//     this.enumValid,
//     this.enumGender,
//     this.keyboard,
//   ) : super.success(
//           result: result,
//           enumValid: enumValid,
//           enumGender: enumGender,
//           keyboard: keyboard,
//         );
//   final String result;
//   final EnumValid enumValid;
//   final EnumGender enumGender;
//   final KeyboardState keyboard;

//   _StepNameStateSuccess copyWith({
//     String? result,
//     EnumValid? enumValid,
//     EnumGender? enumGender,
//     KeyboardState? keyboard,
//   }) {
//     return _StepNameStateSuccess(
//       result ?? this.result,
//       enumValid ?? this.enumValid,
//       enumGender ?? this.enumGender,
//       keyboard ?? this.keyboard,
//     );
//   }
// }

// @immutable
// class _StepNameStateError extends StepNameState {
//   const _StepNameStateError(
//     this.msg,
//   ) : super.error(
//           msg,
//         );
//   final String msg;

//   _StepNameStateError copyWith({
//     String? msg,
//   }) {
//     return _StepNameStateError(
//       msg ?? this.msg,
//     );
//   }
// }
