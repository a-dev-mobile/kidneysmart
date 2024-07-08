// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiUser {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiUserInfo value) userNew,
    required TResult Function() userExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiUserInfo value)? userNew,
    TResult? Function()? userExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiUserInfo value)? userNew,
    TResult Function()? userExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserNew value) userNew,
    required TResult Function(_UserExist value) userExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserNew value)? userNew,
    TResult? Function(_UserExist value)? userExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserNew value)? userNew,
    TResult Function(_UserExist value)? userExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiUserCopyWith<$Res> {
  factory $ApiUserCopyWith(ApiUser value, $Res Function(ApiUser) then) =
      _$ApiUserCopyWithImpl<$Res, ApiUser>;
}

/// @nodoc
class _$ApiUserCopyWithImpl<$Res, $Val extends ApiUser>
    implements $ApiUserCopyWith<$Res> {
  _$ApiUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserNewImplCopyWith<$Res> {
  factory _$$UserNewImplCopyWith(
          _$UserNewImpl value, $Res Function(_$UserNewImpl) then) =
      __$$UserNewImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiUserInfo value});

  $ApiUserInfoCopyWith<$Res> get value;
}

/// @nodoc
class __$$UserNewImplCopyWithImpl<$Res>
    extends _$ApiUserCopyWithImpl<$Res, _$UserNewImpl>
    implements _$$UserNewImplCopyWith<$Res> {
  __$$UserNewImplCopyWithImpl(
      _$UserNewImpl _value, $Res Function(_$UserNewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$UserNewImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as ApiUserInfo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiUserInfoCopyWith<$Res> get value {
    return $ApiUserInfoCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc

class _$UserNewImpl implements _UserNew {
  _$UserNewImpl(this.value);

  @override
  final ApiUserInfo value;

  @override
  String toString() {
    return 'ApiUser.userNew(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserNewImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserNewImplCopyWith<_$UserNewImpl> get copyWith =>
      __$$UserNewImplCopyWithImpl<_$UserNewImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiUserInfo value) userNew,
    required TResult Function() userExist,
  }) {
    return userNew(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiUserInfo value)? userNew,
    TResult? Function()? userExist,
  }) {
    return userNew?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiUserInfo value)? userNew,
    TResult Function()? userExist,
    required TResult orElse(),
  }) {
    if (userNew != null) {
      return userNew(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserNew value) userNew,
    required TResult Function(_UserExist value) userExist,
  }) {
    return userNew(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserNew value)? userNew,
    TResult? Function(_UserExist value)? userExist,
  }) {
    return userNew?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserNew value)? userNew,
    TResult Function(_UserExist value)? userExist,
    required TResult orElse(),
  }) {
    if (userNew != null) {
      return userNew(this);
    }
    return orElse();
  }
}

abstract class _UserNew implements ApiUser {
  factory _UserNew(final ApiUserInfo value) = _$UserNewImpl;

  ApiUserInfo get value;
  @JsonKey(ignore: true)
  _$$UserNewImplCopyWith<_$UserNewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserExistImplCopyWith<$Res> {
  factory _$$UserExistImplCopyWith(
          _$UserExistImpl value, $Res Function(_$UserExistImpl) then) =
      __$$UserExistImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserExistImplCopyWithImpl<$Res>
    extends _$ApiUserCopyWithImpl<$Res, _$UserExistImpl>
    implements _$$UserExistImplCopyWith<$Res> {
  __$$UserExistImplCopyWithImpl(
      _$UserExistImpl _value, $Res Function(_$UserExistImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserExistImpl implements _UserExist {
  _$UserExistImpl();

  @override
  String toString() {
    return 'ApiUser.userExist()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserExistImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiUserInfo value) userNew,
    required TResult Function() userExist,
  }) {
    return userExist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiUserInfo value)? userNew,
    TResult? Function()? userExist,
  }) {
    return userExist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiUserInfo value)? userNew,
    TResult Function()? userExist,
    required TResult orElse(),
  }) {
    if (userExist != null) {
      return userExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserNew value) userNew,
    required TResult Function(_UserExist value) userExist,
  }) {
    return userExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserNew value)? userNew,
    TResult? Function(_UserExist value)? userExist,
  }) {
    return userExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserNew value)? userNew,
    TResult Function(_UserExist value)? userExist,
    required TResult orElse(),
  }) {
    if (userExist != null) {
      return userExist(this);
    }
    return orElse();
  }
}

abstract class _UserExist implements ApiUser {
  factory _UserExist() = _$UserExistImpl;
}

ApiUserInfo _$ApiUserInfoFromJson(Map<String, dynamic> json) {
  return _ApiUserInfo.fromJson(json);
}

/// @nodoc
mixin _$ApiUserInfo {
  int? get id => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  String? get refresh_token => throw _privateConstructorUsedError;
  bool get is_phone_confirmed => throw _privateConstructorUsedError;
  bool get finance_is_bankruptcy => throw _privateConstructorUsedError;
  bool get active_moratorium => throw _privateConstructorUsedError;
  bool get soft_reject => throw _privateConstructorUsedError;
  bool get hard_reject => throw _privateConstructorUsedError;
  bool get in_black_list => throw _privateConstructorUsedError;
  bool get esia_user => throw _privateConstructorUsedError; //
  @JsonKey(name: 'first_loan')
  bool get firstLoan => throw _privateConstructorUsedError; //
  bool get short_api => throw _privateConstructorUsedError;
  bool? get is_esia_user => throw _privateConstructorUsedError;
  int? get requested_amount => throw _privateConstructorUsedError;
  int? get requested_days => throw _privateConstructorUsedError;
  int? get method_of_disbursement => throw _privateConstructorUsedError;
  String get first_name => throw _privateConstructorUsedError;
  String get last_name => throw _privateConstructorUsedError;
  String get personal_id => throw _privateConstructorUsedError;
  String get document_number => throw _privateConstructorUsedError;
  String get document_series => throw _privateConstructorUsedError;
  String get mobile_phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get date_of_birth => throw _privateConstructorUsedError;
  String get document_type => throw _privateConstructorUsedError;
  int? get issued_by => throw _privateConstructorUsedError;
  String get issued_by_string => throw _privateConstructorUsedError;
  String get issuer_code => throw _privateConstructorUsedError;
  String get date_issued => throw _privateConstructorUsedError;
  String get valid_until => throw _privateConstructorUsedError;
  String get birth_place => throw _privateConstructorUsedError;
  String get middle_name => throw _privateConstructorUsedError;
  String get region_registered => throw _privateConstructorUsedError;
  String get district_registered => throw _privateConstructorUsedError;
  String get city_registered => throw _privateConstructorUsedError;
  String get street_type_registered => throw _privateConstructorUsedError;
  String get street_registered => throw _privateConstructorUsedError;
  String get house_registered => throw _privateConstructorUsedError;
  String get housing_registered => throw _privateConstructorUsedError;
  String get building_registered => throw _privateConstructorUsedError;
  String get apartment_registered => throw _privateConstructorUsedError;
  String get home_phone_registered => throw _privateConstructorUsedError;
  String get contact_name_registered => throw _privateConstructorUsedError;
  int? get contact_type => throw _privateConstructorUsedError;
  IdLabelValue? get contact_type_id => throw _privateConstructorUsedError;
  String get contact_phone_registered => throw _privateConstructorUsedError;
  String get contact_phone => throw _privateConstructorUsedError;
  String get length_of_stay_registered => throw _privateConstructorUsedError;
  String get template_address_registered => throw _privateConstructorUsedError;
  String get region_actual => throw _privateConstructorUsedError;
  String get district_actual => throw _privateConstructorUsedError;
  String get city_actual => throw _privateConstructorUsedError;
  String get street_type_actual => throw _privateConstructorUsedError;
  String get street_actual => throw _privateConstructorUsedError;
  String get house_actual => throw _privateConstructorUsedError;
  String get housing_actual => throw _privateConstructorUsedError;
  String get building_actual => throw _privateConstructorUsedError;
  String get apartment_actual => throw _privateConstructorUsedError;
  String get home_phone_actual => throw _privateConstructorUsedError;
  String get length_of_stay_actual => throw _privateConstructorUsedError;
  String get template_address_actual => throw _privateConstructorUsedError;
  String get education => throw _privateConstructorUsedError;
  IdLabelValue? get education_id => throw _privateConstructorUsedError;
  num? get monthly_income => throw _privateConstructorUsedError;
  num? get monthly_outcome => throw _privateConstructorUsedError;
  String get employer => throw _privateConstructorUsedError;
  String get employer_address => throw _privateConstructorUsedError;
  String get employer_phone => throw _privateConstructorUsedError;
  int? get employer_activity => throw _privateConstructorUsedError;
  IdLabelValue? get job_employer_activity => throw _privateConstructorUsedError;
  int? get employer_amount_workers => throw _privateConstructorUsedError;
  IdLabelValue? get job_employer_amount_workers =>
      throw _privateConstructorUsedError;
  int? get position => throw _privateConstructorUsedError;
  IdLabelValue? get job_position => throw _privateConstructorUsedError;
  int? get position_type => throw _privateConstructorUsedError;
  IdLabelValue? get job_position_type => throw _privateConstructorUsedError;
  String get work_phone => throw _privateConstructorUsedError;
  String get internal_phone => throw _privateConstructorUsedError;
  String get next_salary_date => throw _privateConstructorUsedError;
  String get work_experience_last => throw _privateConstructorUsedError;
  String get work_experience_total => throw _privateConstructorUsedError;
  String get real_estate => throw _privateConstructorUsedError;
  int? get marital_status => throw _privateConstructorUsedError;
  IdLabelValue? get marital_status_id => throw _privateConstructorUsedError;
  int? get number_of_children => throw _privateConstructorUsedError;
  IdLabelValue? get number_of_children_id => throw _privateConstructorUsedError;
  String get loans_before => throw _privateConstructorUsedError;
  String get loans_before_amount => throw _privateConstructorUsedError;
  String get loans_before_bank_name => throw _privateConstructorUsedError;
  String get monthly_expenses_on_loans => throw _privateConstructorUsedError;
  String get loans_current_bank_name => throw _privateConstructorUsedError;
  String get credit_card_limit => throw _privateConstructorUsedError;
  String get requested_product => throw _privateConstructorUsedError;
  String get employment_type => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get car_type => throw _privateConstructorUsedError;
  String get car_year => throw _privateConstructorUsedError;
  String get car_number => throw _privateConstructorUsedError;
  int? get car_amount => throw _privateConstructorUsedError;
  String get village_registered => throw _privateConstructorUsedError;
  String get village_actual => throw _privateConstructorUsedError;
  String get additional_income_source =>
      throw _privateConstructorUsedError; // @Default(0) int additional_income_amount,
  int get family_income => throw _privateConstructorUsedError;
  String get contact_name => throw _privateConstructorUsedError;
  String get contact_last_name => throw _privateConstructorUsedError;
  String get target_url => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get new_password => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get lang => throw _privateConstructorUsedError;
  String get postal_code_registered => throw _privateConstructorUsedError;
  String get postal_code_actual => throw _privateConstructorUsedError;
  int? get finance_liabilities => throw _privateConstructorUsedError;
  int? get finance_repayment_monthly_sum => throw _privateConstructorUsedError;
  int? get finance_amount_unpaid_loans => throw _privateConstructorUsedError;
  int? get finance_type_user_history => throw _privateConstructorUsedError;
  int? get finance_max_loan_sum => throw _privateConstructorUsedError;
  int? get finance_last_loan_sum => throw _privateConstructorUsedError;
  String get university_name => throw _privateConstructorUsedError;
  String get faculty => throw _privateConstructorUsedError;
  String get academic_degree => throw _privateConstructorUsedError;
  String get academic_start_year => throw _privateConstructorUsedError;
  String get disability_group => throw _privateConstructorUsedError;
  String get activity_type => throw _privateConstructorUsedError;
  String get agis_project => throw _privateConstructorUsedError;
  String get step => throw _privateConstructorUsedError;
  String get ga_cid => throw _privateConstructorUsedError;
  String get smartphone => throw _privateConstructorUsedError;
  String get motorbike => throw _privateConstructorUsedError;
  String get bank_account_transit_account => throw _privateConstructorUsedError;
  String get bank_account_bank_name => throw _privateConstructorUsedError;
  String get bank_account_bank_bic => throw _privateConstructorUsedError;
  String get bank_account_bank_tax_number => throw _privateConstructorUsedError;
  String get bank_account_number => throw _privateConstructorUsedError;
  String get moratorium_end_date => throw _privateConstructorUsedError;
  String get partner_url => throw _privateConstructorUsedError;
  String get okato_registered => throw _privateConstructorUsedError;
  String get okato_actual => throw _privateConstructorUsedError;
  String get fias_id_registered => throw _privateConstructorUsedError;
  String get fias_id_actual => throw _privateConstructorUsedError;
  @JsonKey(name: 'terminal_repayment')
  String? get terminalRepayment => throw _privateConstructorUsedError;
  @JsonKey(name: 'push_notification_agree')
  bool? get pushNotificationAgree => throw _privateConstructorUsedError;
  @JsonKey(name: 'confirmation_method')
  String? get confirmationMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'allowed_access_to_personal_account')
  bool? get allowedAccessToPersonalAccount =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'is_standard_questionnaire_first')
  bool? get isStandardQuestionnaireFirst => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_standard_questionnaire_repeated')
  bool? get isStandardQuestionnaireRepeated =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'is_standard_personal_account_first')
  bool? get isStandardPersonalAccountFirst =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'is_standard_personal_account_repeated')
  bool? get isStandardPersonalAccountRepeated =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiUserInfoCopyWith<ApiUserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiUserInfoCopyWith<$Res> {
  factory $ApiUserInfoCopyWith(
          ApiUserInfo value, $Res Function(ApiUserInfo) then) =
      _$ApiUserInfoCopyWithImpl<$Res, ApiUserInfo>;
  @useResult
  $Res call(
      {int? id,
      String? token,
      String? refresh_token,
      bool is_phone_confirmed,
      bool finance_is_bankruptcy,
      bool active_moratorium,
      bool soft_reject,
      bool hard_reject,
      bool in_black_list,
      bool esia_user,
      @JsonKey(name: 'first_loan') bool firstLoan,
      bool short_api,
      bool? is_esia_user,
      int? requested_amount,
      int? requested_days,
      int? method_of_disbursement,
      String first_name,
      String last_name,
      String personal_id,
      String document_number,
      String document_series,
      String mobile_phone,
      String email,
      String date_of_birth,
      String document_type,
      int? issued_by,
      String issued_by_string,
      String issuer_code,
      String date_issued,
      String valid_until,
      String birth_place,
      String middle_name,
      String region_registered,
      String district_registered,
      String city_registered,
      String street_type_registered,
      String street_registered,
      String house_registered,
      String housing_registered,
      String building_registered,
      String apartment_registered,
      String home_phone_registered,
      String contact_name_registered,
      int? contact_type,
      IdLabelValue? contact_type_id,
      String contact_phone_registered,
      String contact_phone,
      String length_of_stay_registered,
      String template_address_registered,
      String region_actual,
      String district_actual,
      String city_actual,
      String street_type_actual,
      String street_actual,
      String house_actual,
      String housing_actual,
      String building_actual,
      String apartment_actual,
      String home_phone_actual,
      String length_of_stay_actual,
      String template_address_actual,
      String education,
      IdLabelValue? education_id,
      num? monthly_income,
      num? monthly_outcome,
      String employer,
      String employer_address,
      String employer_phone,
      int? employer_activity,
      IdLabelValue? job_employer_activity,
      int? employer_amount_workers,
      IdLabelValue? job_employer_amount_workers,
      int? position,
      IdLabelValue? job_position,
      int? position_type,
      IdLabelValue? job_position_type,
      String work_phone,
      String internal_phone,
      String next_salary_date,
      String work_experience_last,
      String work_experience_total,
      String real_estate,
      int? marital_status,
      IdLabelValue? marital_status_id,
      int? number_of_children,
      IdLabelValue? number_of_children_id,
      String loans_before,
      String loans_before_amount,
      String loans_before_bank_name,
      String monthly_expenses_on_loans,
      String loans_current_bank_name,
      String credit_card_limit,
      String requested_product,
      String employment_type,
      String gender,
      String car_type,
      String car_year,
      String car_number,
      int? car_amount,
      String village_registered,
      String village_actual,
      String additional_income_source,
      int family_income,
      String contact_name,
      String contact_last_name,
      String target_url,
      String password,
      String new_password,
      String code,
      String lang,
      String postal_code_registered,
      String postal_code_actual,
      int? finance_liabilities,
      int? finance_repayment_monthly_sum,
      int? finance_amount_unpaid_loans,
      int? finance_type_user_history,
      int? finance_max_loan_sum,
      int? finance_last_loan_sum,
      String university_name,
      String faculty,
      String academic_degree,
      String academic_start_year,
      String disability_group,
      String activity_type,
      String agis_project,
      String step,
      String ga_cid,
      String smartphone,
      String motorbike,
      String bank_account_transit_account,
      String bank_account_bank_name,
      String bank_account_bank_bic,
      String bank_account_bank_tax_number,
      String bank_account_number,
      String moratorium_end_date,
      String partner_url,
      String okato_registered,
      String okato_actual,
      String fias_id_registered,
      String fias_id_actual,
      @JsonKey(name: 'terminal_repayment') String? terminalRepayment,
      @JsonKey(name: 'push_notification_agree') bool? pushNotificationAgree,
      @JsonKey(name: 'confirmation_method') String? confirmationMethod,
      @JsonKey(name: 'allowed_access_to_personal_account')
      bool? allowedAccessToPersonalAccount,
      @JsonKey(name: 'is_standard_questionnaire_first')
      bool? isStandardQuestionnaireFirst,
      @JsonKey(name: 'is_standard_questionnaire_repeated')
      bool? isStandardQuestionnaireRepeated,
      @JsonKey(name: 'is_standard_personal_account_first')
      bool? isStandardPersonalAccountFirst,
      @JsonKey(name: 'is_standard_personal_account_repeated')
      bool? isStandardPersonalAccountRepeated});

  $IdLabelValueCopyWith<$Res>? get contact_type_id;
  $IdLabelValueCopyWith<$Res>? get education_id;
  $IdLabelValueCopyWith<$Res>? get job_employer_activity;
  $IdLabelValueCopyWith<$Res>? get job_employer_amount_workers;
  $IdLabelValueCopyWith<$Res>? get job_position;
  $IdLabelValueCopyWith<$Res>? get job_position_type;
  $IdLabelValueCopyWith<$Res>? get marital_status_id;
  $IdLabelValueCopyWith<$Res>? get number_of_children_id;
}

/// @nodoc
class _$ApiUserInfoCopyWithImpl<$Res, $Val extends ApiUserInfo>
    implements $ApiUserInfoCopyWith<$Res> {
  _$ApiUserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? token = freezed,
    Object? refresh_token = freezed,
    Object? is_phone_confirmed = null,
    Object? finance_is_bankruptcy = null,
    Object? active_moratorium = null,
    Object? soft_reject = null,
    Object? hard_reject = null,
    Object? in_black_list = null,
    Object? esia_user = null,
    Object? firstLoan = null,
    Object? short_api = null,
    Object? is_esia_user = freezed,
    Object? requested_amount = freezed,
    Object? requested_days = freezed,
    Object? method_of_disbursement = freezed,
    Object? first_name = null,
    Object? last_name = null,
    Object? personal_id = null,
    Object? document_number = null,
    Object? document_series = null,
    Object? mobile_phone = null,
    Object? email = null,
    Object? date_of_birth = null,
    Object? document_type = null,
    Object? issued_by = freezed,
    Object? issued_by_string = null,
    Object? issuer_code = null,
    Object? date_issued = null,
    Object? valid_until = null,
    Object? birth_place = null,
    Object? middle_name = null,
    Object? region_registered = null,
    Object? district_registered = null,
    Object? city_registered = null,
    Object? street_type_registered = null,
    Object? street_registered = null,
    Object? house_registered = null,
    Object? housing_registered = null,
    Object? building_registered = null,
    Object? apartment_registered = null,
    Object? home_phone_registered = null,
    Object? contact_name_registered = null,
    Object? contact_type = freezed,
    Object? contact_type_id = freezed,
    Object? contact_phone_registered = null,
    Object? contact_phone = null,
    Object? length_of_stay_registered = null,
    Object? template_address_registered = null,
    Object? region_actual = null,
    Object? district_actual = null,
    Object? city_actual = null,
    Object? street_type_actual = null,
    Object? street_actual = null,
    Object? house_actual = null,
    Object? housing_actual = null,
    Object? building_actual = null,
    Object? apartment_actual = null,
    Object? home_phone_actual = null,
    Object? length_of_stay_actual = null,
    Object? template_address_actual = null,
    Object? education = null,
    Object? education_id = freezed,
    Object? monthly_income = freezed,
    Object? monthly_outcome = freezed,
    Object? employer = null,
    Object? employer_address = null,
    Object? employer_phone = null,
    Object? employer_activity = freezed,
    Object? job_employer_activity = freezed,
    Object? employer_amount_workers = freezed,
    Object? job_employer_amount_workers = freezed,
    Object? position = freezed,
    Object? job_position = freezed,
    Object? position_type = freezed,
    Object? job_position_type = freezed,
    Object? work_phone = null,
    Object? internal_phone = null,
    Object? next_salary_date = null,
    Object? work_experience_last = null,
    Object? work_experience_total = null,
    Object? real_estate = null,
    Object? marital_status = freezed,
    Object? marital_status_id = freezed,
    Object? number_of_children = freezed,
    Object? number_of_children_id = freezed,
    Object? loans_before = null,
    Object? loans_before_amount = null,
    Object? loans_before_bank_name = null,
    Object? monthly_expenses_on_loans = null,
    Object? loans_current_bank_name = null,
    Object? credit_card_limit = null,
    Object? requested_product = null,
    Object? employment_type = null,
    Object? gender = null,
    Object? car_type = null,
    Object? car_year = null,
    Object? car_number = null,
    Object? car_amount = freezed,
    Object? village_registered = null,
    Object? village_actual = null,
    Object? additional_income_source = null,
    Object? family_income = null,
    Object? contact_name = null,
    Object? contact_last_name = null,
    Object? target_url = null,
    Object? password = null,
    Object? new_password = null,
    Object? code = null,
    Object? lang = null,
    Object? postal_code_registered = null,
    Object? postal_code_actual = null,
    Object? finance_liabilities = freezed,
    Object? finance_repayment_monthly_sum = freezed,
    Object? finance_amount_unpaid_loans = freezed,
    Object? finance_type_user_history = freezed,
    Object? finance_max_loan_sum = freezed,
    Object? finance_last_loan_sum = freezed,
    Object? university_name = null,
    Object? faculty = null,
    Object? academic_degree = null,
    Object? academic_start_year = null,
    Object? disability_group = null,
    Object? activity_type = null,
    Object? agis_project = null,
    Object? step = null,
    Object? ga_cid = null,
    Object? smartphone = null,
    Object? motorbike = null,
    Object? bank_account_transit_account = null,
    Object? bank_account_bank_name = null,
    Object? bank_account_bank_bic = null,
    Object? bank_account_bank_tax_number = null,
    Object? bank_account_number = null,
    Object? moratorium_end_date = null,
    Object? partner_url = null,
    Object? okato_registered = null,
    Object? okato_actual = null,
    Object? fias_id_registered = null,
    Object? fias_id_actual = null,
    Object? terminalRepayment = freezed,
    Object? pushNotificationAgree = freezed,
    Object? confirmationMethod = freezed,
    Object? allowedAccessToPersonalAccount = freezed,
    Object? isStandardQuestionnaireFirst = freezed,
    Object? isStandardQuestionnaireRepeated = freezed,
    Object? isStandardPersonalAccountFirst = freezed,
    Object? isStandardPersonalAccountRepeated = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refresh_token: freezed == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String?,
      is_phone_confirmed: null == is_phone_confirmed
          ? _value.is_phone_confirmed
          : is_phone_confirmed // ignore: cast_nullable_to_non_nullable
              as bool,
      finance_is_bankruptcy: null == finance_is_bankruptcy
          ? _value.finance_is_bankruptcy
          : finance_is_bankruptcy // ignore: cast_nullable_to_non_nullable
              as bool,
      active_moratorium: null == active_moratorium
          ? _value.active_moratorium
          : active_moratorium // ignore: cast_nullable_to_non_nullable
              as bool,
      soft_reject: null == soft_reject
          ? _value.soft_reject
          : soft_reject // ignore: cast_nullable_to_non_nullable
              as bool,
      hard_reject: null == hard_reject
          ? _value.hard_reject
          : hard_reject // ignore: cast_nullable_to_non_nullable
              as bool,
      in_black_list: null == in_black_list
          ? _value.in_black_list
          : in_black_list // ignore: cast_nullable_to_non_nullable
              as bool,
      esia_user: null == esia_user
          ? _value.esia_user
          : esia_user // ignore: cast_nullable_to_non_nullable
              as bool,
      firstLoan: null == firstLoan
          ? _value.firstLoan
          : firstLoan // ignore: cast_nullable_to_non_nullable
              as bool,
      short_api: null == short_api
          ? _value.short_api
          : short_api // ignore: cast_nullable_to_non_nullable
              as bool,
      is_esia_user: freezed == is_esia_user
          ? _value.is_esia_user
          : is_esia_user // ignore: cast_nullable_to_non_nullable
              as bool?,
      requested_amount: freezed == requested_amount
          ? _value.requested_amount
          : requested_amount // ignore: cast_nullable_to_non_nullable
              as int?,
      requested_days: freezed == requested_days
          ? _value.requested_days
          : requested_days // ignore: cast_nullable_to_non_nullable
              as int?,
      method_of_disbursement: freezed == method_of_disbursement
          ? _value.method_of_disbursement
          : method_of_disbursement // ignore: cast_nullable_to_non_nullable
              as int?,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      personal_id: null == personal_id
          ? _value.personal_id
          : personal_id // ignore: cast_nullable_to_non_nullable
              as String,
      document_number: null == document_number
          ? _value.document_number
          : document_number // ignore: cast_nullable_to_non_nullable
              as String,
      document_series: null == document_series
          ? _value.document_series
          : document_series // ignore: cast_nullable_to_non_nullable
              as String,
      mobile_phone: null == mobile_phone
          ? _value.mobile_phone
          : mobile_phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      date_of_birth: null == date_of_birth
          ? _value.date_of_birth
          : date_of_birth // ignore: cast_nullable_to_non_nullable
              as String,
      document_type: null == document_type
          ? _value.document_type
          : document_type // ignore: cast_nullable_to_non_nullable
              as String,
      issued_by: freezed == issued_by
          ? _value.issued_by
          : issued_by // ignore: cast_nullable_to_non_nullable
              as int?,
      issued_by_string: null == issued_by_string
          ? _value.issued_by_string
          : issued_by_string // ignore: cast_nullable_to_non_nullable
              as String,
      issuer_code: null == issuer_code
          ? _value.issuer_code
          : issuer_code // ignore: cast_nullable_to_non_nullable
              as String,
      date_issued: null == date_issued
          ? _value.date_issued
          : date_issued // ignore: cast_nullable_to_non_nullable
              as String,
      valid_until: null == valid_until
          ? _value.valid_until
          : valid_until // ignore: cast_nullable_to_non_nullable
              as String,
      birth_place: null == birth_place
          ? _value.birth_place
          : birth_place // ignore: cast_nullable_to_non_nullable
              as String,
      middle_name: null == middle_name
          ? _value.middle_name
          : middle_name // ignore: cast_nullable_to_non_nullable
              as String,
      region_registered: null == region_registered
          ? _value.region_registered
          : region_registered // ignore: cast_nullable_to_non_nullable
              as String,
      district_registered: null == district_registered
          ? _value.district_registered
          : district_registered // ignore: cast_nullable_to_non_nullable
              as String,
      city_registered: null == city_registered
          ? _value.city_registered
          : city_registered // ignore: cast_nullable_to_non_nullable
              as String,
      street_type_registered: null == street_type_registered
          ? _value.street_type_registered
          : street_type_registered // ignore: cast_nullable_to_non_nullable
              as String,
      street_registered: null == street_registered
          ? _value.street_registered
          : street_registered // ignore: cast_nullable_to_non_nullable
              as String,
      house_registered: null == house_registered
          ? _value.house_registered
          : house_registered // ignore: cast_nullable_to_non_nullable
              as String,
      housing_registered: null == housing_registered
          ? _value.housing_registered
          : housing_registered // ignore: cast_nullable_to_non_nullable
              as String,
      building_registered: null == building_registered
          ? _value.building_registered
          : building_registered // ignore: cast_nullable_to_non_nullable
              as String,
      apartment_registered: null == apartment_registered
          ? _value.apartment_registered
          : apartment_registered // ignore: cast_nullable_to_non_nullable
              as String,
      home_phone_registered: null == home_phone_registered
          ? _value.home_phone_registered
          : home_phone_registered // ignore: cast_nullable_to_non_nullable
              as String,
      contact_name_registered: null == contact_name_registered
          ? _value.contact_name_registered
          : contact_name_registered // ignore: cast_nullable_to_non_nullable
              as String,
      contact_type: freezed == contact_type
          ? _value.contact_type
          : contact_type // ignore: cast_nullable_to_non_nullable
              as int?,
      contact_type_id: freezed == contact_type_id
          ? _value.contact_type_id
          : contact_type_id // ignore: cast_nullable_to_non_nullable
              as IdLabelValue?,
      contact_phone_registered: null == contact_phone_registered
          ? _value.contact_phone_registered
          : contact_phone_registered // ignore: cast_nullable_to_non_nullable
              as String,
      contact_phone: null == contact_phone
          ? _value.contact_phone
          : contact_phone // ignore: cast_nullable_to_non_nullable
              as String,
      length_of_stay_registered: null == length_of_stay_registered
          ? _value.length_of_stay_registered
          : length_of_stay_registered // ignore: cast_nullable_to_non_nullable
              as String,
      template_address_registered: null == template_address_registered
          ? _value.template_address_registered
          : template_address_registered // ignore: cast_nullable_to_non_nullable
              as String,
      region_actual: null == region_actual
          ? _value.region_actual
          : region_actual // ignore: cast_nullable_to_non_nullable
              as String,
      district_actual: null == district_actual
          ? _value.district_actual
          : district_actual // ignore: cast_nullable_to_non_nullable
              as String,
      city_actual: null == city_actual
          ? _value.city_actual
          : city_actual // ignore: cast_nullable_to_non_nullable
              as String,
      street_type_actual: null == street_type_actual
          ? _value.street_type_actual
          : street_type_actual // ignore: cast_nullable_to_non_nullable
              as String,
      street_actual: null == street_actual
          ? _value.street_actual
          : street_actual // ignore: cast_nullable_to_non_nullable
              as String,
      house_actual: null == house_actual
          ? _value.house_actual
          : house_actual // ignore: cast_nullable_to_non_nullable
              as String,
      housing_actual: null == housing_actual
          ? _value.housing_actual
          : housing_actual // ignore: cast_nullable_to_non_nullable
              as String,
      building_actual: null == building_actual
          ? _value.building_actual
          : building_actual // ignore: cast_nullable_to_non_nullable
              as String,
      apartment_actual: null == apartment_actual
          ? _value.apartment_actual
          : apartment_actual // ignore: cast_nullable_to_non_nullable
              as String,
      home_phone_actual: null == home_phone_actual
          ? _value.home_phone_actual
          : home_phone_actual // ignore: cast_nullable_to_non_nullable
              as String,
      length_of_stay_actual: null == length_of_stay_actual
          ? _value.length_of_stay_actual
          : length_of_stay_actual // ignore: cast_nullable_to_non_nullable
              as String,
      template_address_actual: null == template_address_actual
          ? _value.template_address_actual
          : template_address_actual // ignore: cast_nullable_to_non_nullable
              as String,
      education: null == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String,
      education_id: freezed == education_id
          ? _value.education_id
          : education_id // ignore: cast_nullable_to_non_nullable
              as IdLabelValue?,
      monthly_income: freezed == monthly_income
          ? _value.monthly_income
          : monthly_income // ignore: cast_nullable_to_non_nullable
              as num?,
      monthly_outcome: freezed == monthly_outcome
          ? _value.monthly_outcome
          : monthly_outcome // ignore: cast_nullable_to_non_nullable
              as num?,
      employer: null == employer
          ? _value.employer
          : employer // ignore: cast_nullable_to_non_nullable
              as String,
      employer_address: null == employer_address
          ? _value.employer_address
          : employer_address // ignore: cast_nullable_to_non_nullable
              as String,
      employer_phone: null == employer_phone
          ? _value.employer_phone
          : employer_phone // ignore: cast_nullable_to_non_nullable
              as String,
      employer_activity: freezed == employer_activity
          ? _value.employer_activity
          : employer_activity // ignore: cast_nullable_to_non_nullable
              as int?,
      job_employer_activity: freezed == job_employer_activity
          ? _value.job_employer_activity
          : job_employer_activity // ignore: cast_nullable_to_non_nullable
              as IdLabelValue?,
      employer_amount_workers: freezed == employer_amount_workers
          ? _value.employer_amount_workers
          : employer_amount_workers // ignore: cast_nullable_to_non_nullable
              as int?,
      job_employer_amount_workers: freezed == job_employer_amount_workers
          ? _value.job_employer_amount_workers
          : job_employer_amount_workers // ignore: cast_nullable_to_non_nullable
              as IdLabelValue?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
      job_position: freezed == job_position
          ? _value.job_position
          : job_position // ignore: cast_nullable_to_non_nullable
              as IdLabelValue?,
      position_type: freezed == position_type
          ? _value.position_type
          : position_type // ignore: cast_nullable_to_non_nullable
              as int?,
      job_position_type: freezed == job_position_type
          ? _value.job_position_type
          : job_position_type // ignore: cast_nullable_to_non_nullable
              as IdLabelValue?,
      work_phone: null == work_phone
          ? _value.work_phone
          : work_phone // ignore: cast_nullable_to_non_nullable
              as String,
      internal_phone: null == internal_phone
          ? _value.internal_phone
          : internal_phone // ignore: cast_nullable_to_non_nullable
              as String,
      next_salary_date: null == next_salary_date
          ? _value.next_salary_date
          : next_salary_date // ignore: cast_nullable_to_non_nullable
              as String,
      work_experience_last: null == work_experience_last
          ? _value.work_experience_last
          : work_experience_last // ignore: cast_nullable_to_non_nullable
              as String,
      work_experience_total: null == work_experience_total
          ? _value.work_experience_total
          : work_experience_total // ignore: cast_nullable_to_non_nullable
              as String,
      real_estate: null == real_estate
          ? _value.real_estate
          : real_estate // ignore: cast_nullable_to_non_nullable
              as String,
      marital_status: freezed == marital_status
          ? _value.marital_status
          : marital_status // ignore: cast_nullable_to_non_nullable
              as int?,
      marital_status_id: freezed == marital_status_id
          ? _value.marital_status_id
          : marital_status_id // ignore: cast_nullable_to_non_nullable
              as IdLabelValue?,
      number_of_children: freezed == number_of_children
          ? _value.number_of_children
          : number_of_children // ignore: cast_nullable_to_non_nullable
              as int?,
      number_of_children_id: freezed == number_of_children_id
          ? _value.number_of_children_id
          : number_of_children_id // ignore: cast_nullable_to_non_nullable
              as IdLabelValue?,
      loans_before: null == loans_before
          ? _value.loans_before
          : loans_before // ignore: cast_nullable_to_non_nullable
              as String,
      loans_before_amount: null == loans_before_amount
          ? _value.loans_before_amount
          : loans_before_amount // ignore: cast_nullable_to_non_nullable
              as String,
      loans_before_bank_name: null == loans_before_bank_name
          ? _value.loans_before_bank_name
          : loans_before_bank_name // ignore: cast_nullable_to_non_nullable
              as String,
      monthly_expenses_on_loans: null == monthly_expenses_on_loans
          ? _value.monthly_expenses_on_loans
          : monthly_expenses_on_loans // ignore: cast_nullable_to_non_nullable
              as String,
      loans_current_bank_name: null == loans_current_bank_name
          ? _value.loans_current_bank_name
          : loans_current_bank_name // ignore: cast_nullable_to_non_nullable
              as String,
      credit_card_limit: null == credit_card_limit
          ? _value.credit_card_limit
          : credit_card_limit // ignore: cast_nullable_to_non_nullable
              as String,
      requested_product: null == requested_product
          ? _value.requested_product
          : requested_product // ignore: cast_nullable_to_non_nullable
              as String,
      employment_type: null == employment_type
          ? _value.employment_type
          : employment_type // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      car_type: null == car_type
          ? _value.car_type
          : car_type // ignore: cast_nullable_to_non_nullable
              as String,
      car_year: null == car_year
          ? _value.car_year
          : car_year // ignore: cast_nullable_to_non_nullable
              as String,
      car_number: null == car_number
          ? _value.car_number
          : car_number // ignore: cast_nullable_to_non_nullable
              as String,
      car_amount: freezed == car_amount
          ? _value.car_amount
          : car_amount // ignore: cast_nullable_to_non_nullable
              as int?,
      village_registered: null == village_registered
          ? _value.village_registered
          : village_registered // ignore: cast_nullable_to_non_nullable
              as String,
      village_actual: null == village_actual
          ? _value.village_actual
          : village_actual // ignore: cast_nullable_to_non_nullable
              as String,
      additional_income_source: null == additional_income_source
          ? _value.additional_income_source
          : additional_income_source // ignore: cast_nullable_to_non_nullable
              as String,
      family_income: null == family_income
          ? _value.family_income
          : family_income // ignore: cast_nullable_to_non_nullable
              as int,
      contact_name: null == contact_name
          ? _value.contact_name
          : contact_name // ignore: cast_nullable_to_non_nullable
              as String,
      contact_last_name: null == contact_last_name
          ? _value.contact_last_name
          : contact_last_name // ignore: cast_nullable_to_non_nullable
              as String,
      target_url: null == target_url
          ? _value.target_url
          : target_url // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      new_password: null == new_password
          ? _value.new_password
          : new_password // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
      postal_code_registered: null == postal_code_registered
          ? _value.postal_code_registered
          : postal_code_registered // ignore: cast_nullable_to_non_nullable
              as String,
      postal_code_actual: null == postal_code_actual
          ? _value.postal_code_actual
          : postal_code_actual // ignore: cast_nullable_to_non_nullable
              as String,
      finance_liabilities: freezed == finance_liabilities
          ? _value.finance_liabilities
          : finance_liabilities // ignore: cast_nullable_to_non_nullable
              as int?,
      finance_repayment_monthly_sum: freezed == finance_repayment_monthly_sum
          ? _value.finance_repayment_monthly_sum
          : finance_repayment_monthly_sum // ignore: cast_nullable_to_non_nullable
              as int?,
      finance_amount_unpaid_loans: freezed == finance_amount_unpaid_loans
          ? _value.finance_amount_unpaid_loans
          : finance_amount_unpaid_loans // ignore: cast_nullable_to_non_nullable
              as int?,
      finance_type_user_history: freezed == finance_type_user_history
          ? _value.finance_type_user_history
          : finance_type_user_history // ignore: cast_nullable_to_non_nullable
              as int?,
      finance_max_loan_sum: freezed == finance_max_loan_sum
          ? _value.finance_max_loan_sum
          : finance_max_loan_sum // ignore: cast_nullable_to_non_nullable
              as int?,
      finance_last_loan_sum: freezed == finance_last_loan_sum
          ? _value.finance_last_loan_sum
          : finance_last_loan_sum // ignore: cast_nullable_to_non_nullable
              as int?,
      university_name: null == university_name
          ? _value.university_name
          : university_name // ignore: cast_nullable_to_non_nullable
              as String,
      faculty: null == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as String,
      academic_degree: null == academic_degree
          ? _value.academic_degree
          : academic_degree // ignore: cast_nullable_to_non_nullable
              as String,
      academic_start_year: null == academic_start_year
          ? _value.academic_start_year
          : academic_start_year // ignore: cast_nullable_to_non_nullable
              as String,
      disability_group: null == disability_group
          ? _value.disability_group
          : disability_group // ignore: cast_nullable_to_non_nullable
              as String,
      activity_type: null == activity_type
          ? _value.activity_type
          : activity_type // ignore: cast_nullable_to_non_nullable
              as String,
      agis_project: null == agis_project
          ? _value.agis_project
          : agis_project // ignore: cast_nullable_to_non_nullable
              as String,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as String,
      ga_cid: null == ga_cid
          ? _value.ga_cid
          : ga_cid // ignore: cast_nullable_to_non_nullable
              as String,
      smartphone: null == smartphone
          ? _value.smartphone
          : smartphone // ignore: cast_nullable_to_non_nullable
              as String,
      motorbike: null == motorbike
          ? _value.motorbike
          : motorbike // ignore: cast_nullable_to_non_nullable
              as String,
      bank_account_transit_account: null == bank_account_transit_account
          ? _value.bank_account_transit_account
          : bank_account_transit_account // ignore: cast_nullable_to_non_nullable
              as String,
      bank_account_bank_name: null == bank_account_bank_name
          ? _value.bank_account_bank_name
          : bank_account_bank_name // ignore: cast_nullable_to_non_nullable
              as String,
      bank_account_bank_bic: null == bank_account_bank_bic
          ? _value.bank_account_bank_bic
          : bank_account_bank_bic // ignore: cast_nullable_to_non_nullable
              as String,
      bank_account_bank_tax_number: null == bank_account_bank_tax_number
          ? _value.bank_account_bank_tax_number
          : bank_account_bank_tax_number // ignore: cast_nullable_to_non_nullable
              as String,
      bank_account_number: null == bank_account_number
          ? _value.bank_account_number
          : bank_account_number // ignore: cast_nullable_to_non_nullable
              as String,
      moratorium_end_date: null == moratorium_end_date
          ? _value.moratorium_end_date
          : moratorium_end_date // ignore: cast_nullable_to_non_nullable
              as String,
      partner_url: null == partner_url
          ? _value.partner_url
          : partner_url // ignore: cast_nullable_to_non_nullable
              as String,
      okato_registered: null == okato_registered
          ? _value.okato_registered
          : okato_registered // ignore: cast_nullable_to_non_nullable
              as String,
      okato_actual: null == okato_actual
          ? _value.okato_actual
          : okato_actual // ignore: cast_nullable_to_non_nullable
              as String,
      fias_id_registered: null == fias_id_registered
          ? _value.fias_id_registered
          : fias_id_registered // ignore: cast_nullable_to_non_nullable
              as String,
      fias_id_actual: null == fias_id_actual
          ? _value.fias_id_actual
          : fias_id_actual // ignore: cast_nullable_to_non_nullable
              as String,
      terminalRepayment: freezed == terminalRepayment
          ? _value.terminalRepayment
          : terminalRepayment // ignore: cast_nullable_to_non_nullable
              as String?,
      pushNotificationAgree: freezed == pushNotificationAgree
          ? _value.pushNotificationAgree
          : pushNotificationAgree // ignore: cast_nullable_to_non_nullable
              as bool?,
      confirmationMethod: freezed == confirmationMethod
          ? _value.confirmationMethod
          : confirmationMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      allowedAccessToPersonalAccount: freezed == allowedAccessToPersonalAccount
          ? _value.allowedAccessToPersonalAccount
          : allowedAccessToPersonalAccount // ignore: cast_nullable_to_non_nullable
              as bool?,
      isStandardQuestionnaireFirst: freezed == isStandardQuestionnaireFirst
          ? _value.isStandardQuestionnaireFirst
          : isStandardQuestionnaireFirst // ignore: cast_nullable_to_non_nullable
              as bool?,
      isStandardQuestionnaireRepeated: freezed ==
              isStandardQuestionnaireRepeated
          ? _value.isStandardQuestionnaireRepeated
          : isStandardQuestionnaireRepeated // ignore: cast_nullable_to_non_nullable
              as bool?,
      isStandardPersonalAccountFirst: freezed == isStandardPersonalAccountFirst
          ? _value.isStandardPersonalAccountFirst
          : isStandardPersonalAccountFirst // ignore: cast_nullable_to_non_nullable
              as bool?,
      isStandardPersonalAccountRepeated: freezed ==
              isStandardPersonalAccountRepeated
          ? _value.isStandardPersonalAccountRepeated
          : isStandardPersonalAccountRepeated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IdLabelValueCopyWith<$Res>? get contact_type_id {
    if (_value.contact_type_id == null) {
      return null;
    }

    return $IdLabelValueCopyWith<$Res>(_value.contact_type_id!, (value) {
      return _then(_value.copyWith(contact_type_id: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IdLabelValueCopyWith<$Res>? get education_id {
    if (_value.education_id == null) {
      return null;
    }

    return $IdLabelValueCopyWith<$Res>(_value.education_id!, (value) {
      return _then(_value.copyWith(education_id: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IdLabelValueCopyWith<$Res>? get job_employer_activity {
    if (_value.job_employer_activity == null) {
      return null;
    }

    return $IdLabelValueCopyWith<$Res>(_value.job_employer_activity!, (value) {
      return _then(_value.copyWith(job_employer_activity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IdLabelValueCopyWith<$Res>? get job_employer_amount_workers {
    if (_value.job_employer_amount_workers == null) {
      return null;
    }

    return $IdLabelValueCopyWith<$Res>(_value.job_employer_amount_workers!,
        (value) {
      return _then(_value.copyWith(job_employer_amount_workers: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IdLabelValueCopyWith<$Res>? get job_position {
    if (_value.job_position == null) {
      return null;
    }

    return $IdLabelValueCopyWith<$Res>(_value.job_position!, (value) {
      return _then(_value.copyWith(job_position: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IdLabelValueCopyWith<$Res>? get job_position_type {
    if (_value.job_position_type == null) {
      return null;
    }

    return $IdLabelValueCopyWith<$Res>(_value.job_position_type!, (value) {
      return _then(_value.copyWith(job_position_type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IdLabelValueCopyWith<$Res>? get marital_status_id {
    if (_value.marital_status_id == null) {
      return null;
    }

    return $IdLabelValueCopyWith<$Res>(_value.marital_status_id!, (value) {
      return _then(_value.copyWith(marital_status_id: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IdLabelValueCopyWith<$Res>? get number_of_children_id {
    if (_value.number_of_children_id == null) {
      return null;
    }

    return $IdLabelValueCopyWith<$Res>(_value.number_of_children_id!, (value) {
      return _then(_value.copyWith(number_of_children_id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiUserInfoImplCopyWith<$Res>
    implements $ApiUserInfoCopyWith<$Res> {
  factory _$$ApiUserInfoImplCopyWith(
          _$ApiUserInfoImpl value, $Res Function(_$ApiUserInfoImpl) then) =
      __$$ApiUserInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? token,
      String? refresh_token,
      bool is_phone_confirmed,
      bool finance_is_bankruptcy,
      bool active_moratorium,
      bool soft_reject,
      bool hard_reject,
      bool in_black_list,
      bool esia_user,
      @JsonKey(name: 'first_loan') bool firstLoan,
      bool short_api,
      bool? is_esia_user,
      int? requested_amount,
      int? requested_days,
      int? method_of_disbursement,
      String first_name,
      String last_name,
      String personal_id,
      String document_number,
      String document_series,
      String mobile_phone,
      String email,
      String date_of_birth,
      String document_type,
      int? issued_by,
      String issued_by_string,
      String issuer_code,
      String date_issued,
      String valid_until,
      String birth_place,
      String middle_name,
      String region_registered,
      String district_registered,
      String city_registered,
      String street_type_registered,
      String street_registered,
      String house_registered,
      String housing_registered,
      String building_registered,
      String apartment_registered,
      String home_phone_registered,
      String contact_name_registered,
      int? contact_type,
      IdLabelValue? contact_type_id,
      String contact_phone_registered,
      String contact_phone,
      String length_of_stay_registered,
      String template_address_registered,
      String region_actual,
      String district_actual,
      String city_actual,
      String street_type_actual,
      String street_actual,
      String house_actual,
      String housing_actual,
      String building_actual,
      String apartment_actual,
      String home_phone_actual,
      String length_of_stay_actual,
      String template_address_actual,
      String education,
      IdLabelValue? education_id,
      num? monthly_income,
      num? monthly_outcome,
      String employer,
      String employer_address,
      String employer_phone,
      int? employer_activity,
      IdLabelValue? job_employer_activity,
      int? employer_amount_workers,
      IdLabelValue? job_employer_amount_workers,
      int? position,
      IdLabelValue? job_position,
      int? position_type,
      IdLabelValue? job_position_type,
      String work_phone,
      String internal_phone,
      String next_salary_date,
      String work_experience_last,
      String work_experience_total,
      String real_estate,
      int? marital_status,
      IdLabelValue? marital_status_id,
      int? number_of_children,
      IdLabelValue? number_of_children_id,
      String loans_before,
      String loans_before_amount,
      String loans_before_bank_name,
      String monthly_expenses_on_loans,
      String loans_current_bank_name,
      String credit_card_limit,
      String requested_product,
      String employment_type,
      String gender,
      String car_type,
      String car_year,
      String car_number,
      int? car_amount,
      String village_registered,
      String village_actual,
      String additional_income_source,
      int family_income,
      String contact_name,
      String contact_last_name,
      String target_url,
      String password,
      String new_password,
      String code,
      String lang,
      String postal_code_registered,
      String postal_code_actual,
      int? finance_liabilities,
      int? finance_repayment_monthly_sum,
      int? finance_amount_unpaid_loans,
      int? finance_type_user_history,
      int? finance_max_loan_sum,
      int? finance_last_loan_sum,
      String university_name,
      String faculty,
      String academic_degree,
      String academic_start_year,
      String disability_group,
      String activity_type,
      String agis_project,
      String step,
      String ga_cid,
      String smartphone,
      String motorbike,
      String bank_account_transit_account,
      String bank_account_bank_name,
      String bank_account_bank_bic,
      String bank_account_bank_tax_number,
      String bank_account_number,
      String moratorium_end_date,
      String partner_url,
      String okato_registered,
      String okato_actual,
      String fias_id_registered,
      String fias_id_actual,
      @JsonKey(name: 'terminal_repayment') String? terminalRepayment,
      @JsonKey(name: 'push_notification_agree') bool? pushNotificationAgree,
      @JsonKey(name: 'confirmation_method') String? confirmationMethod,
      @JsonKey(name: 'allowed_access_to_personal_account')
      bool? allowedAccessToPersonalAccount,
      @JsonKey(name: 'is_standard_questionnaire_first')
      bool? isStandardQuestionnaireFirst,
      @JsonKey(name: 'is_standard_questionnaire_repeated')
      bool? isStandardQuestionnaireRepeated,
      @JsonKey(name: 'is_standard_personal_account_first')
      bool? isStandardPersonalAccountFirst,
      @JsonKey(name: 'is_standard_personal_account_repeated')
      bool? isStandardPersonalAccountRepeated});

  @override
  $IdLabelValueCopyWith<$Res>? get contact_type_id;
  @override
  $IdLabelValueCopyWith<$Res>? get education_id;
  @override
  $IdLabelValueCopyWith<$Res>? get job_employer_activity;
  @override
  $IdLabelValueCopyWith<$Res>? get job_employer_amount_workers;
  @override
  $IdLabelValueCopyWith<$Res>? get job_position;
  @override
  $IdLabelValueCopyWith<$Res>? get job_position_type;
  @override
  $IdLabelValueCopyWith<$Res>? get marital_status_id;
  @override
  $IdLabelValueCopyWith<$Res>? get number_of_children_id;
}

/// @nodoc
class __$$ApiUserInfoImplCopyWithImpl<$Res>
    extends _$ApiUserInfoCopyWithImpl<$Res, _$ApiUserInfoImpl>
    implements _$$ApiUserInfoImplCopyWith<$Res> {
  __$$ApiUserInfoImplCopyWithImpl(
      _$ApiUserInfoImpl _value, $Res Function(_$ApiUserInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? token = freezed,
    Object? refresh_token = freezed,
    Object? is_phone_confirmed = null,
    Object? finance_is_bankruptcy = null,
    Object? active_moratorium = null,
    Object? soft_reject = null,
    Object? hard_reject = null,
    Object? in_black_list = null,
    Object? esia_user = null,
    Object? firstLoan = null,
    Object? short_api = null,
    Object? is_esia_user = freezed,
    Object? requested_amount = freezed,
    Object? requested_days = freezed,
    Object? method_of_disbursement = freezed,
    Object? first_name = null,
    Object? last_name = null,
    Object? personal_id = null,
    Object? document_number = null,
    Object? document_series = null,
    Object? mobile_phone = null,
    Object? email = null,
    Object? date_of_birth = null,
    Object? document_type = null,
    Object? issued_by = freezed,
    Object? issued_by_string = null,
    Object? issuer_code = null,
    Object? date_issued = null,
    Object? valid_until = null,
    Object? birth_place = null,
    Object? middle_name = null,
    Object? region_registered = null,
    Object? district_registered = null,
    Object? city_registered = null,
    Object? street_type_registered = null,
    Object? street_registered = null,
    Object? house_registered = null,
    Object? housing_registered = null,
    Object? building_registered = null,
    Object? apartment_registered = null,
    Object? home_phone_registered = null,
    Object? contact_name_registered = null,
    Object? contact_type = freezed,
    Object? contact_type_id = freezed,
    Object? contact_phone_registered = null,
    Object? contact_phone = null,
    Object? length_of_stay_registered = null,
    Object? template_address_registered = null,
    Object? region_actual = null,
    Object? district_actual = null,
    Object? city_actual = null,
    Object? street_type_actual = null,
    Object? street_actual = null,
    Object? house_actual = null,
    Object? housing_actual = null,
    Object? building_actual = null,
    Object? apartment_actual = null,
    Object? home_phone_actual = null,
    Object? length_of_stay_actual = null,
    Object? template_address_actual = null,
    Object? education = null,
    Object? education_id = freezed,
    Object? monthly_income = freezed,
    Object? monthly_outcome = freezed,
    Object? employer = null,
    Object? employer_address = null,
    Object? employer_phone = null,
    Object? employer_activity = freezed,
    Object? job_employer_activity = freezed,
    Object? employer_amount_workers = freezed,
    Object? job_employer_amount_workers = freezed,
    Object? position = freezed,
    Object? job_position = freezed,
    Object? position_type = freezed,
    Object? job_position_type = freezed,
    Object? work_phone = null,
    Object? internal_phone = null,
    Object? next_salary_date = null,
    Object? work_experience_last = null,
    Object? work_experience_total = null,
    Object? real_estate = null,
    Object? marital_status = freezed,
    Object? marital_status_id = freezed,
    Object? number_of_children = freezed,
    Object? number_of_children_id = freezed,
    Object? loans_before = null,
    Object? loans_before_amount = null,
    Object? loans_before_bank_name = null,
    Object? monthly_expenses_on_loans = null,
    Object? loans_current_bank_name = null,
    Object? credit_card_limit = null,
    Object? requested_product = null,
    Object? employment_type = null,
    Object? gender = null,
    Object? car_type = null,
    Object? car_year = null,
    Object? car_number = null,
    Object? car_amount = freezed,
    Object? village_registered = null,
    Object? village_actual = null,
    Object? additional_income_source = null,
    Object? family_income = null,
    Object? contact_name = null,
    Object? contact_last_name = null,
    Object? target_url = null,
    Object? password = null,
    Object? new_password = null,
    Object? code = null,
    Object? lang = null,
    Object? postal_code_registered = null,
    Object? postal_code_actual = null,
    Object? finance_liabilities = freezed,
    Object? finance_repayment_monthly_sum = freezed,
    Object? finance_amount_unpaid_loans = freezed,
    Object? finance_type_user_history = freezed,
    Object? finance_max_loan_sum = freezed,
    Object? finance_last_loan_sum = freezed,
    Object? university_name = null,
    Object? faculty = null,
    Object? academic_degree = null,
    Object? academic_start_year = null,
    Object? disability_group = null,
    Object? activity_type = null,
    Object? agis_project = null,
    Object? step = null,
    Object? ga_cid = null,
    Object? smartphone = null,
    Object? motorbike = null,
    Object? bank_account_transit_account = null,
    Object? bank_account_bank_name = null,
    Object? bank_account_bank_bic = null,
    Object? bank_account_bank_tax_number = null,
    Object? bank_account_number = null,
    Object? moratorium_end_date = null,
    Object? partner_url = null,
    Object? okato_registered = null,
    Object? okato_actual = null,
    Object? fias_id_registered = null,
    Object? fias_id_actual = null,
    Object? terminalRepayment = freezed,
    Object? pushNotificationAgree = freezed,
    Object? confirmationMethod = freezed,
    Object? allowedAccessToPersonalAccount = freezed,
    Object? isStandardQuestionnaireFirst = freezed,
    Object? isStandardQuestionnaireRepeated = freezed,
    Object? isStandardPersonalAccountFirst = freezed,
    Object? isStandardPersonalAccountRepeated = freezed,
  }) {
    return _then(_$ApiUserInfoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refresh_token: freezed == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String?,
      is_phone_confirmed: null == is_phone_confirmed
          ? _value.is_phone_confirmed
          : is_phone_confirmed // ignore: cast_nullable_to_non_nullable
              as bool,
      finance_is_bankruptcy: null == finance_is_bankruptcy
          ? _value.finance_is_bankruptcy
          : finance_is_bankruptcy // ignore: cast_nullable_to_non_nullable
              as bool,
      active_moratorium: null == active_moratorium
          ? _value.active_moratorium
          : active_moratorium // ignore: cast_nullable_to_non_nullable
              as bool,
      soft_reject: null == soft_reject
          ? _value.soft_reject
          : soft_reject // ignore: cast_nullable_to_non_nullable
              as bool,
      hard_reject: null == hard_reject
          ? _value.hard_reject
          : hard_reject // ignore: cast_nullable_to_non_nullable
              as bool,
      in_black_list: null == in_black_list
          ? _value.in_black_list
          : in_black_list // ignore: cast_nullable_to_non_nullable
              as bool,
      esia_user: null == esia_user
          ? _value.esia_user
          : esia_user // ignore: cast_nullable_to_non_nullable
              as bool,
      firstLoan: null == firstLoan
          ? _value.firstLoan
          : firstLoan // ignore: cast_nullable_to_non_nullable
              as bool,
      short_api: null == short_api
          ? _value.short_api
          : short_api // ignore: cast_nullable_to_non_nullable
              as bool,
      is_esia_user: freezed == is_esia_user
          ? _value.is_esia_user
          : is_esia_user // ignore: cast_nullable_to_non_nullable
              as bool?,
      requested_amount: freezed == requested_amount
          ? _value.requested_amount
          : requested_amount // ignore: cast_nullable_to_non_nullable
              as int?,
      requested_days: freezed == requested_days
          ? _value.requested_days
          : requested_days // ignore: cast_nullable_to_non_nullable
              as int?,
      method_of_disbursement: freezed == method_of_disbursement
          ? _value.method_of_disbursement
          : method_of_disbursement // ignore: cast_nullable_to_non_nullable
              as int?,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      personal_id: null == personal_id
          ? _value.personal_id
          : personal_id // ignore: cast_nullable_to_non_nullable
              as String,
      document_number: null == document_number
          ? _value.document_number
          : document_number // ignore: cast_nullable_to_non_nullable
              as String,
      document_series: null == document_series
          ? _value.document_series
          : document_series // ignore: cast_nullable_to_non_nullable
              as String,
      mobile_phone: null == mobile_phone
          ? _value.mobile_phone
          : mobile_phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      date_of_birth: null == date_of_birth
          ? _value.date_of_birth
          : date_of_birth // ignore: cast_nullable_to_non_nullable
              as String,
      document_type: null == document_type
          ? _value.document_type
          : document_type // ignore: cast_nullable_to_non_nullable
              as String,
      issued_by: freezed == issued_by
          ? _value.issued_by
          : issued_by // ignore: cast_nullable_to_non_nullable
              as int?,
      issued_by_string: null == issued_by_string
          ? _value.issued_by_string
          : issued_by_string // ignore: cast_nullable_to_non_nullable
              as String,
      issuer_code: null == issuer_code
          ? _value.issuer_code
          : issuer_code // ignore: cast_nullable_to_non_nullable
              as String,
      date_issued: null == date_issued
          ? _value.date_issued
          : date_issued // ignore: cast_nullable_to_non_nullable
              as String,
      valid_until: null == valid_until
          ? _value.valid_until
          : valid_until // ignore: cast_nullable_to_non_nullable
              as String,
      birth_place: null == birth_place
          ? _value.birth_place
          : birth_place // ignore: cast_nullable_to_non_nullable
              as String,
      middle_name: null == middle_name
          ? _value.middle_name
          : middle_name // ignore: cast_nullable_to_non_nullable
              as String,
      region_registered: null == region_registered
          ? _value.region_registered
          : region_registered // ignore: cast_nullable_to_non_nullable
              as String,
      district_registered: null == district_registered
          ? _value.district_registered
          : district_registered // ignore: cast_nullable_to_non_nullable
              as String,
      city_registered: null == city_registered
          ? _value.city_registered
          : city_registered // ignore: cast_nullable_to_non_nullable
              as String,
      street_type_registered: null == street_type_registered
          ? _value.street_type_registered
          : street_type_registered // ignore: cast_nullable_to_non_nullable
              as String,
      street_registered: null == street_registered
          ? _value.street_registered
          : street_registered // ignore: cast_nullable_to_non_nullable
              as String,
      house_registered: null == house_registered
          ? _value.house_registered
          : house_registered // ignore: cast_nullable_to_non_nullable
              as String,
      housing_registered: null == housing_registered
          ? _value.housing_registered
          : housing_registered // ignore: cast_nullable_to_non_nullable
              as String,
      building_registered: null == building_registered
          ? _value.building_registered
          : building_registered // ignore: cast_nullable_to_non_nullable
              as String,
      apartment_registered: null == apartment_registered
          ? _value.apartment_registered
          : apartment_registered // ignore: cast_nullable_to_non_nullable
              as String,
      home_phone_registered: null == home_phone_registered
          ? _value.home_phone_registered
          : home_phone_registered // ignore: cast_nullable_to_non_nullable
              as String,
      contact_name_registered: null == contact_name_registered
          ? _value.contact_name_registered
          : contact_name_registered // ignore: cast_nullable_to_non_nullable
              as String,
      contact_type: freezed == contact_type
          ? _value.contact_type
          : contact_type // ignore: cast_nullable_to_non_nullable
              as int?,
      contact_type_id: freezed == contact_type_id
          ? _value.contact_type_id
          : contact_type_id // ignore: cast_nullable_to_non_nullable
              as IdLabelValue?,
      contact_phone_registered: null == contact_phone_registered
          ? _value.contact_phone_registered
          : contact_phone_registered // ignore: cast_nullable_to_non_nullable
              as String,
      contact_phone: null == contact_phone
          ? _value.contact_phone
          : contact_phone // ignore: cast_nullable_to_non_nullable
              as String,
      length_of_stay_registered: null == length_of_stay_registered
          ? _value.length_of_stay_registered
          : length_of_stay_registered // ignore: cast_nullable_to_non_nullable
              as String,
      template_address_registered: null == template_address_registered
          ? _value.template_address_registered
          : template_address_registered // ignore: cast_nullable_to_non_nullable
              as String,
      region_actual: null == region_actual
          ? _value.region_actual
          : region_actual // ignore: cast_nullable_to_non_nullable
              as String,
      district_actual: null == district_actual
          ? _value.district_actual
          : district_actual // ignore: cast_nullable_to_non_nullable
              as String,
      city_actual: null == city_actual
          ? _value.city_actual
          : city_actual // ignore: cast_nullable_to_non_nullable
              as String,
      street_type_actual: null == street_type_actual
          ? _value.street_type_actual
          : street_type_actual // ignore: cast_nullable_to_non_nullable
              as String,
      street_actual: null == street_actual
          ? _value.street_actual
          : street_actual // ignore: cast_nullable_to_non_nullable
              as String,
      house_actual: null == house_actual
          ? _value.house_actual
          : house_actual // ignore: cast_nullable_to_non_nullable
              as String,
      housing_actual: null == housing_actual
          ? _value.housing_actual
          : housing_actual // ignore: cast_nullable_to_non_nullable
              as String,
      building_actual: null == building_actual
          ? _value.building_actual
          : building_actual // ignore: cast_nullable_to_non_nullable
              as String,
      apartment_actual: null == apartment_actual
          ? _value.apartment_actual
          : apartment_actual // ignore: cast_nullable_to_non_nullable
              as String,
      home_phone_actual: null == home_phone_actual
          ? _value.home_phone_actual
          : home_phone_actual // ignore: cast_nullable_to_non_nullable
              as String,
      length_of_stay_actual: null == length_of_stay_actual
          ? _value.length_of_stay_actual
          : length_of_stay_actual // ignore: cast_nullable_to_non_nullable
              as String,
      template_address_actual: null == template_address_actual
          ? _value.template_address_actual
          : template_address_actual // ignore: cast_nullable_to_non_nullable
              as String,
      education: null == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String,
      education_id: freezed == education_id
          ? _value.education_id
          : education_id // ignore: cast_nullable_to_non_nullable
              as IdLabelValue?,
      monthly_income: freezed == monthly_income
          ? _value.monthly_income
          : monthly_income // ignore: cast_nullable_to_non_nullable
              as num?,
      monthly_outcome: freezed == monthly_outcome
          ? _value.monthly_outcome
          : monthly_outcome // ignore: cast_nullable_to_non_nullable
              as num?,
      employer: null == employer
          ? _value.employer
          : employer // ignore: cast_nullable_to_non_nullable
              as String,
      employer_address: null == employer_address
          ? _value.employer_address
          : employer_address // ignore: cast_nullable_to_non_nullable
              as String,
      employer_phone: null == employer_phone
          ? _value.employer_phone
          : employer_phone // ignore: cast_nullable_to_non_nullable
              as String,
      employer_activity: freezed == employer_activity
          ? _value.employer_activity
          : employer_activity // ignore: cast_nullable_to_non_nullable
              as int?,
      job_employer_activity: freezed == job_employer_activity
          ? _value.job_employer_activity
          : job_employer_activity // ignore: cast_nullable_to_non_nullable
              as IdLabelValue?,
      employer_amount_workers: freezed == employer_amount_workers
          ? _value.employer_amount_workers
          : employer_amount_workers // ignore: cast_nullable_to_non_nullable
              as int?,
      job_employer_amount_workers: freezed == job_employer_amount_workers
          ? _value.job_employer_amount_workers
          : job_employer_amount_workers // ignore: cast_nullable_to_non_nullable
              as IdLabelValue?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
      job_position: freezed == job_position
          ? _value.job_position
          : job_position // ignore: cast_nullable_to_non_nullable
              as IdLabelValue?,
      position_type: freezed == position_type
          ? _value.position_type
          : position_type // ignore: cast_nullable_to_non_nullable
              as int?,
      job_position_type: freezed == job_position_type
          ? _value.job_position_type
          : job_position_type // ignore: cast_nullable_to_non_nullable
              as IdLabelValue?,
      work_phone: null == work_phone
          ? _value.work_phone
          : work_phone // ignore: cast_nullable_to_non_nullable
              as String,
      internal_phone: null == internal_phone
          ? _value.internal_phone
          : internal_phone // ignore: cast_nullable_to_non_nullable
              as String,
      next_salary_date: null == next_salary_date
          ? _value.next_salary_date
          : next_salary_date // ignore: cast_nullable_to_non_nullable
              as String,
      work_experience_last: null == work_experience_last
          ? _value.work_experience_last
          : work_experience_last // ignore: cast_nullable_to_non_nullable
              as String,
      work_experience_total: null == work_experience_total
          ? _value.work_experience_total
          : work_experience_total // ignore: cast_nullable_to_non_nullable
              as String,
      real_estate: null == real_estate
          ? _value.real_estate
          : real_estate // ignore: cast_nullable_to_non_nullable
              as String,
      marital_status: freezed == marital_status
          ? _value.marital_status
          : marital_status // ignore: cast_nullable_to_non_nullable
              as int?,
      marital_status_id: freezed == marital_status_id
          ? _value.marital_status_id
          : marital_status_id // ignore: cast_nullable_to_non_nullable
              as IdLabelValue?,
      number_of_children: freezed == number_of_children
          ? _value.number_of_children
          : number_of_children // ignore: cast_nullable_to_non_nullable
              as int?,
      number_of_children_id: freezed == number_of_children_id
          ? _value.number_of_children_id
          : number_of_children_id // ignore: cast_nullable_to_non_nullable
              as IdLabelValue?,
      loans_before: null == loans_before
          ? _value.loans_before
          : loans_before // ignore: cast_nullable_to_non_nullable
              as String,
      loans_before_amount: null == loans_before_amount
          ? _value.loans_before_amount
          : loans_before_amount // ignore: cast_nullable_to_non_nullable
              as String,
      loans_before_bank_name: null == loans_before_bank_name
          ? _value.loans_before_bank_name
          : loans_before_bank_name // ignore: cast_nullable_to_non_nullable
              as String,
      monthly_expenses_on_loans: null == monthly_expenses_on_loans
          ? _value.monthly_expenses_on_loans
          : monthly_expenses_on_loans // ignore: cast_nullable_to_non_nullable
              as String,
      loans_current_bank_name: null == loans_current_bank_name
          ? _value.loans_current_bank_name
          : loans_current_bank_name // ignore: cast_nullable_to_non_nullable
              as String,
      credit_card_limit: null == credit_card_limit
          ? _value.credit_card_limit
          : credit_card_limit // ignore: cast_nullable_to_non_nullable
              as String,
      requested_product: null == requested_product
          ? _value.requested_product
          : requested_product // ignore: cast_nullable_to_non_nullable
              as String,
      employment_type: null == employment_type
          ? _value.employment_type
          : employment_type // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      car_type: null == car_type
          ? _value.car_type
          : car_type // ignore: cast_nullable_to_non_nullable
              as String,
      car_year: null == car_year
          ? _value.car_year
          : car_year // ignore: cast_nullable_to_non_nullable
              as String,
      car_number: null == car_number
          ? _value.car_number
          : car_number // ignore: cast_nullable_to_non_nullable
              as String,
      car_amount: freezed == car_amount
          ? _value.car_amount
          : car_amount // ignore: cast_nullable_to_non_nullable
              as int?,
      village_registered: null == village_registered
          ? _value.village_registered
          : village_registered // ignore: cast_nullable_to_non_nullable
              as String,
      village_actual: null == village_actual
          ? _value.village_actual
          : village_actual // ignore: cast_nullable_to_non_nullable
              as String,
      additional_income_source: null == additional_income_source
          ? _value.additional_income_source
          : additional_income_source // ignore: cast_nullable_to_non_nullable
              as String,
      family_income: null == family_income
          ? _value.family_income
          : family_income // ignore: cast_nullable_to_non_nullable
              as int,
      contact_name: null == contact_name
          ? _value.contact_name
          : contact_name // ignore: cast_nullable_to_non_nullable
              as String,
      contact_last_name: null == contact_last_name
          ? _value.contact_last_name
          : contact_last_name // ignore: cast_nullable_to_non_nullable
              as String,
      target_url: null == target_url
          ? _value.target_url
          : target_url // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      new_password: null == new_password
          ? _value.new_password
          : new_password // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
      postal_code_registered: null == postal_code_registered
          ? _value.postal_code_registered
          : postal_code_registered // ignore: cast_nullable_to_non_nullable
              as String,
      postal_code_actual: null == postal_code_actual
          ? _value.postal_code_actual
          : postal_code_actual // ignore: cast_nullable_to_non_nullable
              as String,
      finance_liabilities: freezed == finance_liabilities
          ? _value.finance_liabilities
          : finance_liabilities // ignore: cast_nullable_to_non_nullable
              as int?,
      finance_repayment_monthly_sum: freezed == finance_repayment_monthly_sum
          ? _value.finance_repayment_monthly_sum
          : finance_repayment_monthly_sum // ignore: cast_nullable_to_non_nullable
              as int?,
      finance_amount_unpaid_loans: freezed == finance_amount_unpaid_loans
          ? _value.finance_amount_unpaid_loans
          : finance_amount_unpaid_loans // ignore: cast_nullable_to_non_nullable
              as int?,
      finance_type_user_history: freezed == finance_type_user_history
          ? _value.finance_type_user_history
          : finance_type_user_history // ignore: cast_nullable_to_non_nullable
              as int?,
      finance_max_loan_sum: freezed == finance_max_loan_sum
          ? _value.finance_max_loan_sum
          : finance_max_loan_sum // ignore: cast_nullable_to_non_nullable
              as int?,
      finance_last_loan_sum: freezed == finance_last_loan_sum
          ? _value.finance_last_loan_sum
          : finance_last_loan_sum // ignore: cast_nullable_to_non_nullable
              as int?,
      university_name: null == university_name
          ? _value.university_name
          : university_name // ignore: cast_nullable_to_non_nullable
              as String,
      faculty: null == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as String,
      academic_degree: null == academic_degree
          ? _value.academic_degree
          : academic_degree // ignore: cast_nullable_to_non_nullable
              as String,
      academic_start_year: null == academic_start_year
          ? _value.academic_start_year
          : academic_start_year // ignore: cast_nullable_to_non_nullable
              as String,
      disability_group: null == disability_group
          ? _value.disability_group
          : disability_group // ignore: cast_nullable_to_non_nullable
              as String,
      activity_type: null == activity_type
          ? _value.activity_type
          : activity_type // ignore: cast_nullable_to_non_nullable
              as String,
      agis_project: null == agis_project
          ? _value.agis_project
          : agis_project // ignore: cast_nullable_to_non_nullable
              as String,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as String,
      ga_cid: null == ga_cid
          ? _value.ga_cid
          : ga_cid // ignore: cast_nullable_to_non_nullable
              as String,
      smartphone: null == smartphone
          ? _value.smartphone
          : smartphone // ignore: cast_nullable_to_non_nullable
              as String,
      motorbike: null == motorbike
          ? _value.motorbike
          : motorbike // ignore: cast_nullable_to_non_nullable
              as String,
      bank_account_transit_account: null == bank_account_transit_account
          ? _value.bank_account_transit_account
          : bank_account_transit_account // ignore: cast_nullable_to_non_nullable
              as String,
      bank_account_bank_name: null == bank_account_bank_name
          ? _value.bank_account_bank_name
          : bank_account_bank_name // ignore: cast_nullable_to_non_nullable
              as String,
      bank_account_bank_bic: null == bank_account_bank_bic
          ? _value.bank_account_bank_bic
          : bank_account_bank_bic // ignore: cast_nullable_to_non_nullable
              as String,
      bank_account_bank_tax_number: null == bank_account_bank_tax_number
          ? _value.bank_account_bank_tax_number
          : bank_account_bank_tax_number // ignore: cast_nullable_to_non_nullable
              as String,
      bank_account_number: null == bank_account_number
          ? _value.bank_account_number
          : bank_account_number // ignore: cast_nullable_to_non_nullable
              as String,
      moratorium_end_date: null == moratorium_end_date
          ? _value.moratorium_end_date
          : moratorium_end_date // ignore: cast_nullable_to_non_nullable
              as String,
      partner_url: null == partner_url
          ? _value.partner_url
          : partner_url // ignore: cast_nullable_to_non_nullable
              as String,
      okato_registered: null == okato_registered
          ? _value.okato_registered
          : okato_registered // ignore: cast_nullable_to_non_nullable
              as String,
      okato_actual: null == okato_actual
          ? _value.okato_actual
          : okato_actual // ignore: cast_nullable_to_non_nullable
              as String,
      fias_id_registered: null == fias_id_registered
          ? _value.fias_id_registered
          : fias_id_registered // ignore: cast_nullable_to_non_nullable
              as String,
      fias_id_actual: null == fias_id_actual
          ? _value.fias_id_actual
          : fias_id_actual // ignore: cast_nullable_to_non_nullable
              as String,
      terminalRepayment: freezed == terminalRepayment
          ? _value.terminalRepayment
          : terminalRepayment // ignore: cast_nullable_to_non_nullable
              as String?,
      pushNotificationAgree: freezed == pushNotificationAgree
          ? _value.pushNotificationAgree
          : pushNotificationAgree // ignore: cast_nullable_to_non_nullable
              as bool?,
      confirmationMethod: freezed == confirmationMethod
          ? _value.confirmationMethod
          : confirmationMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      allowedAccessToPersonalAccount: freezed == allowedAccessToPersonalAccount
          ? _value.allowedAccessToPersonalAccount
          : allowedAccessToPersonalAccount // ignore: cast_nullable_to_non_nullable
              as bool?,
      isStandardQuestionnaireFirst: freezed == isStandardQuestionnaireFirst
          ? _value.isStandardQuestionnaireFirst
          : isStandardQuestionnaireFirst // ignore: cast_nullable_to_non_nullable
              as bool?,
      isStandardQuestionnaireRepeated: freezed ==
              isStandardQuestionnaireRepeated
          ? _value.isStandardQuestionnaireRepeated
          : isStandardQuestionnaireRepeated // ignore: cast_nullable_to_non_nullable
              as bool?,
      isStandardPersonalAccountFirst: freezed == isStandardPersonalAccountFirst
          ? _value.isStandardPersonalAccountFirst
          : isStandardPersonalAccountFirst // ignore: cast_nullable_to_non_nullable
              as bool?,
      isStandardPersonalAccountRepeated: freezed ==
              isStandardPersonalAccountRepeated
          ? _value.isStandardPersonalAccountRepeated
          : isStandardPersonalAccountRepeated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiUserInfoImpl extends _ApiUserInfo {
  const _$ApiUserInfoImpl(
      {this.id,
      this.token,
      this.refresh_token,
      this.is_phone_confirmed = false,
      this.finance_is_bankruptcy = false,
      this.active_moratorium = false,
      this.soft_reject = false,
      this.hard_reject = false,
      this.in_black_list = false,
      this.esia_user = false,
      @JsonKey(name: 'first_loan') this.firstLoan = false,
      this.short_api = false,
      this.is_esia_user,
      this.requested_amount,
      this.requested_days,
      this.method_of_disbursement,
      this.first_name = '',
      this.last_name = '',
      this.personal_id = '',
      this.document_number = '',
      this.document_series = '',
      this.mobile_phone = '',
      this.email = '',
      this.date_of_birth = '',
      this.document_type = '',
      this.issued_by,
      this.issued_by_string = '',
      this.issuer_code = '',
      this.date_issued = '',
      this.valid_until = '',
      this.birth_place = '',
      this.middle_name = '',
      this.region_registered = '',
      this.district_registered = '',
      this.city_registered = '',
      this.street_type_registered = '',
      this.street_registered = '',
      this.house_registered = '',
      this.housing_registered = '',
      this.building_registered = '',
      this.apartment_registered = '',
      this.home_phone_registered = '',
      this.contact_name_registered = '',
      this.contact_type,
      this.contact_type_id,
      this.contact_phone_registered = '',
      this.contact_phone = '',
      this.length_of_stay_registered = '',
      this.template_address_registered = '',
      this.region_actual = '',
      this.district_actual = '',
      this.city_actual = '',
      this.street_type_actual = '',
      this.street_actual = '',
      this.house_actual = '',
      this.housing_actual = '',
      this.building_actual = '',
      this.apartment_actual = '',
      this.home_phone_actual = '',
      this.length_of_stay_actual = '',
      this.template_address_actual = '',
      this.education = '',
      this.education_id,
      this.monthly_income,
      this.monthly_outcome,
      this.employer = '',
      this.employer_address = '',
      this.employer_phone = '',
      this.employer_activity,
      this.job_employer_activity,
      this.employer_amount_workers,
      this.job_employer_amount_workers,
      this.position,
      this.job_position,
      this.position_type,
      this.job_position_type,
      this.work_phone = '',
      this.internal_phone = '',
      this.next_salary_date = '',
      this.work_experience_last = '',
      this.work_experience_total = '',
      this.real_estate = '',
      this.marital_status,
      this.marital_status_id,
      this.number_of_children,
      this.number_of_children_id,
      this.loans_before = '',
      this.loans_before_amount = '',
      this.loans_before_bank_name = '',
      this.monthly_expenses_on_loans = '',
      this.loans_current_bank_name = '',
      this.credit_card_limit = '',
      this.requested_product = '',
      this.employment_type = '',
      this.gender = '',
      this.car_type = '',
      this.car_year = '',
      this.car_number = '',
      this.car_amount,
      this.village_registered = '',
      this.village_actual = '',
      this.additional_income_source = '',
      this.family_income = 0,
      this.contact_name = '',
      this.contact_last_name = '',
      this.target_url = '',
      this.password = '',
      this.new_password = '',
      this.code = '',
      this.lang = '',
      this.postal_code_registered = '',
      this.postal_code_actual = '',
      this.finance_liabilities,
      this.finance_repayment_monthly_sum,
      this.finance_amount_unpaid_loans,
      this.finance_type_user_history,
      this.finance_max_loan_sum,
      this.finance_last_loan_sum,
      this.university_name = '',
      this.faculty = '',
      this.academic_degree = '',
      this.academic_start_year = '',
      this.disability_group = '',
      this.activity_type = '',
      this.agis_project = '',
      this.step = '',
      this.ga_cid = '',
      this.smartphone = '',
      this.motorbike = '',
      this.bank_account_transit_account = '',
      this.bank_account_bank_name = '',
      this.bank_account_bank_bic = '',
      this.bank_account_bank_tax_number = '',
      this.bank_account_number = '',
      this.moratorium_end_date = '',
      this.partner_url = '',
      this.okato_registered = '',
      this.okato_actual = '',
      this.fias_id_registered = '',
      this.fias_id_actual = '',
      @JsonKey(name: 'terminal_repayment') this.terminalRepayment,
      @JsonKey(name: 'push_notification_agree') this.pushNotificationAgree,
      @JsonKey(name: 'confirmation_method') this.confirmationMethod,
      @JsonKey(name: 'allowed_access_to_personal_account')
      this.allowedAccessToPersonalAccount,
      @JsonKey(name: 'is_standard_questionnaire_first')
      this.isStandardQuestionnaireFirst = false,
      @JsonKey(name: 'is_standard_questionnaire_repeated')
      this.isStandardQuestionnaireRepeated = false,
      @JsonKey(name: 'is_standard_personal_account_first')
      this.isStandardPersonalAccountFirst = false,
      @JsonKey(name: 'is_standard_personal_account_repeated')
      this.isStandardPersonalAccountRepeated = false})
      : super._();

  factory _$ApiUserInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiUserInfoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? token;
  @override
  final String? refresh_token;
  @override
  @JsonKey()
  final bool is_phone_confirmed;
  @override
  @JsonKey()
  final bool finance_is_bankruptcy;
  @override
  @JsonKey()
  final bool active_moratorium;
  @override
  @JsonKey()
  final bool soft_reject;
  @override
  @JsonKey()
  final bool hard_reject;
  @override
  @JsonKey()
  final bool in_black_list;
  @override
  @JsonKey()
  final bool esia_user;
//
  @override
  @JsonKey(name: 'first_loan')
  final bool firstLoan;
//
  @override
  @JsonKey()
  final bool short_api;
  @override
  final bool? is_esia_user;
  @override
  final int? requested_amount;
  @override
  final int? requested_days;
  @override
  final int? method_of_disbursement;
  @override
  @JsonKey()
  final String first_name;
  @override
  @JsonKey()
  final String last_name;
  @override
  @JsonKey()
  final String personal_id;
  @override
  @JsonKey()
  final String document_number;
  @override
  @JsonKey()
  final String document_series;
  @override
  @JsonKey()
  final String mobile_phone;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String date_of_birth;
  @override
  @JsonKey()
  final String document_type;
  @override
  final int? issued_by;
  @override
  @JsonKey()
  final String issued_by_string;
  @override
  @JsonKey()
  final String issuer_code;
  @override
  @JsonKey()
  final String date_issued;
  @override
  @JsonKey()
  final String valid_until;
  @override
  @JsonKey()
  final String birth_place;
  @override
  @JsonKey()
  final String middle_name;
  @override
  @JsonKey()
  final String region_registered;
  @override
  @JsonKey()
  final String district_registered;
  @override
  @JsonKey()
  final String city_registered;
  @override
  @JsonKey()
  final String street_type_registered;
  @override
  @JsonKey()
  final String street_registered;
  @override
  @JsonKey()
  final String house_registered;
  @override
  @JsonKey()
  final String housing_registered;
  @override
  @JsonKey()
  final String building_registered;
  @override
  @JsonKey()
  final String apartment_registered;
  @override
  @JsonKey()
  final String home_phone_registered;
  @override
  @JsonKey()
  final String contact_name_registered;
  @override
  final int? contact_type;
  @override
  final IdLabelValue? contact_type_id;
  @override
  @JsonKey()
  final String contact_phone_registered;
  @override
  @JsonKey()
  final String contact_phone;
  @override
  @JsonKey()
  final String length_of_stay_registered;
  @override
  @JsonKey()
  final String template_address_registered;
  @override
  @JsonKey()
  final String region_actual;
  @override
  @JsonKey()
  final String district_actual;
  @override
  @JsonKey()
  final String city_actual;
  @override
  @JsonKey()
  final String street_type_actual;
  @override
  @JsonKey()
  final String street_actual;
  @override
  @JsonKey()
  final String house_actual;
  @override
  @JsonKey()
  final String housing_actual;
  @override
  @JsonKey()
  final String building_actual;
  @override
  @JsonKey()
  final String apartment_actual;
  @override
  @JsonKey()
  final String home_phone_actual;
  @override
  @JsonKey()
  final String length_of_stay_actual;
  @override
  @JsonKey()
  final String template_address_actual;
  @override
  @JsonKey()
  final String education;
  @override
  final IdLabelValue? education_id;
  @override
  final num? monthly_income;
  @override
  final num? monthly_outcome;
  @override
  @JsonKey()
  final String employer;
  @override
  @JsonKey()
  final String employer_address;
  @override
  @JsonKey()
  final String employer_phone;
  @override
  final int? employer_activity;
  @override
  final IdLabelValue? job_employer_activity;
  @override
  final int? employer_amount_workers;
  @override
  final IdLabelValue? job_employer_amount_workers;
  @override
  final int? position;
  @override
  final IdLabelValue? job_position;
  @override
  final int? position_type;
  @override
  final IdLabelValue? job_position_type;
  @override
  @JsonKey()
  final String work_phone;
  @override
  @JsonKey()
  final String internal_phone;
  @override
  @JsonKey()
  final String next_salary_date;
  @override
  @JsonKey()
  final String work_experience_last;
  @override
  @JsonKey()
  final String work_experience_total;
  @override
  @JsonKey()
  final String real_estate;
  @override
  final int? marital_status;
  @override
  final IdLabelValue? marital_status_id;
  @override
  final int? number_of_children;
  @override
  final IdLabelValue? number_of_children_id;
  @override
  @JsonKey()
  final String loans_before;
  @override
  @JsonKey()
  final String loans_before_amount;
  @override
  @JsonKey()
  final String loans_before_bank_name;
  @override
  @JsonKey()
  final String monthly_expenses_on_loans;
  @override
  @JsonKey()
  final String loans_current_bank_name;
  @override
  @JsonKey()
  final String credit_card_limit;
  @override
  @JsonKey()
  final String requested_product;
  @override
  @JsonKey()
  final String employment_type;
  @override
  @JsonKey()
  final String gender;
  @override
  @JsonKey()
  final String car_type;
  @override
  @JsonKey()
  final String car_year;
  @override
  @JsonKey()
  final String car_number;
  @override
  final int? car_amount;
  @override
  @JsonKey()
  final String village_registered;
  @override
  @JsonKey()
  final String village_actual;
  @override
  @JsonKey()
  final String additional_income_source;
// @Default(0) int additional_income_amount,
  @override
  @JsonKey()
  final int family_income;
  @override
  @JsonKey()
  final String contact_name;
  @override
  @JsonKey()
  final String contact_last_name;
  @override
  @JsonKey()
  final String target_url;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String new_password;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final String lang;
  @override
  @JsonKey()
  final String postal_code_registered;
  @override
  @JsonKey()
  final String postal_code_actual;
  @override
  final int? finance_liabilities;
  @override
  final int? finance_repayment_monthly_sum;
  @override
  final int? finance_amount_unpaid_loans;
  @override
  final int? finance_type_user_history;
  @override
  final int? finance_max_loan_sum;
  @override
  final int? finance_last_loan_sum;
  @override
  @JsonKey()
  final String university_name;
  @override
  @JsonKey()
  final String faculty;
  @override
  @JsonKey()
  final String academic_degree;
  @override
  @JsonKey()
  final String academic_start_year;
  @override
  @JsonKey()
  final String disability_group;
  @override
  @JsonKey()
  final String activity_type;
  @override
  @JsonKey()
  final String agis_project;
  @override
  @JsonKey()
  final String step;
  @override
  @JsonKey()
  final String ga_cid;
  @override
  @JsonKey()
  final String smartphone;
  @override
  @JsonKey()
  final String motorbike;
  @override
  @JsonKey()
  final String bank_account_transit_account;
  @override
  @JsonKey()
  final String bank_account_bank_name;
  @override
  @JsonKey()
  final String bank_account_bank_bic;
  @override
  @JsonKey()
  final String bank_account_bank_tax_number;
  @override
  @JsonKey()
  final String bank_account_number;
  @override
  @JsonKey()
  final String moratorium_end_date;
  @override
  @JsonKey()
  final String partner_url;
  @override
  @JsonKey()
  final String okato_registered;
  @override
  @JsonKey()
  final String okato_actual;
  @override
  @JsonKey()
  final String fias_id_registered;
  @override
  @JsonKey()
  final String fias_id_actual;
  @override
  @JsonKey(name: 'terminal_repayment')
  final String? terminalRepayment;
  @override
  @JsonKey(name: 'push_notification_agree')
  final bool? pushNotificationAgree;
  @override
  @JsonKey(name: 'confirmation_method')
  final String? confirmationMethod;
  @override
  @JsonKey(name: 'allowed_access_to_personal_account')
  final bool? allowedAccessToPersonalAccount;
  @override
  @JsonKey(name: 'is_standard_questionnaire_first')
  final bool? isStandardQuestionnaireFirst;
  @override
  @JsonKey(name: 'is_standard_questionnaire_repeated')
  final bool? isStandardQuestionnaireRepeated;
  @override
  @JsonKey(name: 'is_standard_personal_account_first')
  final bool? isStandardPersonalAccountFirst;
  @override
  @JsonKey(name: 'is_standard_personal_account_repeated')
  final bool? isStandardPersonalAccountRepeated;

  @override
  String toString() {
    return 'ApiUserInfo(id: $id, token: $token, refresh_token: $refresh_token, is_phone_confirmed: $is_phone_confirmed, finance_is_bankruptcy: $finance_is_bankruptcy, active_moratorium: $active_moratorium, soft_reject: $soft_reject, hard_reject: $hard_reject, in_black_list: $in_black_list, esia_user: $esia_user, firstLoan: $firstLoan, short_api: $short_api, is_esia_user: $is_esia_user, requested_amount: $requested_amount, requested_days: $requested_days, method_of_disbursement: $method_of_disbursement, first_name: $first_name, last_name: $last_name, personal_id: $personal_id, document_number: $document_number, document_series: $document_series, mobile_phone: $mobile_phone, email: $email, date_of_birth: $date_of_birth, document_type: $document_type, issued_by: $issued_by, issued_by_string: $issued_by_string, issuer_code: $issuer_code, date_issued: $date_issued, valid_until: $valid_until, birth_place: $birth_place, middle_name: $middle_name, region_registered: $region_registered, district_registered: $district_registered, city_registered: $city_registered, street_type_registered: $street_type_registered, street_registered: $street_registered, house_registered: $house_registered, housing_registered: $housing_registered, building_registered: $building_registered, apartment_registered: $apartment_registered, home_phone_registered: $home_phone_registered, contact_name_registered: $contact_name_registered, contact_type: $contact_type, contact_type_id: $contact_type_id, contact_phone_registered: $contact_phone_registered, contact_phone: $contact_phone, length_of_stay_registered: $length_of_stay_registered, template_address_registered: $template_address_registered, region_actual: $region_actual, district_actual: $district_actual, city_actual: $city_actual, street_type_actual: $street_type_actual, street_actual: $street_actual, house_actual: $house_actual, housing_actual: $housing_actual, building_actual: $building_actual, apartment_actual: $apartment_actual, home_phone_actual: $home_phone_actual, length_of_stay_actual: $length_of_stay_actual, template_address_actual: $template_address_actual, education: $education, education_id: $education_id, monthly_income: $monthly_income, monthly_outcome: $monthly_outcome, employer: $employer, employer_address: $employer_address, employer_phone: $employer_phone, employer_activity: $employer_activity, job_employer_activity: $job_employer_activity, employer_amount_workers: $employer_amount_workers, job_employer_amount_workers: $job_employer_amount_workers, position: $position, job_position: $job_position, position_type: $position_type, job_position_type: $job_position_type, work_phone: $work_phone, internal_phone: $internal_phone, next_salary_date: $next_salary_date, work_experience_last: $work_experience_last, work_experience_total: $work_experience_total, real_estate: $real_estate, marital_status: $marital_status, marital_status_id: $marital_status_id, number_of_children: $number_of_children, number_of_children_id: $number_of_children_id, loans_before: $loans_before, loans_before_amount: $loans_before_amount, loans_before_bank_name: $loans_before_bank_name, monthly_expenses_on_loans: $monthly_expenses_on_loans, loans_current_bank_name: $loans_current_bank_name, credit_card_limit: $credit_card_limit, requested_product: $requested_product, employment_type: $employment_type, gender: $gender, car_type: $car_type, car_year: $car_year, car_number: $car_number, car_amount: $car_amount, village_registered: $village_registered, village_actual: $village_actual, additional_income_source: $additional_income_source, family_income: $family_income, contact_name: $contact_name, contact_last_name: $contact_last_name, target_url: $target_url, password: $password, new_password: $new_password, code: $code, lang: $lang, postal_code_registered: $postal_code_registered, postal_code_actual: $postal_code_actual, finance_liabilities: $finance_liabilities, finance_repayment_monthly_sum: $finance_repayment_monthly_sum, finance_amount_unpaid_loans: $finance_amount_unpaid_loans, finance_type_user_history: $finance_type_user_history, finance_max_loan_sum: $finance_max_loan_sum, finance_last_loan_sum: $finance_last_loan_sum, university_name: $university_name, faculty: $faculty, academic_degree: $academic_degree, academic_start_year: $academic_start_year, disability_group: $disability_group, activity_type: $activity_type, agis_project: $agis_project, step: $step, ga_cid: $ga_cid, smartphone: $smartphone, motorbike: $motorbike, bank_account_transit_account: $bank_account_transit_account, bank_account_bank_name: $bank_account_bank_name, bank_account_bank_bic: $bank_account_bank_bic, bank_account_bank_tax_number: $bank_account_bank_tax_number, bank_account_number: $bank_account_number, moratorium_end_date: $moratorium_end_date, partner_url: $partner_url, okato_registered: $okato_registered, okato_actual: $okato_actual, fias_id_registered: $fias_id_registered, fias_id_actual: $fias_id_actual, terminalRepayment: $terminalRepayment, pushNotificationAgree: $pushNotificationAgree, confirmationMethod: $confirmationMethod, allowedAccessToPersonalAccount: $allowedAccessToPersonalAccount, isStandardQuestionnaireFirst: $isStandardQuestionnaireFirst, isStandardQuestionnaireRepeated: $isStandardQuestionnaireRepeated, isStandardPersonalAccountFirst: $isStandardPersonalAccountFirst, isStandardPersonalAccountRepeated: $isStandardPersonalAccountRepeated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiUserInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.refresh_token, refresh_token) ||
                other.refresh_token == refresh_token) &&
            (identical(other.is_phone_confirmed, is_phone_confirmed) ||
                other.is_phone_confirmed == is_phone_confirmed) &&
            (identical(other.finance_is_bankruptcy, finance_is_bankruptcy) ||
                other.finance_is_bankruptcy == finance_is_bankruptcy) &&
            (identical(other.active_moratorium, active_moratorium) ||
                other.active_moratorium == active_moratorium) &&
            (identical(other.soft_reject, soft_reject) ||
                other.soft_reject == soft_reject) &&
            (identical(other.hard_reject, hard_reject) ||
                other.hard_reject == hard_reject) &&
            (identical(other.in_black_list, in_black_list) ||
                other.in_black_list == in_black_list) &&
            (identical(other.esia_user, esia_user) ||
                other.esia_user == esia_user) &&
            (identical(other.firstLoan, firstLoan) ||
                other.firstLoan == firstLoan) &&
            (identical(other.short_api, short_api) ||
                other.short_api == short_api) &&
            (identical(other.is_esia_user, is_esia_user) ||
                other.is_esia_user == is_esia_user) &&
            (identical(other.requested_amount, requested_amount) ||
                other.requested_amount == requested_amount) &&
            (identical(other.requested_days, requested_days) ||
                other.requested_days == requested_days) &&
            (identical(other.method_of_disbursement, method_of_disbursement) ||
                other.method_of_disbursement == method_of_disbursement) &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.personal_id, personal_id) ||
                other.personal_id == personal_id) &&
            (identical(other.document_number, document_number) ||
                other.document_number == document_number) &&
            (identical(other.document_series, document_series) ||
                other.document_series == document_series) &&
            (identical(other.mobile_phone, mobile_phone) ||
                other.mobile_phone == mobile_phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.date_of_birth, date_of_birth) ||
                other.date_of_birth == date_of_birth) &&
            (identical(other.document_type, document_type) ||
                other.document_type == document_type) &&
            (identical(other.issued_by, issued_by) ||
                other.issued_by == issued_by) &&
            (identical(other.issued_by_string, issued_by_string) ||
                other.issued_by_string == issued_by_string) &&
            (identical(other.issuer_code, issuer_code) ||
                other.issuer_code == issuer_code) &&
            (identical(other.date_issued, date_issued) ||
                other.date_issued == date_issued) &&
            (identical(other.valid_until, valid_until) ||
                other.valid_until == valid_until) &&
            (identical(other.birth_place, birth_place) ||
                other.birth_place == birth_place) &&
            (identical(other.middle_name, middle_name) ||
                other.middle_name == middle_name) &&
            (identical(other.region_registered, region_registered) ||
                other.region_registered == region_registered) &&
            (identical(other.district_registered, district_registered) ||
                other.district_registered == district_registered) &&
            (identical(other.city_registered, city_registered) ||
                other.city_registered == city_registered) &&
            (identical(other.street_type_registered, street_type_registered) ||
                other.street_type_registered == street_type_registered) &&
            (identical(other.street_registered, street_registered) ||
                other.street_registered == street_registered) &&
            (identical(other.house_registered, house_registered) ||
                other.house_registered == house_registered) &&
            (identical(other.housing_registered, housing_registered) ||
                other.housing_registered == housing_registered) &&
            (identical(other.building_registered, building_registered) ||
                other.building_registered == building_registered) &&
            (identical(other.apartment_registered, apartment_registered) ||
                other.apartment_registered == apartment_registered) &&
            (identical(other.home_phone_registered, home_phone_registered) ||
                other.home_phone_registered == home_phone_registered) &&
            (identical(other.contact_name_registered, contact_name_registered) ||
                other.contact_name_registered == contact_name_registered) &&
            (identical(other.contact_type, contact_type) ||
                other.contact_type == contact_type) &&
            (identical(other.contact_type_id, contact_type_id) ||
                other.contact_type_id == contact_type_id) &&
            (identical(other.contact_phone_registered, contact_phone_registered) ||
                other.contact_phone_registered == contact_phone_registered) &&
            (identical(other.contact_phone, contact_phone) || other.contact_phone == contact_phone) &&
            (identical(other.length_of_stay_registered, length_of_stay_registered) || other.length_of_stay_registered == length_of_stay_registered) &&
            (identical(other.template_address_registered, template_address_registered) || other.template_address_registered == template_address_registered) &&
            (identical(other.region_actual, region_actual) || other.region_actual == region_actual) &&
            (identical(other.district_actual, district_actual) || other.district_actual == district_actual) &&
            (identical(other.city_actual, city_actual) || other.city_actual == city_actual) &&
            (identical(other.street_type_actual, street_type_actual) || other.street_type_actual == street_type_actual) &&
            (identical(other.street_actual, street_actual) || other.street_actual == street_actual) &&
            (identical(other.house_actual, house_actual) || other.house_actual == house_actual) &&
            (identical(other.housing_actual, housing_actual) || other.housing_actual == housing_actual) &&
            (identical(other.building_actual, building_actual) || other.building_actual == building_actual) &&
            (identical(other.apartment_actual, apartment_actual) || other.apartment_actual == apartment_actual) &&
            (identical(other.home_phone_actual, home_phone_actual) || other.home_phone_actual == home_phone_actual) &&
            (identical(other.length_of_stay_actual, length_of_stay_actual) || other.length_of_stay_actual == length_of_stay_actual) &&
            (identical(other.template_address_actual, template_address_actual) || other.template_address_actual == template_address_actual) &&
            (identical(other.education, education) || other.education == education) &&
            (identical(other.education_id, education_id) || other.education_id == education_id) &&
            (identical(other.monthly_income, monthly_income) || other.monthly_income == monthly_income) &&
            (identical(other.monthly_outcome, monthly_outcome) || other.monthly_outcome == monthly_outcome) &&
            (identical(other.employer, employer) || other.employer == employer) &&
            (identical(other.employer_address, employer_address) || other.employer_address == employer_address) &&
            (identical(other.employer_phone, employer_phone) || other.employer_phone == employer_phone) &&
            (identical(other.employer_activity, employer_activity) || other.employer_activity == employer_activity) &&
            (identical(other.job_employer_activity, job_employer_activity) || other.job_employer_activity == job_employer_activity) &&
            (identical(other.employer_amount_workers, employer_amount_workers) || other.employer_amount_workers == employer_amount_workers) &&
            (identical(other.job_employer_amount_workers, job_employer_amount_workers) || other.job_employer_amount_workers == job_employer_amount_workers) &&
            (identical(other.position, position) || other.position == position) &&
            (identical(other.job_position, job_position) || other.job_position == job_position) &&
            (identical(other.position_type, position_type) || other.position_type == position_type) &&
            (identical(other.job_position_type, job_position_type) || other.job_position_type == job_position_type) &&
            (identical(other.work_phone, work_phone) || other.work_phone == work_phone) &&
            (identical(other.internal_phone, internal_phone) || other.internal_phone == internal_phone) &&
            (identical(other.next_salary_date, next_salary_date) || other.next_salary_date == next_salary_date) &&
            (identical(other.work_experience_last, work_experience_last) || other.work_experience_last == work_experience_last) &&
            (identical(other.work_experience_total, work_experience_total) || other.work_experience_total == work_experience_total) &&
            (identical(other.real_estate, real_estate) || other.real_estate == real_estate) &&
            (identical(other.marital_status, marital_status) || other.marital_status == marital_status) &&
            (identical(other.marital_status_id, marital_status_id) || other.marital_status_id == marital_status_id) &&
            (identical(other.number_of_children, number_of_children) || other.number_of_children == number_of_children) &&
            (identical(other.number_of_children_id, number_of_children_id) || other.number_of_children_id == number_of_children_id) &&
            (identical(other.loans_before, loans_before) || other.loans_before == loans_before) &&
            (identical(other.loans_before_amount, loans_before_amount) || other.loans_before_amount == loans_before_amount) &&
            (identical(other.loans_before_bank_name, loans_before_bank_name) || other.loans_before_bank_name == loans_before_bank_name) &&
            (identical(other.monthly_expenses_on_loans, monthly_expenses_on_loans) || other.monthly_expenses_on_loans == monthly_expenses_on_loans) &&
            (identical(other.loans_current_bank_name, loans_current_bank_name) || other.loans_current_bank_name == loans_current_bank_name) &&
            (identical(other.credit_card_limit, credit_card_limit) || other.credit_card_limit == credit_card_limit) &&
            (identical(other.requested_product, requested_product) || other.requested_product == requested_product) &&
            (identical(other.employment_type, employment_type) || other.employment_type == employment_type) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.car_type, car_type) || other.car_type == car_type) &&
            (identical(other.car_year, car_year) || other.car_year == car_year) &&
            (identical(other.car_number, car_number) || other.car_number == car_number) &&
            (identical(other.car_amount, car_amount) || other.car_amount == car_amount) &&
            (identical(other.village_registered, village_registered) || other.village_registered == village_registered) &&
            (identical(other.village_actual, village_actual) || other.village_actual == village_actual) &&
            (identical(other.additional_income_source, additional_income_source) || other.additional_income_source == additional_income_source) &&
            (identical(other.family_income, family_income) || other.family_income == family_income) &&
            (identical(other.contact_name, contact_name) || other.contact_name == contact_name) &&
            (identical(other.contact_last_name, contact_last_name) || other.contact_last_name == contact_last_name) &&
            (identical(other.target_url, target_url) || other.target_url == target_url) &&
            (identical(other.password, password) || other.password == password) &&
            (identical(other.new_password, new_password) || other.new_password == new_password) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.postal_code_registered, postal_code_registered) || other.postal_code_registered == postal_code_registered) &&
            (identical(other.postal_code_actual, postal_code_actual) || other.postal_code_actual == postal_code_actual) &&
            (identical(other.finance_liabilities, finance_liabilities) || other.finance_liabilities == finance_liabilities) &&
            (identical(other.finance_repayment_monthly_sum, finance_repayment_monthly_sum) || other.finance_repayment_monthly_sum == finance_repayment_monthly_sum) &&
            (identical(other.finance_amount_unpaid_loans, finance_amount_unpaid_loans) || other.finance_amount_unpaid_loans == finance_amount_unpaid_loans) &&
            (identical(other.finance_type_user_history, finance_type_user_history) || other.finance_type_user_history == finance_type_user_history) &&
            (identical(other.finance_max_loan_sum, finance_max_loan_sum) || other.finance_max_loan_sum == finance_max_loan_sum) &&
            (identical(other.finance_last_loan_sum, finance_last_loan_sum) || other.finance_last_loan_sum == finance_last_loan_sum) &&
            (identical(other.university_name, university_name) || other.university_name == university_name) &&
            (identical(other.faculty, faculty) || other.faculty == faculty) &&
            (identical(other.academic_degree, academic_degree) || other.academic_degree == academic_degree) &&
            (identical(other.academic_start_year, academic_start_year) || other.academic_start_year == academic_start_year) &&
            (identical(other.disability_group, disability_group) || other.disability_group == disability_group) &&
            (identical(other.activity_type, activity_type) || other.activity_type == activity_type) &&
            (identical(other.agis_project, agis_project) || other.agis_project == agis_project) &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.ga_cid, ga_cid) || other.ga_cid == ga_cid) &&
            (identical(other.smartphone, smartphone) || other.smartphone == smartphone) &&
            (identical(other.motorbike, motorbike) || other.motorbike == motorbike) &&
            (identical(other.bank_account_transit_account, bank_account_transit_account) || other.bank_account_transit_account == bank_account_transit_account) &&
            (identical(other.bank_account_bank_name, bank_account_bank_name) || other.bank_account_bank_name == bank_account_bank_name) &&
            (identical(other.bank_account_bank_bic, bank_account_bank_bic) || other.bank_account_bank_bic == bank_account_bank_bic) &&
            (identical(other.bank_account_bank_tax_number, bank_account_bank_tax_number) || other.bank_account_bank_tax_number == bank_account_bank_tax_number) &&
            (identical(other.bank_account_number, bank_account_number) || other.bank_account_number == bank_account_number) &&
            (identical(other.moratorium_end_date, moratorium_end_date) || other.moratorium_end_date == moratorium_end_date) &&
            (identical(other.partner_url, partner_url) || other.partner_url == partner_url) &&
            (identical(other.okato_registered, okato_registered) || other.okato_registered == okato_registered) &&
            (identical(other.okato_actual, okato_actual) || other.okato_actual == okato_actual) &&
            (identical(other.fias_id_registered, fias_id_registered) || other.fias_id_registered == fias_id_registered) &&
            (identical(other.fias_id_actual, fias_id_actual) || other.fias_id_actual == fias_id_actual) &&
            (identical(other.terminalRepayment, terminalRepayment) || other.terminalRepayment == terminalRepayment) &&
            (identical(other.pushNotificationAgree, pushNotificationAgree) || other.pushNotificationAgree == pushNotificationAgree) &&
            (identical(other.confirmationMethod, confirmationMethod) || other.confirmationMethod == confirmationMethod) &&
            (identical(other.allowedAccessToPersonalAccount, allowedAccessToPersonalAccount) || other.allowedAccessToPersonalAccount == allowedAccessToPersonalAccount) &&
            (identical(other.isStandardQuestionnaireFirst, isStandardQuestionnaireFirst) || other.isStandardQuestionnaireFirst == isStandardQuestionnaireFirst) &&
            (identical(other.isStandardQuestionnaireRepeated, isStandardQuestionnaireRepeated) || other.isStandardQuestionnaireRepeated == isStandardQuestionnaireRepeated) &&
            (identical(other.isStandardPersonalAccountFirst, isStandardPersonalAccountFirst) || other.isStandardPersonalAccountFirst == isStandardPersonalAccountFirst) &&
            (identical(other.isStandardPersonalAccountRepeated, isStandardPersonalAccountRepeated) || other.isStandardPersonalAccountRepeated == isStandardPersonalAccountRepeated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        token,
        refresh_token,
        is_phone_confirmed,
        finance_is_bankruptcy,
        active_moratorium,
        soft_reject,
        hard_reject,
        in_black_list,
        esia_user,
        firstLoan,
        short_api,
        is_esia_user,
        requested_amount,
        requested_days,
        method_of_disbursement,
        first_name,
        last_name,
        personal_id,
        document_number,
        document_series,
        mobile_phone,
        email,
        date_of_birth,
        document_type,
        issued_by,
        issued_by_string,
        issuer_code,
        date_issued,
        valid_until,
        birth_place,
        middle_name,
        region_registered,
        district_registered,
        city_registered,
        street_type_registered,
        street_registered,
        house_registered,
        housing_registered,
        building_registered,
        apartment_registered,
        home_phone_registered,
        contact_name_registered,
        contact_type,
        contact_type_id,
        contact_phone_registered,
        contact_phone,
        length_of_stay_registered,
        template_address_registered,
        region_actual,
        district_actual,
        city_actual,
        street_type_actual,
        street_actual,
        house_actual,
        housing_actual,
        building_actual,
        apartment_actual,
        home_phone_actual,
        length_of_stay_actual,
        template_address_actual,
        education,
        education_id,
        monthly_income,
        monthly_outcome,
        employer,
        employer_address,
        employer_phone,
        employer_activity,
        job_employer_activity,
        employer_amount_workers,
        job_employer_amount_workers,
        position,
        job_position,
        position_type,
        job_position_type,
        work_phone,
        internal_phone,
        next_salary_date,
        work_experience_last,
        work_experience_total,
        real_estate,
        marital_status,
        marital_status_id,
        number_of_children,
        number_of_children_id,
        loans_before,
        loans_before_amount,
        loans_before_bank_name,
        monthly_expenses_on_loans,
        loans_current_bank_name,
        credit_card_limit,
        requested_product,
        employment_type,
        gender,
        car_type,
        car_year,
        car_number,
        car_amount,
        village_registered,
        village_actual,
        additional_income_source,
        family_income,
        contact_name,
        contact_last_name,
        target_url,
        password,
        new_password,
        code,
        lang,
        postal_code_registered,
        postal_code_actual,
        finance_liabilities,
        finance_repayment_monthly_sum,
        finance_amount_unpaid_loans,
        finance_type_user_history,
        finance_max_loan_sum,
        finance_last_loan_sum,
        university_name,
        faculty,
        academic_degree,
        academic_start_year,
        disability_group,
        activity_type,
        agis_project,
        step,
        ga_cid,
        smartphone,
        motorbike,
        bank_account_transit_account,
        bank_account_bank_name,
        bank_account_bank_bic,
        bank_account_bank_tax_number,
        bank_account_number,
        moratorium_end_date,
        partner_url,
        okato_registered,
        okato_actual,
        fias_id_registered,
        fias_id_actual,
        terminalRepayment,
        pushNotificationAgree,
        confirmationMethod,
        allowedAccessToPersonalAccount,
        isStandardQuestionnaireFirst,
        isStandardQuestionnaireRepeated,
        isStandardPersonalAccountFirst,
        isStandardPersonalAccountRepeated
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiUserInfoImplCopyWith<_$ApiUserInfoImpl> get copyWith =>
      __$$ApiUserInfoImplCopyWithImpl<_$ApiUserInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiUserInfoImplToJson(
      this,
    );
  }
}

abstract class _ApiUserInfo extends ApiUserInfo {
  const factory _ApiUserInfo(
      {final int? id,
      final String? token,
      final String? refresh_token,
      final bool is_phone_confirmed,
      final bool finance_is_bankruptcy,
      final bool active_moratorium,
      final bool soft_reject,
      final bool hard_reject,
      final bool in_black_list,
      final bool esia_user,
      @JsonKey(name: 'first_loan') final bool firstLoan,
      final bool short_api,
      final bool? is_esia_user,
      final int? requested_amount,
      final int? requested_days,
      final int? method_of_disbursement,
      final String first_name,
      final String last_name,
      final String personal_id,
      final String document_number,
      final String document_series,
      final String mobile_phone,
      final String email,
      final String date_of_birth,
      final String document_type,
      final int? issued_by,
      final String issued_by_string,
      final String issuer_code,
      final String date_issued,
      final String valid_until,
      final String birth_place,
      final String middle_name,
      final String region_registered,
      final String district_registered,
      final String city_registered,
      final String street_type_registered,
      final String street_registered,
      final String house_registered,
      final String housing_registered,
      final String building_registered,
      final String apartment_registered,
      final String home_phone_registered,
      final String contact_name_registered,
      final int? contact_type,
      final IdLabelValue? contact_type_id,
      final String contact_phone_registered,
      final String contact_phone,
      final String length_of_stay_registered,
      final String template_address_registered,
      final String region_actual,
      final String district_actual,
      final String city_actual,
      final String street_type_actual,
      final String street_actual,
      final String house_actual,
      final String housing_actual,
      final String building_actual,
      final String apartment_actual,
      final String home_phone_actual,
      final String length_of_stay_actual,
      final String template_address_actual,
      final String education,
      final IdLabelValue? education_id,
      final num? monthly_income,
      final num? monthly_outcome,
      final String employer,
      final String employer_address,
      final String employer_phone,
      final int? employer_activity,
      final IdLabelValue? job_employer_activity,
      final int? employer_amount_workers,
      final IdLabelValue? job_employer_amount_workers,
      final int? position,
      final IdLabelValue? job_position,
      final int? position_type,
      final IdLabelValue? job_position_type,
      final String work_phone,
      final String internal_phone,
      final String next_salary_date,
      final String work_experience_last,
      final String work_experience_total,
      final String real_estate,
      final int? marital_status,
      final IdLabelValue? marital_status_id,
      final int? number_of_children,
      final IdLabelValue? number_of_children_id,
      final String loans_before,
      final String loans_before_amount,
      final String loans_before_bank_name,
      final String monthly_expenses_on_loans,
      final String loans_current_bank_name,
      final String credit_card_limit,
      final String requested_product,
      final String employment_type,
      final String gender,
      final String car_type,
      final String car_year,
      final String car_number,
      final int? car_amount,
      final String village_registered,
      final String village_actual,
      final String additional_income_source,
      final int family_income,
      final String contact_name,
      final String contact_last_name,
      final String target_url,
      final String password,
      final String new_password,
      final String code,
      final String lang,
      final String postal_code_registered,
      final String postal_code_actual,
      final int? finance_liabilities,
      final int? finance_repayment_monthly_sum,
      final int? finance_amount_unpaid_loans,
      final int? finance_type_user_history,
      final int? finance_max_loan_sum,
      final int? finance_last_loan_sum,
      final String university_name,
      final String faculty,
      final String academic_degree,
      final String academic_start_year,
      final String disability_group,
      final String activity_type,
      final String agis_project,
      final String step,
      final String ga_cid,
      final String smartphone,
      final String motorbike,
      final String bank_account_transit_account,
      final String bank_account_bank_name,
      final String bank_account_bank_bic,
      final String bank_account_bank_tax_number,
      final String bank_account_number,
      final String moratorium_end_date,
      final String partner_url,
      final String okato_registered,
      final String okato_actual,
      final String fias_id_registered,
      final String fias_id_actual,
      @JsonKey(name: 'terminal_repayment') final String? terminalRepayment,
      @JsonKey(name: 'push_notification_agree')
      final bool? pushNotificationAgree,
      @JsonKey(name: 'confirmation_method') final String? confirmationMethod,
      @JsonKey(name: 'allowed_access_to_personal_account')
      final bool? allowedAccessToPersonalAccount,
      @JsonKey(name: 'is_standard_questionnaire_first')
      final bool? isStandardQuestionnaireFirst,
      @JsonKey(name: 'is_standard_questionnaire_repeated')
      final bool? isStandardQuestionnaireRepeated,
      @JsonKey(name: 'is_standard_personal_account_first')
      final bool? isStandardPersonalAccountFirst,
      @JsonKey(name: 'is_standard_personal_account_repeated')
      final bool? isStandardPersonalAccountRepeated}) = _$ApiUserInfoImpl;
  const _ApiUserInfo._() : super._();

  factory _ApiUserInfo.fromJson(Map<String, dynamic> json) =
      _$ApiUserInfoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get token;
  @override
  String? get refresh_token;
  @override
  bool get is_phone_confirmed;
  @override
  bool get finance_is_bankruptcy;
  @override
  bool get active_moratorium;
  @override
  bool get soft_reject;
  @override
  bool get hard_reject;
  @override
  bool get in_black_list;
  @override
  bool get esia_user;
  @override //
  @JsonKey(name: 'first_loan')
  bool get firstLoan;
  @override //
  bool get short_api;
  @override
  bool? get is_esia_user;
  @override
  int? get requested_amount;
  @override
  int? get requested_days;
  @override
  int? get method_of_disbursement;
  @override
  String get first_name;
  @override
  String get last_name;
  @override
  String get personal_id;
  @override
  String get document_number;
  @override
  String get document_series;
  @override
  String get mobile_phone;
  @override
  String get email;
  @override
  String get date_of_birth;
  @override
  String get document_type;
  @override
  int? get issued_by;
  @override
  String get issued_by_string;
  @override
  String get issuer_code;
  @override
  String get date_issued;
  @override
  String get valid_until;
  @override
  String get birth_place;
  @override
  String get middle_name;
  @override
  String get region_registered;
  @override
  String get district_registered;
  @override
  String get city_registered;
  @override
  String get street_type_registered;
  @override
  String get street_registered;
  @override
  String get house_registered;
  @override
  String get housing_registered;
  @override
  String get building_registered;
  @override
  String get apartment_registered;
  @override
  String get home_phone_registered;
  @override
  String get contact_name_registered;
  @override
  int? get contact_type;
  @override
  IdLabelValue? get contact_type_id;
  @override
  String get contact_phone_registered;
  @override
  String get contact_phone;
  @override
  String get length_of_stay_registered;
  @override
  String get template_address_registered;
  @override
  String get region_actual;
  @override
  String get district_actual;
  @override
  String get city_actual;
  @override
  String get street_type_actual;
  @override
  String get street_actual;
  @override
  String get house_actual;
  @override
  String get housing_actual;
  @override
  String get building_actual;
  @override
  String get apartment_actual;
  @override
  String get home_phone_actual;
  @override
  String get length_of_stay_actual;
  @override
  String get template_address_actual;
  @override
  String get education;
  @override
  IdLabelValue? get education_id;
  @override
  num? get monthly_income;
  @override
  num? get monthly_outcome;
  @override
  String get employer;
  @override
  String get employer_address;
  @override
  String get employer_phone;
  @override
  int? get employer_activity;
  @override
  IdLabelValue? get job_employer_activity;
  @override
  int? get employer_amount_workers;
  @override
  IdLabelValue? get job_employer_amount_workers;
  @override
  int? get position;
  @override
  IdLabelValue? get job_position;
  @override
  int? get position_type;
  @override
  IdLabelValue? get job_position_type;
  @override
  String get work_phone;
  @override
  String get internal_phone;
  @override
  String get next_salary_date;
  @override
  String get work_experience_last;
  @override
  String get work_experience_total;
  @override
  String get real_estate;
  @override
  int? get marital_status;
  @override
  IdLabelValue? get marital_status_id;
  @override
  int? get number_of_children;
  @override
  IdLabelValue? get number_of_children_id;
  @override
  String get loans_before;
  @override
  String get loans_before_amount;
  @override
  String get loans_before_bank_name;
  @override
  String get monthly_expenses_on_loans;
  @override
  String get loans_current_bank_name;
  @override
  String get credit_card_limit;
  @override
  String get requested_product;
  @override
  String get employment_type;
  @override
  String get gender;
  @override
  String get car_type;
  @override
  String get car_year;
  @override
  String get car_number;
  @override
  int? get car_amount;
  @override
  String get village_registered;
  @override
  String get village_actual;
  @override
  String get additional_income_source;
  @override // @Default(0) int additional_income_amount,
  int get family_income;
  @override
  String get contact_name;
  @override
  String get contact_last_name;
  @override
  String get target_url;
  @override
  String get password;
  @override
  String get new_password;
  @override
  String get code;
  @override
  String get lang;
  @override
  String get postal_code_registered;
  @override
  String get postal_code_actual;
  @override
  int? get finance_liabilities;
  @override
  int? get finance_repayment_monthly_sum;
  @override
  int? get finance_amount_unpaid_loans;
  @override
  int? get finance_type_user_history;
  @override
  int? get finance_max_loan_sum;
  @override
  int? get finance_last_loan_sum;
  @override
  String get university_name;
  @override
  String get faculty;
  @override
  String get academic_degree;
  @override
  String get academic_start_year;
  @override
  String get disability_group;
  @override
  String get activity_type;
  @override
  String get agis_project;
  @override
  String get step;
  @override
  String get ga_cid;
  @override
  String get smartphone;
  @override
  String get motorbike;
  @override
  String get bank_account_transit_account;
  @override
  String get bank_account_bank_name;
  @override
  String get bank_account_bank_bic;
  @override
  String get bank_account_bank_tax_number;
  @override
  String get bank_account_number;
  @override
  String get moratorium_end_date;
  @override
  String get partner_url;
  @override
  String get okato_registered;
  @override
  String get okato_actual;
  @override
  String get fias_id_registered;
  @override
  String get fias_id_actual;
  @override
  @JsonKey(name: 'terminal_repayment')
  String? get terminalRepayment;
  @override
  @JsonKey(name: 'push_notification_agree')
  bool? get pushNotificationAgree;
  @override
  @JsonKey(name: 'confirmation_method')
  String? get confirmationMethod;
  @override
  @JsonKey(name: 'allowed_access_to_personal_account')
  bool? get allowedAccessToPersonalAccount;
  @override
  @JsonKey(name: 'is_standard_questionnaire_first')
  bool? get isStandardQuestionnaireFirst;
  @override
  @JsonKey(name: 'is_standard_questionnaire_repeated')
  bool? get isStandardQuestionnaireRepeated;
  @override
  @JsonKey(name: 'is_standard_personal_account_first')
  bool? get isStandardPersonalAccountFirst;
  @override
  @JsonKey(name: 'is_standard_personal_account_repeated')
  bool? get isStandardPersonalAccountRepeated;
  @override
  @JsonKey(ignore: true)
  _$$ApiUserInfoImplCopyWith<_$ApiUserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IdLabelValue _$IdLabelValueFromJson(Map<String, dynamic> json) {
  return _IdLabelValue.fromJson(json);
}

/// @nodoc
mixin _$IdLabelValue {
  int? get id => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdLabelValueCopyWith<IdLabelValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdLabelValueCopyWith<$Res> {
  factory $IdLabelValueCopyWith(
          IdLabelValue value, $Res Function(IdLabelValue) then) =
      _$IdLabelValueCopyWithImpl<$Res, IdLabelValue>;
  @useResult
  $Res call({int? id, String? label, String? value});
}

/// @nodoc
class _$IdLabelValueCopyWithImpl<$Res, $Val extends IdLabelValue>
    implements $IdLabelValueCopyWith<$Res> {
  _$IdLabelValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? label = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdLabelValueImplCopyWith<$Res>
    implements $IdLabelValueCopyWith<$Res> {
  factory _$$IdLabelValueImplCopyWith(
          _$IdLabelValueImpl value, $Res Function(_$IdLabelValueImpl) then) =
      __$$IdLabelValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? label, String? value});
}

/// @nodoc
class __$$IdLabelValueImplCopyWithImpl<$Res>
    extends _$IdLabelValueCopyWithImpl<$Res, _$IdLabelValueImpl>
    implements _$$IdLabelValueImplCopyWith<$Res> {
  __$$IdLabelValueImplCopyWithImpl(
      _$IdLabelValueImpl _value, $Res Function(_$IdLabelValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? label = freezed,
    Object? value = freezed,
  }) {
    return _then(_$IdLabelValueImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdLabelValueImpl implements _IdLabelValue {
  _$IdLabelValueImpl({this.id, this.label, this.value});

  factory _$IdLabelValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdLabelValueImplFromJson(json);

  @override
  final int? id;
  @override
  final String? label;
  @override
  final String? value;

  @override
  String toString() {
    return 'IdLabelValue(id: $id, label: $label, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdLabelValueImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, label, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdLabelValueImplCopyWith<_$IdLabelValueImpl> get copyWith =>
      __$$IdLabelValueImplCopyWithImpl<_$IdLabelValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdLabelValueImplToJson(
      this,
    );
  }
}

abstract class _IdLabelValue implements IdLabelValue {
  factory _IdLabelValue(
      {final int? id,
      final String? label,
      final String? value}) = _$IdLabelValueImpl;

  factory _IdLabelValue.fromJson(Map<String, dynamic> json) =
      _$IdLabelValueImpl.fromJson;

  @override
  int? get id;
  @override
  String? get label;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$IdLabelValueImplCopyWith<_$IdLabelValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
