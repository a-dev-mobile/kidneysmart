// ignore_for_file: invalid_annotation_target, non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'wp_data.freezed.dart';
part 'wp_data.g.dart';

@freezed
class WpData with _$WpData {
  const factory WpData({
    @JsonKey(name: 'calc_pdl_params') List<CalcPdlParams>? calcPdlParams,
    @JsonKey(name: 'docs') Docs? docs,
    @JsonKey(name: 'calc') Calc? calc,
    @JsonKey(name: 'acf') Acf? acf,
    @JsonKey(name: 'footer_menu_title') String? footerMenuTitle,
    @JsonKey(name: 'header_menu') List<HeaderMenu>? headerMenu,
    @JsonKey(name: 'mobile_menu') List<MobileMenu>? mobileMenu,
    @JsonKey(name: 'footer_menu') List<FooterMenu>? footerMenu,
    @JsonKey(name: 'footer_menu_2') List<FooterMenu2>? footerMenu2,
  }) = _WpData;

  factory WpData.fromJson(Map<String, Object?> json) => _$WpDataFromJson(json);
}

@freezed
class CalcPdlParams with _$CalcPdlParams {
  const factory CalcPdlParams({
    @JsonKey(name: 'total_loan') int? totalLoan,
    @JsonKey(name: 'calc_amount') String? calcAmount,
    @JsonKey(name: 'calc_term') String? calcTerm,
  }) = _CalcPdlParams;

  factory CalcPdlParams.fromJson(Map<String, Object?> json) =>
      _$CalcPdlParamsFromJson(json);
}

@freezed
class Docs with _$Docs {
  const factory Docs({
    @JsonKey(name: 'reg_first') RegFirst? regFirst,
    @JsonKey(name: 'reg_second') RegSecond? regSecond,
    @JsonKey(name: 'templates') Templates? templates,
    @JsonKey(name: 'info_page') List<InfoPage>? infoPage,
    @JsonKey(name: 'templates_page') List<TemplatesPage>? templatesPage,
  }) = _Docs;

  factory Docs.fromJson(Map<String, Object?> json) => _$DocsFromJson(json);
}

@freezed
class RegFirst with _$RegFirst {
  const factory RegFirst({
    @JsonKey(name: 'text') String? text,
    @JsonKey(name: 'lines') List<String>? lines,
  }) = _RegFirst;

  factory RegFirst.fromJson(Map<String, Object?> json) =>
      _$RegFirstFromJson(json);
}

@freezed
class RegSecond with _$RegSecond {
  const factory RegSecond({
    @JsonKey(name: 'text') String? text,
    @JsonKey(name: 'lines') List<String>? lines,
  }) = _RegSecond;

  factory RegSecond.fromJson(Map<String, Object?> json) =>
      _$RegSecondFromJson(json);
}

@freezed
class Templates with _$Templates {
  const factory Templates({
    @JsonKey(name: 'agreementCollectiveInsurance')
    AgreementCollectiveInsurance? agreementCollectiveInsurance,
    @JsonKey(name: 'agreementCardProtection')
    AgreementCardProtection? agreementCardProtection,
    @JsonKey(name: 'agreementCardProtectionOffer')
    AgreementCardProtectionOffer? agreementCardProtectionOffer,
    @JsonKey(name: 'agreementCollectiveInsuranceStatement')
    AgreementCollectiveInsuranceStatement?
        agreementCollectiveInsuranceStatement,
    @JsonKey(name: 'agreementStayInTouchStatement')
    AgreementStayInTouchStatement? agreementStayInTouchStatement,
    @JsonKey(name: 'agreementCardProtectionStatement')
    AgreementCardProtectionStatement? agreementCardProtectionStatement,
    @JsonKey(name: 'agreementCollectiveInsuranceKid')
    AgreementCollectiveInsuranceKid? agreementCollectiveInsuranceKid,
    @JsonKey(name: 'agreementCardProtectionKid')
    AgreementCardProtectionKid? agreementCardProtectionKid,
    @JsonKey(name: 'loanRules') LoanRules? loanRules,
    @JsonKey(name: 'programStayInTouch') ProgramStayInTouch? programStayInTouch,
    @JsonKey(name: 'programCollectiveInsurance')
    ProgramCollectiveInsurance? programCollectiveInsurance,
    @JsonKey(name: 'programCardProtection')
    ProgramCardProtection? programCardProtection,
    @JsonKey(name: 'agreementAd') AgreementAd? agreementAd,
    @JsonKey(name: 'agreementCollectiveInsuranceOffer')
    AgreementCollectiveInsuranceOffer? agreementCollectiveInsuranceOffer,
    @JsonKey(name: 'agreementConsentAutoCharge')
    AgreementConsentAutoCharge? agreementConsentAutoCharge,
    @JsonKey(name: 'servicesTariffs') ServicesTariffs? servicesTariffs,
    @JsonKey(name: 'agreementProcessingPersonalData')
    AgreementProcessingPersonalData? agreementProcessingPersonalData,
    @JsonKey(name: 'informationAboutRegistrationProcedure')
    InformationAboutRegistrationProcedure?
        informationAboutRegistrationProcedure,
  }) = _Templates;

  factory Templates.fromJson(Map<String, Object?> json) =>
      _$TemplatesFromJson(json);
}

@freezed
class AgreementCollectiveInsurance with _$AgreementCollectiveInsurance {
  const factory AgreementCollectiveInsurance({
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'title') String? title,
  }) = _AgreementCollectiveInsurance;

  factory AgreementCollectiveInsurance.fromJson(Map<String, Object?> json) =>
      _$AgreementCollectiveInsuranceFromJson(json);
}

@freezed
class AgreementCardProtection with _$AgreementCardProtection {
  const factory AgreementCardProtection({
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'title') String? title,
  }) = _AgreementCardProtection;

  factory AgreementCardProtection.fromJson(Map<String, Object?> json) =>
      _$AgreementCardProtectionFromJson(json);
}

@freezed
class AgreementCardProtectionOffer with _$AgreementCardProtectionOffer {
  const factory AgreementCardProtectionOffer({
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'title') String? title,
  }) = _AgreementCardProtectionOffer;

  factory AgreementCardProtectionOffer.fromJson(Map<String, Object?> json) =>
      _$AgreementCardProtectionOfferFromJson(json);
}

@freezed
class AgreementCollectiveInsuranceStatement
    with _$AgreementCollectiveInsuranceStatement {
  const factory AgreementCollectiveInsuranceStatement({
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'title') String? title,
  }) = _AgreementCollectiveInsuranceStatement;

  factory AgreementCollectiveInsuranceStatement.fromJson(
    Map<String, Object?> json,
  ) =>
      _$AgreementCollectiveInsuranceStatementFromJson(json);
}

@freezed
class AgreementStayInTouchStatement with _$AgreementStayInTouchStatement {
  const factory AgreementStayInTouchStatement({
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'title') String? title,
  }) = _AgreementStayInTouchStatement;

  factory AgreementStayInTouchStatement.fromJson(Map<String, Object?> json) =>
      _$AgreementStayInTouchStatementFromJson(json);
}

@freezed
class AgreementCardProtectionStatement with _$AgreementCardProtectionStatement {
  const factory AgreementCardProtectionStatement({
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'title') String? title,
  }) = _AgreementCardProtectionStatement;

  factory AgreementCardProtectionStatement.fromJson(
    Map<String, Object?> json,
  ) =>
      _$AgreementCardProtectionStatementFromJson(json);
}

@freezed
class AgreementCollectiveInsuranceKid with _$AgreementCollectiveInsuranceKid {
  const factory AgreementCollectiveInsuranceKid({
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'title') String? title,
  }) = _AgreementCollectiveInsuranceKid;

  factory AgreementCollectiveInsuranceKid.fromJson(Map<String, Object?> json) =>
      _$AgreementCollectiveInsuranceKidFromJson(json);
}

@freezed
class AgreementCardProtectionKid with _$AgreementCardProtectionKid {
  const factory AgreementCardProtectionKid({
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'title') String? title,
  }) = _AgreementCardProtectionKid;

  factory AgreementCardProtectionKid.fromJson(Map<String, Object?> json) =>
      _$AgreementCardProtectionKidFromJson(json);
}

@freezed
class LoanRules with _$LoanRules {
  const factory LoanRules({
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'title') String? title,
  }) = _LoanRules;

  factory LoanRules.fromJson(Map<String, Object?> json) =>
      _$LoanRulesFromJson(json);
}

@freezed
class ProgramStayInTouch with _$ProgramStayInTouch {
  const factory ProgramStayInTouch({
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'title') String? title,
  }) = _ProgramStayInTouch;

  factory ProgramStayInTouch.fromJson(Map<String, Object?> json) =>
      _$ProgramStayInTouchFromJson(json);
}

@freezed
class ProgramCollectiveInsurance with _$ProgramCollectiveInsurance {
  const factory ProgramCollectiveInsurance({
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'title') String? title,
  }) = _ProgramCollectiveInsurance;

  factory ProgramCollectiveInsurance.fromJson(Map<String, Object?> json) =>
      _$ProgramCollectiveInsuranceFromJson(json);
}

@freezed
class ProgramCardProtection with _$ProgramCardProtection {
  const factory ProgramCardProtection({
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'title') String? title,
  }) = _ProgramCardProtection;

  factory ProgramCardProtection.fromJson(Map<String, Object?> json) =>
      _$ProgramCardProtectionFromJson(json);
}

@freezed
class AgreementAd with _$AgreementAd {
  const factory AgreementAd({
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'title') String? title,
  }) = _AgreementAd;

  factory AgreementAd.fromJson(Map<String, Object?> json) =>
      _$AgreementAdFromJson(json);
}

@freezed
class AgreementCollectiveInsuranceOffer
    with _$AgreementCollectiveInsuranceOffer {
  const factory AgreementCollectiveInsuranceOffer({
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'title') String? title,
  }) = _AgreementCollectiveInsuranceOffer;

  factory AgreementCollectiveInsuranceOffer.fromJson(
    Map<String, Object?> json,
  ) =>
      _$AgreementCollectiveInsuranceOfferFromJson(json);
}

@freezed
class AgreementConsentAutoCharge with _$AgreementConsentAutoCharge {
  const factory AgreementConsentAutoCharge({
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'title') String? title,
  }) = _AgreementConsentAutoCharge;

  factory AgreementConsentAutoCharge.fromJson(Map<String, Object?> json) =>
      _$AgreementConsentAutoChargeFromJson(json);
}

@freezed
class ServicesTariffs with _$ServicesTariffs {
  const factory ServicesTariffs({
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'title') String? title,
  }) = _ServicesTariffs;

  factory ServicesTariffs.fromJson(Map<String, Object?> json) =>
      _$ServicesTariffsFromJson(json);
}

@freezed
class AgreementProcessingPersonalData with _$AgreementProcessingPersonalData {
  const factory AgreementProcessingPersonalData({
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'title') String? title,
  }) = _AgreementProcessingPersonalData;

  factory AgreementProcessingPersonalData.fromJson(Map<String, Object?> json) =>
      _$AgreementProcessingPersonalDataFromJson(json);
}

@freezed
class InformationAboutRegistrationProcedure
    with _$InformationAboutRegistrationProcedure {
  const factory InformationAboutRegistrationProcedure({
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'title') String? title,
  }) = _InformationAboutRegistrationProcedure;

  factory InformationAboutRegistrationProcedure.fromJson(
    Map<String, Object?> json,
  ) =>
      _$InformationAboutRegistrationProcedureFromJson(json);
}

@freezed
class InfoPage with _$InfoPage {
  const factory InfoPage({
    @JsonKey(name: 'redaction') String? redaction,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'url') String? url,
  }) = _InfoPage;

  factory InfoPage.fromJson(Map<String, Object?> json) =>
      _$InfoPageFromJson(json);
}

@freezed
class TemplatesPage with _$TemplatesPage {
  const factory TemplatesPage({
    @JsonKey(name: 'redaction') String? redaction,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'url') String? url,
  }) = _TemplatesPage;

  factory TemplatesPage.fromJson(Map<String, Object?> json) =>
      _$TemplatesPageFromJson(json);
}

@freezed
class Calc with _$Calc {
  const factory Calc({
    @JsonKey(name: 'tinkoff_enable') bool? tinkoffEnable,
    @JsonKey(name: 'gosuslugi_enable') bool? gosuslugiEnable,
  }) = _Calc;

  factory Calc.fromJson(Map<String, Object?> json) => _$CalcFromJson(json);
}

@freezed
class Acf with _$Acf {
  const factory Acf({
    @JsonKey(name: 'site_hard_banner_text') String? siteHardBannerText,
    @JsonKey(name: 'site_hard_link') String? siteHardLink,
    @JsonKey(name: 'site_soft_link') String? siteSoftLink,
    @JsonKey(name: 'site_hard_timeout') String? siteHardTimeout,
    @JsonKey(name: 'site_soft_timeout') String? siteSoftTimeout,
    @JsonKey(name: 'site_hard_redirect')
    List<SiteHardRedirect>? siteHardRedirect,
    @JsonKey(name: 'site_soft_redirect')
    List<SiteSoftRedirect>? siteSoftRedirect,
    @JsonKey(name: 'partners_link') String? partnersLink,
    @JsonKey(name: 'banner_partner_link') String? bannerPartnerLink,
    @JsonKey(name: 'td_discount') String? tdDiscount,
    @JsonKey(name: 'td_promocode') String? tdPromocode,
    @JsonKey(name: 'phone_support') String? phoneSupport,
    @JsonKey(name: 'footer_title_work') String? footerTitleWork,
    @JsonKey(name: 'footer_title_support') String? footerTitleSupport,
    @JsonKey(name: 'work_time') String? workTime,
    @JsonKey(name: 'rest_days') String? restDays,
    @JsonKey(name: 'work_time_support') String? workTimeSupport,
    @JsonKey(name: 'footer_title_email') String? footerTitleEmail,
    @JsonKey(name: 'footer_title_social') String? footerTitleSocial,
    @JsonKey(name: 'text_under_footer') String? textUnderFooter,
    @JsonKey(name: 'social') List<Social>? social,
    @JsonKey(name: 'credit_heading') String? creditHeading,
    @JsonKey(name: 'credit_no-active') String? creditNoActive,
    @JsonKey(name: 'payment_banner_desk') String? paymentBannerDesk,
    @JsonKey(name: 'payment_banner_mob') String? paymentBannerMob,
    @JsonKey(name: 'other_partners_hard')
    List<OtherPartnersHard>? otherPartnersHard,
    @JsonKey(name: 'other_partners_soft')
    List<OtherPartnersSoft>? otherPartnersSoft,
    @JsonKey(name: 'rejected_by_region')
    List<RejectedByRegion>? rejectedByRegion,
    @JsonKey(name: 'adversite') Adversite? adversite,
  }) = _Acf;

  factory Acf.fromJson(Map<String, Object?> json) => _$AcfFromJson(json);
}

@freezed
class SiteHardRedirect with _$SiteHardRedirect {
  const factory SiteHardRedirect({
    @JsonKey(name: 'link') String? link,
    @JsonKey(name: 'percent') String? percent,
  }) = _SiteHardRedirect;

  factory SiteHardRedirect.fromJson(Map<String, Object?> json) =>
      _$SiteHardRedirectFromJson(json);
}

@freezed
class SiteSoftRedirect with _$SiteSoftRedirect {
  const factory SiteSoftRedirect({
    @JsonKey(name: 'link') String? link,
    @JsonKey(name: 'percent') String? percent,
  }) = _SiteSoftRedirect;

  factory SiteSoftRedirect.fromJson(Map<String, Object?> json) =>
      _$SiteSoftRedirectFromJson(json);
}

@freezed
class Social with _$Social {
  const factory Social({
    @JsonKey(name: 'social_title') String? socialTitle,
    @JsonKey(name: 'social_address') String? socialAddress,
    @JsonKey(name: 'social_icon') String? socialIcon,
  }) = _Social;

  factory Social.fromJson(Map<String, Object?> json) => _$SocialFromJson(json);
}

@freezed
class OtherPartnersHard with _$OtherPartnersHard {
  const factory OtherPartnersHard({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'link') String? link,
    @JsonKey(name: 'icon') String? icon,
    @JsonKey(name: 'rate') String? rate,
    @JsonKey(name: 'sum') String? sum,
    @JsonKey(name: 'term') String? term,
    @JsonKey(name: 'rating') String? rating,
  }) = _OtherPartnersHard;

  factory OtherPartnersHard.fromJson(Map<String, Object?> json) =>
      _$OtherPartnersHardFromJson(json);
}

@freezed
class OtherPartnersSoft with _$OtherPartnersSoft {
  const factory OtherPartnersSoft({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'link') String? link,
    @JsonKey(name: 'icon') String? icon,
    @JsonKey(name: 'rate') String? rate,
    @JsonKey(name: 'sum') String? sum,
    @JsonKey(name: 'term') String? term,
    @JsonKey(name: 'rating') String? rating,
  }) = _OtherPartnersSoft;

  factory OtherPartnersSoft.fromJson(Map<String, Object?> json) =>
      _$OtherPartnersSoftFromJson(json);
}

@freezed
class RejectedByRegion with _$RejectedByRegion {
  const factory RejectedByRegion({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'link') String? link,
    @JsonKey(name: 'text') String? text,
    @JsonKey(name: 'icon') String? icon,
    @JsonKey(name: 'rate') String? rate,
    @JsonKey(name: 'sum') String? sum,
    @JsonKey(name: 'term') String? term,
    @JsonKey(name: 'rating') String? rating,
  }) = _RejectedByRegion;

  factory RejectedByRegion.fromJson(Map<String, Object?> json) =>
      _$RejectedByRegionFromJson(json);
}

@freezed
class Adversite with _$Adversite {
  const factory Adversite({
    @JsonKey(name: 'ID') int? ID,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'filename') String? filename,
    @JsonKey(name: 'filesize') int? filesize,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'link') String? link,
    @JsonKey(name: 'alt') String? alt,
    @JsonKey(name: 'author') String? author,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'caption') String? caption,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'uploaded_to') int? uploadedTo,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'modified') String? modified,
    @JsonKey(name: 'menu_order') int? menuOrder,
    @JsonKey(name: 'mime_type') String? mimeType,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'subtype') String? subtype,
    @JsonKey(name: 'icon') String? icon,
  }) = _Adversite;

  factory Adversite.fromJson(Map<String, Object?> json) =>
      _$AdversiteFromJson(json);
}

@freezed
class HeaderMenu with _$HeaderMenu {
  const factory HeaderMenu({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'items') List<Items>? items,
  }) = _HeaderMenu;

  factory HeaderMenu.fromJson(Map<String, Object?> json) =>
      _$HeaderMenuFromJson(json);
}

@freezed
class Items with _$Items {
  const factory Items({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'url') String? url,
  }) = _Items;

  factory Items.fromJson(Map<String, Object?> json) => _$ItemsFromJson(json);
}

@freezed
class MobileMenu with _$MobileMenu {
  const factory MobileMenu({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'url') String? url,
  }) = _MobileMenu;

  factory MobileMenu.fromJson(Map<String, Object?> json) =>
      _$MobileMenuFromJson(json);
}

@freezed
class FooterMenu with _$FooterMenu {
  const factory FooterMenu({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'url') String? url,
  }) = _FooterMenu;

  factory FooterMenu.fromJson(Map<String, Object?> json) =>
      _$FooterMenuFromJson(json);
}

@freezed
class FooterMenu2 with _$FooterMenu2 {
  const factory FooterMenu2({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'url') String? url,
  }) = _FooterMenu2;

  factory FooterMenu2.fromJson(Map<String, Object?> json) =>
      _$FooterMenu2FromJson(json);
}
