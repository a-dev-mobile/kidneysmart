// ignore_for_file: non_constant_identifier_names, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_user.freezed.dart';
part 'api_user.g.dart';

@freezed
class ApiUser with _$ApiUser {
  factory ApiUser.userNew(ApiUserInfo value) = _UserNew;
  factory ApiUser.userExist() = _UserExist;
}

@freezed
class ApiUserInfo with _$ApiUserInfo {
  const factory ApiUserInfo({
    int? id,
    String? token,
    String? refresh_token,
    @Default(false) bool is_phone_confirmed,
    @Default(false) bool finance_is_bankruptcy,
    @Default(false) bool active_moratorium,
    @Default(false) bool soft_reject,
    @Default(false) bool hard_reject,
    @Default(false) bool in_black_list,
    @Default(false) bool esia_user,
    //
    @JsonKey(name: 'first_loan') @Default(false) bool firstLoan,
    //
    @Default(false) bool short_api,
    bool? is_esia_user,
    int? requested_amount,
    int? requested_days,
    int? method_of_disbursement,
    @Default('') String first_name,
    @Default('') String last_name,
    @Default('') String personal_id,
    @Default('') String document_number,
    @Default('') String document_series,
    @Default('') String mobile_phone,
    @Default('') String email,
    @Default('') String date_of_birth,
    @Default('') String document_type,
    int? issued_by,
    @Default('') String issued_by_string,
    @Default('') String issuer_code,
    @Default('') String date_issued,
    @Default('') String valid_until,
    @Default('') String birth_place,
    @Default('') String middle_name,
    @Default('') String region_registered,
    @Default('') String district_registered,
    @Default('') String city_registered,
    @Default('') String street_type_registered,
    @Default('') String street_registered,
    @Default('') String house_registered,
    @Default('') String housing_registered,
    @Default('') String building_registered,
    @Default('') String apartment_registered,
    @Default('') String home_phone_registered,
    @Default('') String contact_name_registered,
    int? contact_type,
    IdLabelValue? contact_type_id,
    @Default('') String contact_phone_registered,
    @Default('') String contact_phone,
    @Default('') String length_of_stay_registered,
    @Default('') String template_address_registered,
    @Default('') String region_actual,
    @Default('') String district_actual,
    @Default('') String city_actual,
    @Default('') String street_type_actual,
    @Default('') String street_actual,
    @Default('') String house_actual,
    @Default('') String housing_actual,
    @Default('') String building_actual,
    @Default('') String apartment_actual,
    @Default('') String home_phone_actual,
    @Default('') String length_of_stay_actual,
    @Default('') String template_address_actual,
    @Default('') String education,
    IdLabelValue? education_id,
    num? monthly_income,
    num? monthly_outcome,
    @Default('') String employer,
    @Default('') String employer_address,
    @Default('') String employer_phone,
    int? employer_activity,
    IdLabelValue? job_employer_activity,
    int? employer_amount_workers,
    IdLabelValue? job_employer_amount_workers,
    int? position,
    IdLabelValue? job_position,
    int? position_type,
    IdLabelValue? job_position_type,
    @Default('') String work_phone,
    @Default('') String internal_phone,
    @Default('') String next_salary_date,
    @Default('') String work_experience_last,
    @Default('') String work_experience_total,
    @Default('') String real_estate,
    int? marital_status,
    IdLabelValue? marital_status_id,
    int? number_of_children,
    IdLabelValue? number_of_children_id,
    @Default('') String loans_before,
    @Default('') String loans_before_amount,
    @Default('') String loans_before_bank_name,
    @Default('') String monthly_expenses_on_loans,
    @Default('') String loans_current_bank_name,
    @Default('') String credit_card_limit,
    @Default('') String requested_product,
    @Default('') String employment_type,
    @Default('') String gender,
    @Default('') String car_type,
    @Default('') String car_year,
    @Default('') String car_number,
    int? car_amount,
    @Default('') String village_registered,
    @Default('') String village_actual,
    @Default('') String additional_income_source,
    // @Default(0) int additional_income_amount,
    @Default(0) int family_income,
    @Default('') String contact_name,
    @Default('') String contact_last_name,
    @Default('') String target_url,
    @Default('') String password,
    @Default('') String new_password,
    @Default('') String code,
    @Default('') String lang,
    @Default('') String postal_code_registered,
    @Default('') String postal_code_actual,
    int? finance_liabilities,
    int? finance_repayment_monthly_sum,
    int? finance_amount_unpaid_loans,
    int? finance_type_user_history,
    int? finance_max_loan_sum,
    int? finance_last_loan_sum,
    @Default('') String university_name,
    @Default('') String faculty,
    @Default('') String academic_degree,
    @Default('') String academic_start_year,
    @Default('') String disability_group,
    @Default('') String activity_type,
    @Default('') String agis_project,
    @Default('') String step,
    @Default('') String ga_cid,
    @Default('') String smartphone,
    @Default('') String motorbike,
    @Default('') String bank_account_transit_account,
    @Default('') String bank_account_bank_name,
    @Default('') String bank_account_bank_bic,
    @Default('') String bank_account_bank_tax_number,
    @Default('') String bank_account_number,
    @Default('') String moratorium_end_date,
    @Default('') String partner_url,
    @Default('') String okato_registered,
    @Default('') String okato_actual,
    @Default('') String fias_id_registered,
    @Default('') String fias_id_actual,
    @JsonKey(name: 'terminal_repayment') String? terminalRepayment,
    @JsonKey(name: 'push_notification_agree') bool? pushNotificationAgree,
    @JsonKey(name: 'confirmation_method') String? confirmationMethod,
    @JsonKey(name: 'allowed_access_to_personal_account')
    bool? allowedAccessToPersonalAccount,
    @JsonKey(name: 'is_standard_questionnaire_first')
    @Default(false)
    bool? isStandardQuestionnaireFirst,
    @JsonKey(name: 'is_standard_questionnaire_repeated')
    @Default(false)
    bool? isStandardQuestionnaireRepeated,
    @JsonKey(name: 'is_standard_personal_account_first')
    @Default(false)
    bool? isStandardPersonalAccountFirst,
    @JsonKey(name: 'is_standard_personal_account_repeated')
    @Default(false)
    bool? isStandardPersonalAccountRepeated,
    // @JsonKey(name: 'last_loan_approvals') LastLoanApprovals? lastLoanApprovals,
  }) = _ApiUserInfo;
  const ApiUserInfo._();
  factory ApiUserInfo.fromJson(Map<String, dynamic> json) =>
      _$ApiUserInfoFromJson(json);
}

@freezed
class IdLabelValue with _$IdLabelValue {
  factory IdLabelValue({
    int? id,
    String? label,
    String? value,
  }) = _IdLabelValue;
  factory IdLabelValue.fromJson(Map<String, dynamic> json) =>
      _$IdLabelValueFromJson(json);
}

// @freezed
// class LastLoanApprovals with _$LastLoanApprovals {
//   const factory LastLoanApprovals({
//     @JsonKey(name: 'priority_review') bool? priorityReview,
//     @JsonKey(name: 'absolute_insurance') bool? absoluteInsurance,
//     @JsonKey(name: 'collective_insurance') bool? collectiveInsurance,
//     @JsonKey(name: 'stay_in_touch') bool? stayInTouch,
//   }) = _LastLoanApprovals;

//   factory LastLoanApprovals.fromJson(Map<String, Object?> json) =>
//       _$LastLoanApprovalsFromJson(json);
// }
