// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_history_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiHistoryNotification _$ApiHistoryNotificationFromJson(
    Map<String, dynamic> json) {
  return _ApiHistoryNotification.fromJson(json);
}

/// @nodoc
mixin _$ApiHistoryNotification {
  int? get id => throw _privateConstructorUsedError;
  bool? get read => throw _privateConstructorUsedError;
  int? get loanId => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get response => throw _privateConstructorUsedError;
  SendDate? get sendDate => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  bool? get delivered => throw _privateConstructorUsedError;
  String? get sender => throw _privateConstructorUsedError;
  String? get responseId => throw _privateConstructorUsedError;
  String? get smsProvider => throw _privateConstructorUsedError;
  bool? get keywordStatus => throw _privateConstructorUsedError;
  String? get template => throw _privateConstructorUsedError;
  CreatedAt? get createdAt => throw _privateConstructorUsedError;
  int? get priority => throw _privateConstructorUsedError;
  int? get admUserId => throw _privateConstructorUsedError;
  Detail? get detail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiHistoryNotificationCopyWith<ApiHistoryNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiHistoryNotificationCopyWith<$Res> {
  factory $ApiHistoryNotificationCopyWith(ApiHistoryNotification value,
          $Res Function(ApiHistoryNotification) then) =
      _$ApiHistoryNotificationCopyWithImpl<$Res, ApiHistoryNotification>;
  @useResult
  $Res call(
      {int? id,
      bool? read,
      int? loanId,
      String? phone,
      String? title,
      String? message,
      String? response,
      SendDate? sendDate,
      String? status,
      bool? delivered,
      String? sender,
      String? responseId,
      String? smsProvider,
      bool? keywordStatus,
      String? template,
      CreatedAt? createdAt,
      int? priority,
      int? admUserId,
      Detail? detail});

  $SendDateCopyWith<$Res>? get sendDate;
  $CreatedAtCopyWith<$Res>? get createdAt;
  $DetailCopyWith<$Res>? get detail;
}

/// @nodoc
class _$ApiHistoryNotificationCopyWithImpl<$Res,
        $Val extends ApiHistoryNotification>
    implements $ApiHistoryNotificationCopyWith<$Res> {
  _$ApiHistoryNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? read = freezed,
    Object? loanId = freezed,
    Object? phone = freezed,
    Object? title = freezed,
    Object? message = freezed,
    Object? response = freezed,
    Object? sendDate = freezed,
    Object? status = freezed,
    Object? delivered = freezed,
    Object? sender = freezed,
    Object? responseId = freezed,
    Object? smsProvider = freezed,
    Object? keywordStatus = freezed,
    Object? template = freezed,
    Object? createdAt = freezed,
    Object? priority = freezed,
    Object? admUserId = freezed,
    Object? detail = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      read: freezed == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool?,
      loanId: freezed == loanId
          ? _value.loanId
          : loanId // ignore: cast_nullable_to_non_nullable
              as int?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      sendDate: freezed == sendDate
          ? _value.sendDate
          : sendDate // ignore: cast_nullable_to_non_nullable
              as SendDate?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      delivered: freezed == delivered
          ? _value.delivered
          : delivered // ignore: cast_nullable_to_non_nullable
              as bool?,
      sender: freezed == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      responseId: freezed == responseId
          ? _value.responseId
          : responseId // ignore: cast_nullable_to_non_nullable
              as String?,
      smsProvider: freezed == smsProvider
          ? _value.smsProvider
          : smsProvider // ignore: cast_nullable_to_non_nullable
              as String?,
      keywordStatus: freezed == keywordStatus
          ? _value.keywordStatus
          : keywordStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      template: freezed == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as CreatedAt?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      admUserId: freezed == admUserId
          ? _value.admUserId
          : admUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Detail?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SendDateCopyWith<$Res>? get sendDate {
    if (_value.sendDate == null) {
      return null;
    }

    return $SendDateCopyWith<$Res>(_value.sendDate!, (value) {
      return _then(_value.copyWith(sendDate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CreatedAtCopyWith<$Res>? get createdAt {
    if (_value.createdAt == null) {
      return null;
    }

    return $CreatedAtCopyWith<$Res>(_value.createdAt!, (value) {
      return _then(_value.copyWith(createdAt: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailCopyWith<$Res>? get detail {
    if (_value.detail == null) {
      return null;
    }

    return $DetailCopyWith<$Res>(_value.detail!, (value) {
      return _then(_value.copyWith(detail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiHistoryNotificationImplCopyWith<$Res>
    implements $ApiHistoryNotificationCopyWith<$Res> {
  factory _$$ApiHistoryNotificationImplCopyWith(
          _$ApiHistoryNotificationImpl value,
          $Res Function(_$ApiHistoryNotificationImpl) then) =
      __$$ApiHistoryNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      bool? read,
      int? loanId,
      String? phone,
      String? title,
      String? message,
      String? response,
      SendDate? sendDate,
      String? status,
      bool? delivered,
      String? sender,
      String? responseId,
      String? smsProvider,
      bool? keywordStatus,
      String? template,
      CreatedAt? createdAt,
      int? priority,
      int? admUserId,
      Detail? detail});

  @override
  $SendDateCopyWith<$Res>? get sendDate;
  @override
  $CreatedAtCopyWith<$Res>? get createdAt;
  @override
  $DetailCopyWith<$Res>? get detail;
}

/// @nodoc
class __$$ApiHistoryNotificationImplCopyWithImpl<$Res>
    extends _$ApiHistoryNotificationCopyWithImpl<$Res,
        _$ApiHistoryNotificationImpl>
    implements _$$ApiHistoryNotificationImplCopyWith<$Res> {
  __$$ApiHistoryNotificationImplCopyWithImpl(
      _$ApiHistoryNotificationImpl _value,
      $Res Function(_$ApiHistoryNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? read = freezed,
    Object? loanId = freezed,
    Object? phone = freezed,
    Object? title = freezed,
    Object? message = freezed,
    Object? response = freezed,
    Object? sendDate = freezed,
    Object? status = freezed,
    Object? delivered = freezed,
    Object? sender = freezed,
    Object? responseId = freezed,
    Object? smsProvider = freezed,
    Object? keywordStatus = freezed,
    Object? template = freezed,
    Object? createdAt = freezed,
    Object? priority = freezed,
    Object? admUserId = freezed,
    Object? detail = freezed,
  }) {
    return _then(_$ApiHistoryNotificationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      read: freezed == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool?,
      loanId: freezed == loanId
          ? _value.loanId
          : loanId // ignore: cast_nullable_to_non_nullable
              as int?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      sendDate: freezed == sendDate
          ? _value.sendDate
          : sendDate // ignore: cast_nullable_to_non_nullable
              as SendDate?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      delivered: freezed == delivered
          ? _value.delivered
          : delivered // ignore: cast_nullable_to_non_nullable
              as bool?,
      sender: freezed == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      responseId: freezed == responseId
          ? _value.responseId
          : responseId // ignore: cast_nullable_to_non_nullable
              as String?,
      smsProvider: freezed == smsProvider
          ? _value.smsProvider
          : smsProvider // ignore: cast_nullable_to_non_nullable
              as String?,
      keywordStatus: freezed == keywordStatus
          ? _value.keywordStatus
          : keywordStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      template: freezed == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as CreatedAt?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      admUserId: freezed == admUserId
          ? _value.admUserId
          : admUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Detail?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiHistoryNotificationImpl implements _ApiHistoryNotification {
  const _$ApiHistoryNotificationImpl(
      {this.id,
      this.read,
      this.loanId,
      this.phone,
      this.title,
      this.message,
      this.response,
      this.sendDate,
      this.status,
      this.delivered,
      this.sender,
      this.responseId,
      this.smsProvider,
      this.keywordStatus,
      this.template,
      this.createdAt,
      this.priority,
      this.admUserId,
      this.detail});

  factory _$ApiHistoryNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiHistoryNotificationImplFromJson(json);

  @override
  final int? id;
  @override
  final bool? read;
  @override
  final int? loanId;
  @override
  final String? phone;
  @override
  final String? title;
  @override
  final String? message;
  @override
  final String? response;
  @override
  final SendDate? sendDate;
  @override
  final String? status;
  @override
  final bool? delivered;
  @override
  final String? sender;
  @override
  final String? responseId;
  @override
  final String? smsProvider;
  @override
  final bool? keywordStatus;
  @override
  final String? template;
  @override
  final CreatedAt? createdAt;
  @override
  final int? priority;
  @override
  final int? admUserId;
  @override
  final Detail? detail;

  @override
  String toString() {
    return 'ApiHistoryNotification(id: $id, read: $read, loanId: $loanId, phone: $phone, title: $title, message: $message, response: $response, sendDate: $sendDate, status: $status, delivered: $delivered, sender: $sender, responseId: $responseId, smsProvider: $smsProvider, keywordStatus: $keywordStatus, template: $template, createdAt: $createdAt, priority: $priority, admUserId: $admUserId, detail: $detail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiHistoryNotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.read, read) || other.read == read) &&
            (identical(other.loanId, loanId) || other.loanId == loanId) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.sendDate, sendDate) ||
                other.sendDate == sendDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.delivered, delivered) ||
                other.delivered == delivered) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.responseId, responseId) ||
                other.responseId == responseId) &&
            (identical(other.smsProvider, smsProvider) ||
                other.smsProvider == smsProvider) &&
            (identical(other.keywordStatus, keywordStatus) ||
                other.keywordStatus == keywordStatus) &&
            (identical(other.template, template) ||
                other.template == template) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.admUserId, admUserId) ||
                other.admUserId == admUserId) &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        read,
        loanId,
        phone,
        title,
        message,
        response,
        sendDate,
        status,
        delivered,
        sender,
        responseId,
        smsProvider,
        keywordStatus,
        template,
        createdAt,
        priority,
        admUserId,
        detail
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiHistoryNotificationImplCopyWith<_$ApiHistoryNotificationImpl>
      get copyWith => __$$ApiHistoryNotificationImplCopyWithImpl<
          _$ApiHistoryNotificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiHistoryNotificationImplToJson(
      this,
    );
  }
}

abstract class _ApiHistoryNotification implements ApiHistoryNotification {
  const factory _ApiHistoryNotification(
      {final int? id,
      final bool? read,
      final int? loanId,
      final String? phone,
      final String? title,
      final String? message,
      final String? response,
      final SendDate? sendDate,
      final String? status,
      final bool? delivered,
      final String? sender,
      final String? responseId,
      final String? smsProvider,
      final bool? keywordStatus,
      final String? template,
      final CreatedAt? createdAt,
      final int? priority,
      final int? admUserId,
      final Detail? detail}) = _$ApiHistoryNotificationImpl;

  factory _ApiHistoryNotification.fromJson(Map<String, dynamic> json) =
      _$ApiHistoryNotificationImpl.fromJson;

  @override
  int? get id;
  @override
  bool? get read;
  @override
  int? get loanId;
  @override
  String? get phone;
  @override
  String? get title;
  @override
  String? get message;
  @override
  String? get response;
  @override
  SendDate? get sendDate;
  @override
  String? get status;
  @override
  bool? get delivered;
  @override
  String? get sender;
  @override
  String? get responseId;
  @override
  String? get smsProvider;
  @override
  bool? get keywordStatus;
  @override
  String? get template;
  @override
  CreatedAt? get createdAt;
  @override
  int? get priority;
  @override
  int? get admUserId;
  @override
  Detail? get detail;
  @override
  @JsonKey(ignore: true)
  _$$ApiHistoryNotificationImplCopyWith<_$ApiHistoryNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreatedAt _$CreatedAtFromJson(Map<String, dynamic> json) {
  return _CreatedAt.fromJson(json);
}

/// @nodoc
mixin _$CreatedAt {
  String? get date => throw _privateConstructorUsedError;
  int? get timezoneType => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatedAtCopyWith<CreatedAt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatedAtCopyWith<$Res> {
  factory $CreatedAtCopyWith(CreatedAt value, $Res Function(CreatedAt) then) =
      _$CreatedAtCopyWithImpl<$Res, CreatedAt>;
  @useResult
  $Res call({String? date, int? timezoneType, String? timezone});
}

/// @nodoc
class _$CreatedAtCopyWithImpl<$Res, $Val extends CreatedAt>
    implements $CreatedAtCopyWith<$Res> {
  _$CreatedAtCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? timezoneType = freezed,
    Object? timezone = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      timezoneType: freezed == timezoneType
          ? _value.timezoneType
          : timezoneType // ignore: cast_nullable_to_non_nullable
              as int?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatedAtImplCopyWith<$Res>
    implements $CreatedAtCopyWith<$Res> {
  factory _$$CreatedAtImplCopyWith(
          _$CreatedAtImpl value, $Res Function(_$CreatedAtImpl) then) =
      __$$CreatedAtImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? date, int? timezoneType, String? timezone});
}

/// @nodoc
class __$$CreatedAtImplCopyWithImpl<$Res>
    extends _$CreatedAtCopyWithImpl<$Res, _$CreatedAtImpl>
    implements _$$CreatedAtImplCopyWith<$Res> {
  __$$CreatedAtImplCopyWithImpl(
      _$CreatedAtImpl _value, $Res Function(_$CreatedAtImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? timezoneType = freezed,
    Object? timezone = freezed,
  }) {
    return _then(_$CreatedAtImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      timezoneType: freezed == timezoneType
          ? _value.timezoneType
          : timezoneType // ignore: cast_nullable_to_non_nullable
              as int?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatedAtImpl implements _CreatedAt {
  const _$CreatedAtImpl({this.date, this.timezoneType, this.timezone});

  factory _$CreatedAtImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatedAtImplFromJson(json);

  @override
  final String? date;
  @override
  final int? timezoneType;
  @override
  final String? timezone;

  @override
  String toString() {
    return 'CreatedAt(date: $date, timezoneType: $timezoneType, timezone: $timezone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedAtImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.timezoneType, timezoneType) ||
                other.timezoneType == timezoneType) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, timezoneType, timezone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedAtImplCopyWith<_$CreatedAtImpl> get copyWith =>
      __$$CreatedAtImplCopyWithImpl<_$CreatedAtImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatedAtImplToJson(
      this,
    );
  }
}

abstract class _CreatedAt implements CreatedAt {
  const factory _CreatedAt(
      {final String? date,
      final int? timezoneType,
      final String? timezone}) = _$CreatedAtImpl;

  factory _CreatedAt.fromJson(Map<String, dynamic> json) =
      _$CreatedAtImpl.fromJson;

  @override
  String? get date;
  @override
  int? get timezoneType;
  @override
  String? get timezone;
  @override
  @JsonKey(ignore: true)
  _$$CreatedAtImplCopyWith<_$CreatedAtImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Detail _$DetailFromJson(Map<String, dynamic> json) {
  return _Detail.fromJson(json);
}

/// @nodoc
mixin _$Detail {
  int? get id => throw _privateConstructorUsedError;
  bool? get alwaysVisible => throw _privateConstructorUsedError;
  bool? get manualSending => throw _privateConstructorUsedError;
  String? get pushImageUrl => throw _privateConstructorUsedError;
  String? get pushImageSendingMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailCopyWith<Detail> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailCopyWith<$Res> {
  factory $DetailCopyWith(Detail value, $Res Function(Detail) then) =
      _$DetailCopyWithImpl<$Res, Detail>;
  @useResult
  $Res call(
      {int? id,
      bool? alwaysVisible,
      bool? manualSending,
      String? pushImageUrl,
      String? pushImageSendingMode});
}

/// @nodoc
class _$DetailCopyWithImpl<$Res, $Val extends Detail>
    implements $DetailCopyWith<$Res> {
  _$DetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? alwaysVisible = freezed,
    Object? manualSending = freezed,
    Object? pushImageUrl = freezed,
    Object? pushImageSendingMode = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      alwaysVisible: freezed == alwaysVisible
          ? _value.alwaysVisible
          : alwaysVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
      manualSending: freezed == manualSending
          ? _value.manualSending
          : manualSending // ignore: cast_nullable_to_non_nullable
              as bool?,
      pushImageUrl: freezed == pushImageUrl
          ? _value.pushImageUrl
          : pushImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      pushImageSendingMode: freezed == pushImageSendingMode
          ? _value.pushImageSendingMode
          : pushImageSendingMode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailImplCopyWith<$Res> implements $DetailCopyWith<$Res> {
  factory _$$DetailImplCopyWith(
          _$DetailImpl value, $Res Function(_$DetailImpl) then) =
      __$$DetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      bool? alwaysVisible,
      bool? manualSending,
      String? pushImageUrl,
      String? pushImageSendingMode});
}

/// @nodoc
class __$$DetailImplCopyWithImpl<$Res>
    extends _$DetailCopyWithImpl<$Res, _$DetailImpl>
    implements _$$DetailImplCopyWith<$Res> {
  __$$DetailImplCopyWithImpl(
      _$DetailImpl _value, $Res Function(_$DetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? alwaysVisible = freezed,
    Object? manualSending = freezed,
    Object? pushImageUrl = freezed,
    Object? pushImageSendingMode = freezed,
  }) {
    return _then(_$DetailImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      alwaysVisible: freezed == alwaysVisible
          ? _value.alwaysVisible
          : alwaysVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
      manualSending: freezed == manualSending
          ? _value.manualSending
          : manualSending // ignore: cast_nullable_to_non_nullable
              as bool?,
      pushImageUrl: freezed == pushImageUrl
          ? _value.pushImageUrl
          : pushImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      pushImageSendingMode: freezed == pushImageSendingMode
          ? _value.pushImageSendingMode
          : pushImageSendingMode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailImpl implements _Detail {
  const _$DetailImpl(
      {this.id,
      this.alwaysVisible,
      this.manualSending,
      this.pushImageUrl,
      this.pushImageSendingMode});

  factory _$DetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailImplFromJson(json);

  @override
  final int? id;
  @override
  final bool? alwaysVisible;
  @override
  final bool? manualSending;
  @override
  final String? pushImageUrl;
  @override
  final String? pushImageSendingMode;

  @override
  String toString() {
    return 'Detail(id: $id, alwaysVisible: $alwaysVisible, manualSending: $manualSending, pushImageUrl: $pushImageUrl, pushImageSendingMode: $pushImageSendingMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.alwaysVisible, alwaysVisible) ||
                other.alwaysVisible == alwaysVisible) &&
            (identical(other.manualSending, manualSending) ||
                other.manualSending == manualSending) &&
            (identical(other.pushImageUrl, pushImageUrl) ||
                other.pushImageUrl == pushImageUrl) &&
            (identical(other.pushImageSendingMode, pushImageSendingMode) ||
                other.pushImageSendingMode == pushImageSendingMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, alwaysVisible, manualSending,
      pushImageUrl, pushImageSendingMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailImplCopyWith<_$DetailImpl> get copyWith =>
      __$$DetailImplCopyWithImpl<_$DetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailImplToJson(
      this,
    );
  }
}

abstract class _Detail implements Detail {
  const factory _Detail(
      {final int? id,
      final bool? alwaysVisible,
      final bool? manualSending,
      final String? pushImageUrl,
      final String? pushImageSendingMode}) = _$DetailImpl;

  factory _Detail.fromJson(Map<String, dynamic> json) = _$DetailImpl.fromJson;

  @override
  int? get id;
  @override
  bool? get alwaysVisible;
  @override
  bool? get manualSending;
  @override
  String? get pushImageUrl;
  @override
  String? get pushImageSendingMode;
  @override
  @JsonKey(ignore: true)
  _$$DetailImplCopyWith<_$DetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SendDate _$SendDateFromJson(Map<String, dynamic> json) {
  return _SendDate.fromJson(json);
}

/// @nodoc
mixin _$SendDate {
  String? get date => throw _privateConstructorUsedError;
  int? get timezoneType => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendDateCopyWith<SendDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendDateCopyWith<$Res> {
  factory $SendDateCopyWith(SendDate value, $Res Function(SendDate) then) =
      _$SendDateCopyWithImpl<$Res, SendDate>;
  @useResult
  $Res call({String? date, int? timezoneType, String? timezone});
}

/// @nodoc
class _$SendDateCopyWithImpl<$Res, $Val extends SendDate>
    implements $SendDateCopyWith<$Res> {
  _$SendDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? timezoneType = freezed,
    Object? timezone = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      timezoneType: freezed == timezoneType
          ? _value.timezoneType
          : timezoneType // ignore: cast_nullable_to_non_nullable
              as int?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendDateImplCopyWith<$Res>
    implements $SendDateCopyWith<$Res> {
  factory _$$SendDateImplCopyWith(
          _$SendDateImpl value, $Res Function(_$SendDateImpl) then) =
      __$$SendDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? date, int? timezoneType, String? timezone});
}

/// @nodoc
class __$$SendDateImplCopyWithImpl<$Res>
    extends _$SendDateCopyWithImpl<$Res, _$SendDateImpl>
    implements _$$SendDateImplCopyWith<$Res> {
  __$$SendDateImplCopyWithImpl(
      _$SendDateImpl _value, $Res Function(_$SendDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? timezoneType = freezed,
    Object? timezone = freezed,
  }) {
    return _then(_$SendDateImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      timezoneType: freezed == timezoneType
          ? _value.timezoneType
          : timezoneType // ignore: cast_nullable_to_non_nullable
              as int?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendDateImpl implements _SendDate {
  const _$SendDateImpl({this.date, this.timezoneType, this.timezone});

  factory _$SendDateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendDateImplFromJson(json);

  @override
  final String? date;
  @override
  final int? timezoneType;
  @override
  final String? timezone;

  @override
  String toString() {
    return 'SendDate(date: $date, timezoneType: $timezoneType, timezone: $timezone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendDateImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.timezoneType, timezoneType) ||
                other.timezoneType == timezoneType) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, timezoneType, timezone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendDateImplCopyWith<_$SendDateImpl> get copyWith =>
      __$$SendDateImplCopyWithImpl<_$SendDateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendDateImplToJson(
      this,
    );
  }
}

abstract class _SendDate implements SendDate {
  const factory _SendDate(
      {final String? date,
      final int? timezoneType,
      final String? timezone}) = _$SendDateImpl;

  factory _SendDate.fromJson(Map<String, dynamic> json) =
      _$SendDateImpl.fromJson;

  @override
  String? get date;
  @override
  int? get timezoneType;
  @override
  String? get timezone;
  @override
  @JsonKey(ignore: true)
  _$$SendDateImplCopyWith<_$SendDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
