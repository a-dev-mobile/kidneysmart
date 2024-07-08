// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wp_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WpDataImpl _$$WpDataImplFromJson(Map<String, dynamic> json) => _$WpDataImpl(
      calcPdlParams: (json['calc_pdl_params'] as List<dynamic>?)
          ?.map((e) => CalcPdlParams.fromJson(e as Map<String, dynamic>))
          .toList(),
      docs: json['docs'] == null
          ? null
          : Docs.fromJson(json['docs'] as Map<String, dynamic>),
      calc: json['calc'] == null
          ? null
          : Calc.fromJson(json['calc'] as Map<String, dynamic>),
      acf: json['acf'] == null
          ? null
          : Acf.fromJson(json['acf'] as Map<String, dynamic>),
      footerMenuTitle: json['footer_menu_title'] as String?,
      headerMenu: (json['header_menu'] as List<dynamic>?)
          ?.map((e) => HeaderMenu.fromJson(e as Map<String, dynamic>))
          .toList(),
      mobileMenu: (json['mobile_menu'] as List<dynamic>?)
          ?.map((e) => MobileMenu.fromJson(e as Map<String, dynamic>))
          .toList(),
      footerMenu: (json['footer_menu'] as List<dynamic>?)
          ?.map((e) => FooterMenu.fromJson(e as Map<String, dynamic>))
          .toList(),
      footerMenu2: (json['footer_menu_2'] as List<dynamic>?)
          ?.map((e) => FooterMenu2.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WpDataImplToJson(_$WpDataImpl instance) =>
    <String, dynamic>{
      'calc_pdl_params': instance.calcPdlParams,
      'docs': instance.docs,
      'calc': instance.calc,
      'acf': instance.acf,
      'footer_menu_title': instance.footerMenuTitle,
      'header_menu': instance.headerMenu,
      'mobile_menu': instance.mobileMenu,
      'footer_menu': instance.footerMenu,
      'footer_menu_2': instance.footerMenu2,
    };

_$CalcPdlParamsImpl _$$CalcPdlParamsImplFromJson(Map<String, dynamic> json) =>
    _$CalcPdlParamsImpl(
      totalLoan: json['total_loan'] as int?,
      calcAmount: json['calc_amount'] as String?,
      calcTerm: json['calc_term'] as String?,
    );

Map<String, dynamic> _$$CalcPdlParamsImplToJson(_$CalcPdlParamsImpl instance) =>
    <String, dynamic>{
      'total_loan': instance.totalLoan,
      'calc_amount': instance.calcAmount,
      'calc_term': instance.calcTerm,
    };

_$DocsImpl _$$DocsImplFromJson(Map<String, dynamic> json) => _$DocsImpl(
      regFirst: json['reg_first'] == null
          ? null
          : RegFirst.fromJson(json['reg_first'] as Map<String, dynamic>),
      regSecond: json['reg_second'] == null
          ? null
          : RegSecond.fromJson(json['reg_second'] as Map<String, dynamic>),
      templates: json['templates'] == null
          ? null
          : Templates.fromJson(json['templates'] as Map<String, dynamic>),
      infoPage: (json['info_page'] as List<dynamic>?)
          ?.map((e) => InfoPage.fromJson(e as Map<String, dynamic>))
          .toList(),
      templatesPage: (json['templates_page'] as List<dynamic>?)
          ?.map((e) => TemplatesPage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DocsImplToJson(_$DocsImpl instance) =>
    <String, dynamic>{
      'reg_first': instance.regFirst,
      'reg_second': instance.regSecond,
      'templates': instance.templates,
      'info_page': instance.infoPage,
      'templates_page': instance.templatesPage,
    };

_$RegFirstImpl _$$RegFirstImplFromJson(Map<String, dynamic> json) =>
    _$RegFirstImpl(
      text: json['text'] as String?,
      lines:
          (json['lines'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$RegFirstImplToJson(_$RegFirstImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'lines': instance.lines,
    };

_$RegSecondImpl _$$RegSecondImplFromJson(Map<String, dynamic> json) =>
    _$RegSecondImpl(
      text: json['text'] as String?,
      lines:
          (json['lines'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$RegSecondImplToJson(_$RegSecondImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'lines': instance.lines,
    };

_$TemplatesImpl _$$TemplatesImplFromJson(Map<String, dynamic> json) =>
    _$TemplatesImpl(
      agreementCollectiveInsurance: json['agreementCollectiveInsurance'] == null
          ? null
          : AgreementCollectiveInsurance.fromJson(
              json['agreementCollectiveInsurance'] as Map<String, dynamic>),
      agreementCardProtection: json['agreementCardProtection'] == null
          ? null
          : AgreementCardProtection.fromJson(
              json['agreementCardProtection'] as Map<String, dynamic>),
      agreementCardProtectionOffer: json['agreementCardProtectionOffer'] == null
          ? null
          : AgreementCardProtectionOffer.fromJson(
              json['agreementCardProtectionOffer'] as Map<String, dynamic>),
      agreementCollectiveInsuranceStatement:
          json['agreementCollectiveInsuranceStatement'] == null
              ? null
              : AgreementCollectiveInsuranceStatement.fromJson(
                  json['agreementCollectiveInsuranceStatement']
                      as Map<String, dynamic>),
      agreementStayInTouchStatement: json['agreementStayInTouchStatement'] ==
              null
          ? null
          : AgreementStayInTouchStatement.fromJson(
              json['agreementStayInTouchStatement'] as Map<String, dynamic>),
      agreementCardProtectionStatement:
          json['agreementCardProtectionStatement'] == null
              ? null
              : AgreementCardProtectionStatement.fromJson(
                  json['agreementCardProtectionStatement']
                      as Map<String, dynamic>),
      agreementCollectiveInsuranceKid:
          json['agreementCollectiveInsuranceKid'] == null
              ? null
              : AgreementCollectiveInsuranceKid.fromJson(
                  json['agreementCollectiveInsuranceKid']
                      as Map<String, dynamic>),
      agreementCardProtectionKid: json['agreementCardProtectionKid'] == null
          ? null
          : AgreementCardProtectionKid.fromJson(
              json['agreementCardProtectionKid'] as Map<String, dynamic>),
      loanRules: json['loanRules'] == null
          ? null
          : LoanRules.fromJson(json['loanRules'] as Map<String, dynamic>),
      programStayInTouch: json['programStayInTouch'] == null
          ? null
          : ProgramStayInTouch.fromJson(
              json['programStayInTouch'] as Map<String, dynamic>),
      programCollectiveInsurance: json['programCollectiveInsurance'] == null
          ? null
          : ProgramCollectiveInsurance.fromJson(
              json['programCollectiveInsurance'] as Map<String, dynamic>),
      programCardProtection: json['programCardProtection'] == null
          ? null
          : ProgramCardProtection.fromJson(
              json['programCardProtection'] as Map<String, dynamic>),
      agreementAd: json['agreementAd'] == null
          ? null
          : AgreementAd.fromJson(json['agreementAd'] as Map<String, dynamic>),
      agreementCollectiveInsuranceOffer:
          json['agreementCollectiveInsuranceOffer'] == null
              ? null
              : AgreementCollectiveInsuranceOffer.fromJson(
                  json['agreementCollectiveInsuranceOffer']
                      as Map<String, dynamic>),
      agreementConsentAutoCharge: json['agreementConsentAutoCharge'] == null
          ? null
          : AgreementConsentAutoCharge.fromJson(
              json['agreementConsentAutoCharge'] as Map<String, dynamic>),
      servicesTariffs: json['servicesTariffs'] == null
          ? null
          : ServicesTariffs.fromJson(
              json['servicesTariffs'] as Map<String, dynamic>),
      agreementProcessingPersonalData:
          json['agreementProcessingPersonalData'] == null
              ? null
              : AgreementProcessingPersonalData.fromJson(
                  json['agreementProcessingPersonalData']
                      as Map<String, dynamic>),
      informationAboutRegistrationProcedure:
          json['informationAboutRegistrationProcedure'] == null
              ? null
              : InformationAboutRegistrationProcedure.fromJson(
                  json['informationAboutRegistrationProcedure']
                      as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TemplatesImplToJson(_$TemplatesImpl instance) =>
    <String, dynamic>{
      'agreementCollectiveInsurance': instance.agreementCollectiveInsurance,
      'agreementCardProtection': instance.agreementCardProtection,
      'agreementCardProtectionOffer': instance.agreementCardProtectionOffer,
      'agreementCollectiveInsuranceStatement':
          instance.agreementCollectiveInsuranceStatement,
      'agreementStayInTouchStatement': instance.agreementStayInTouchStatement,
      'agreementCardProtectionStatement':
          instance.agreementCardProtectionStatement,
      'agreementCollectiveInsuranceKid':
          instance.agreementCollectiveInsuranceKid,
      'agreementCardProtectionKid': instance.agreementCardProtectionKid,
      'loanRules': instance.loanRules,
      'programStayInTouch': instance.programStayInTouch,
      'programCollectiveInsurance': instance.programCollectiveInsurance,
      'programCardProtection': instance.programCardProtection,
      'agreementAd': instance.agreementAd,
      'agreementCollectiveInsuranceOffer':
          instance.agreementCollectiveInsuranceOffer,
      'agreementConsentAutoCharge': instance.agreementConsentAutoCharge,
      'servicesTariffs': instance.servicesTariffs,
      'agreementProcessingPersonalData':
          instance.agreementProcessingPersonalData,
      'informationAboutRegistrationProcedure':
          instance.informationAboutRegistrationProcedure,
    };

_$AgreementCollectiveInsuranceImpl _$$AgreementCollectiveInsuranceImplFromJson(
        Map<String, dynamic> json) =>
    _$AgreementCollectiveInsuranceImpl(
      url: json['url'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$AgreementCollectiveInsuranceImplToJson(
        _$AgreementCollectiveInsuranceImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
    };

_$AgreementCardProtectionImpl _$$AgreementCardProtectionImplFromJson(
        Map<String, dynamic> json) =>
    _$AgreementCardProtectionImpl(
      url: json['url'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$AgreementCardProtectionImplToJson(
        _$AgreementCardProtectionImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
    };

_$AgreementCardProtectionOfferImpl _$$AgreementCardProtectionOfferImplFromJson(
        Map<String, dynamic> json) =>
    _$AgreementCardProtectionOfferImpl(
      url: json['url'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$AgreementCardProtectionOfferImplToJson(
        _$AgreementCardProtectionOfferImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
    };

_$AgreementCollectiveInsuranceStatementImpl
    _$$AgreementCollectiveInsuranceStatementImplFromJson(
            Map<String, dynamic> json) =>
        _$AgreementCollectiveInsuranceStatementImpl(
          url: json['url'] as String?,
          title: json['title'] as String?,
        );

Map<String, dynamic> _$$AgreementCollectiveInsuranceStatementImplToJson(
        _$AgreementCollectiveInsuranceStatementImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
    };

_$AgreementStayInTouchStatementImpl
    _$$AgreementStayInTouchStatementImplFromJson(Map<String, dynamic> json) =>
        _$AgreementStayInTouchStatementImpl(
          url: json['url'] as String?,
          title: json['title'] as String?,
        );

Map<String, dynamic> _$$AgreementStayInTouchStatementImplToJson(
        _$AgreementStayInTouchStatementImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
    };

_$AgreementCardProtectionStatementImpl
    _$$AgreementCardProtectionStatementImplFromJson(
            Map<String, dynamic> json) =>
        _$AgreementCardProtectionStatementImpl(
          url: json['url'] as String?,
          title: json['title'] as String?,
        );

Map<String, dynamic> _$$AgreementCardProtectionStatementImplToJson(
        _$AgreementCardProtectionStatementImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
    };

_$AgreementCollectiveInsuranceKidImpl
    _$$AgreementCollectiveInsuranceKidImplFromJson(Map<String, dynamic> json) =>
        _$AgreementCollectiveInsuranceKidImpl(
          url: json['url'] as String?,
          title: json['title'] as String?,
        );

Map<String, dynamic> _$$AgreementCollectiveInsuranceKidImplToJson(
        _$AgreementCollectiveInsuranceKidImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
    };

_$AgreementCardProtectionKidImpl _$$AgreementCardProtectionKidImplFromJson(
        Map<String, dynamic> json) =>
    _$AgreementCardProtectionKidImpl(
      url: json['url'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$AgreementCardProtectionKidImplToJson(
        _$AgreementCardProtectionKidImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
    };

_$LoanRulesImpl _$$LoanRulesImplFromJson(Map<String, dynamic> json) =>
    _$LoanRulesImpl(
      url: json['url'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$LoanRulesImplToJson(_$LoanRulesImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
    };

_$ProgramStayInTouchImpl _$$ProgramStayInTouchImplFromJson(
        Map<String, dynamic> json) =>
    _$ProgramStayInTouchImpl(
      url: json['url'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$ProgramStayInTouchImplToJson(
        _$ProgramStayInTouchImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
    };

_$ProgramCollectiveInsuranceImpl _$$ProgramCollectiveInsuranceImplFromJson(
        Map<String, dynamic> json) =>
    _$ProgramCollectiveInsuranceImpl(
      url: json['url'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$ProgramCollectiveInsuranceImplToJson(
        _$ProgramCollectiveInsuranceImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
    };

_$ProgramCardProtectionImpl _$$ProgramCardProtectionImplFromJson(
        Map<String, dynamic> json) =>
    _$ProgramCardProtectionImpl(
      url: json['url'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$ProgramCardProtectionImplToJson(
        _$ProgramCardProtectionImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
    };

_$AgreementAdImpl _$$AgreementAdImplFromJson(Map<String, dynamic> json) =>
    _$AgreementAdImpl(
      url: json['url'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$AgreementAdImplToJson(_$AgreementAdImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
    };

_$AgreementCollectiveInsuranceOfferImpl
    _$$AgreementCollectiveInsuranceOfferImplFromJson(
            Map<String, dynamic> json) =>
        _$AgreementCollectiveInsuranceOfferImpl(
          url: json['url'] as String?,
          title: json['title'] as String?,
        );

Map<String, dynamic> _$$AgreementCollectiveInsuranceOfferImplToJson(
        _$AgreementCollectiveInsuranceOfferImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
    };

_$AgreementConsentAutoChargeImpl _$$AgreementConsentAutoChargeImplFromJson(
        Map<String, dynamic> json) =>
    _$AgreementConsentAutoChargeImpl(
      url: json['url'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$AgreementConsentAutoChargeImplToJson(
        _$AgreementConsentAutoChargeImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
    };

_$ServicesTariffsImpl _$$ServicesTariffsImplFromJson(
        Map<String, dynamic> json) =>
    _$ServicesTariffsImpl(
      url: json['url'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$ServicesTariffsImplToJson(
        _$ServicesTariffsImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
    };

_$AgreementProcessingPersonalDataImpl
    _$$AgreementProcessingPersonalDataImplFromJson(Map<String, dynamic> json) =>
        _$AgreementProcessingPersonalDataImpl(
          url: json['url'] as String?,
          title: json['title'] as String?,
        );

Map<String, dynamic> _$$AgreementProcessingPersonalDataImplToJson(
        _$AgreementProcessingPersonalDataImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
    };

_$InformationAboutRegistrationProcedureImpl
    _$$InformationAboutRegistrationProcedureImplFromJson(
            Map<String, dynamic> json) =>
        _$InformationAboutRegistrationProcedureImpl(
          url: json['url'] as String?,
          title: json['title'] as String?,
        );

Map<String, dynamic> _$$InformationAboutRegistrationProcedureImplToJson(
        _$InformationAboutRegistrationProcedureImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
    };

_$InfoPageImpl _$$InfoPageImplFromJson(Map<String, dynamic> json) =>
    _$InfoPageImpl(
      redaction: json['redaction'] as String?,
      title: json['title'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$InfoPageImplToJson(_$InfoPageImpl instance) =>
    <String, dynamic>{
      'redaction': instance.redaction,
      'title': instance.title,
      'url': instance.url,
    };

_$TemplatesPageImpl _$$TemplatesPageImplFromJson(Map<String, dynamic> json) =>
    _$TemplatesPageImpl(
      redaction: json['redaction'] as String?,
      title: json['title'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$TemplatesPageImplToJson(_$TemplatesPageImpl instance) =>
    <String, dynamic>{
      'redaction': instance.redaction,
      'title': instance.title,
      'url': instance.url,
    };

_$CalcImpl _$$CalcImplFromJson(Map<String, dynamic> json) => _$CalcImpl(
      tinkoffEnable: json['tinkoff_enable'] as bool?,
      gosuslugiEnable: json['gosuslugi_enable'] as bool?,
    );

Map<String, dynamic> _$$CalcImplToJson(_$CalcImpl instance) =>
    <String, dynamic>{
      'tinkoff_enable': instance.tinkoffEnable,
      'gosuslugi_enable': instance.gosuslugiEnable,
    };

_$AcfImpl _$$AcfImplFromJson(Map<String, dynamic> json) => _$AcfImpl(
      siteHardBannerText: json['site_hard_banner_text'] as String?,
      siteHardLink: json['site_hard_link'] as String?,
      siteSoftLink: json['site_soft_link'] as String?,
      siteHardTimeout: json['site_hard_timeout'] as String?,
      siteSoftTimeout: json['site_soft_timeout'] as String?,
      siteHardRedirect: (json['site_hard_redirect'] as List<dynamic>?)
          ?.map((e) => SiteHardRedirect.fromJson(e as Map<String, dynamic>))
          .toList(),
      siteSoftRedirect: (json['site_soft_redirect'] as List<dynamic>?)
          ?.map((e) => SiteSoftRedirect.fromJson(e as Map<String, dynamic>))
          .toList(),
      partnersLink: json['partners_link'] as String?,
      bannerPartnerLink: json['banner_partner_link'] as String?,
      tdDiscount: json['td_discount'] as String?,
      tdPromocode: json['td_promocode'] as String?,
      phoneSupport: json['phone_support'] as String?,
      footerTitleWork: json['footer_title_work'] as String?,
      footerTitleSupport: json['footer_title_support'] as String?,
      workTime: json['work_time'] as String?,
      restDays: json['rest_days'] as String?,
      workTimeSupport: json['work_time_support'] as String?,
      footerTitleEmail: json['footer_title_email'] as String?,
      footerTitleSocial: json['footer_title_social'] as String?,
      textUnderFooter: json['text_under_footer'] as String?,
      social: (json['social'] as List<dynamic>?)
          ?.map((e) => Social.fromJson(e as Map<String, dynamic>))
          .toList(),
      creditHeading: json['credit_heading'] as String?,
      creditNoActive: json['credit_no-active'] as String?,
      paymentBannerDesk: json['payment_banner_desk'] as String?,
      paymentBannerMob: json['payment_banner_mob'] as String?,
      otherPartnersHard: (json['other_partners_hard'] as List<dynamic>?)
          ?.map((e) => OtherPartnersHard.fromJson(e as Map<String, dynamic>))
          .toList(),
      otherPartnersSoft: (json['other_partners_soft'] as List<dynamic>?)
          ?.map((e) => OtherPartnersSoft.fromJson(e as Map<String, dynamic>))
          .toList(),
      rejectedByRegion: (json['rejected_by_region'] as List<dynamic>?)
          ?.map((e) => RejectedByRegion.fromJson(e as Map<String, dynamic>))
          .toList(),
      adversite: json['adversite'] == null
          ? null
          : Adversite.fromJson(json['adversite'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AcfImplToJson(_$AcfImpl instance) => <String, dynamic>{
      'site_hard_banner_text': instance.siteHardBannerText,
      'site_hard_link': instance.siteHardLink,
      'site_soft_link': instance.siteSoftLink,
      'site_hard_timeout': instance.siteHardTimeout,
      'site_soft_timeout': instance.siteSoftTimeout,
      'site_hard_redirect': instance.siteHardRedirect,
      'site_soft_redirect': instance.siteSoftRedirect,
      'partners_link': instance.partnersLink,
      'banner_partner_link': instance.bannerPartnerLink,
      'td_discount': instance.tdDiscount,
      'td_promocode': instance.tdPromocode,
      'phone_support': instance.phoneSupport,
      'footer_title_work': instance.footerTitleWork,
      'footer_title_support': instance.footerTitleSupport,
      'work_time': instance.workTime,
      'rest_days': instance.restDays,
      'work_time_support': instance.workTimeSupport,
      'footer_title_email': instance.footerTitleEmail,
      'footer_title_social': instance.footerTitleSocial,
      'text_under_footer': instance.textUnderFooter,
      'social': instance.social,
      'credit_heading': instance.creditHeading,
      'credit_no-active': instance.creditNoActive,
      'payment_banner_desk': instance.paymentBannerDesk,
      'payment_banner_mob': instance.paymentBannerMob,
      'other_partners_hard': instance.otherPartnersHard,
      'other_partners_soft': instance.otherPartnersSoft,
      'rejected_by_region': instance.rejectedByRegion,
      'adversite': instance.adversite,
    };

_$SiteHardRedirectImpl _$$SiteHardRedirectImplFromJson(
        Map<String, dynamic> json) =>
    _$SiteHardRedirectImpl(
      link: json['link'] as String?,
      percent: json['percent'] as String?,
    );

Map<String, dynamic> _$$SiteHardRedirectImplToJson(
        _$SiteHardRedirectImpl instance) =>
    <String, dynamic>{
      'link': instance.link,
      'percent': instance.percent,
    };

_$SiteSoftRedirectImpl _$$SiteSoftRedirectImplFromJson(
        Map<String, dynamic> json) =>
    _$SiteSoftRedirectImpl(
      link: json['link'] as String?,
      percent: json['percent'] as String?,
    );

Map<String, dynamic> _$$SiteSoftRedirectImplToJson(
        _$SiteSoftRedirectImpl instance) =>
    <String, dynamic>{
      'link': instance.link,
      'percent': instance.percent,
    };

_$SocialImpl _$$SocialImplFromJson(Map<String, dynamic> json) => _$SocialImpl(
      socialTitle: json['social_title'] as String?,
      socialAddress: json['social_address'] as String?,
      socialIcon: json['social_icon'] as String?,
    );

Map<String, dynamic> _$$SocialImplToJson(_$SocialImpl instance) =>
    <String, dynamic>{
      'social_title': instance.socialTitle,
      'social_address': instance.socialAddress,
      'social_icon': instance.socialIcon,
    };

_$OtherPartnersHardImpl _$$OtherPartnersHardImplFromJson(
        Map<String, dynamic> json) =>
    _$OtherPartnersHardImpl(
      title: json['title'] as String?,
      link: json['link'] as String?,
      icon: json['icon'] as String?,
      rate: json['rate'] as String?,
      sum: json['sum'] as String?,
      term: json['term'] as String?,
      rating: json['rating'] as String?,
    );

Map<String, dynamic> _$$OtherPartnersHardImplToJson(
        _$OtherPartnersHardImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'icon': instance.icon,
      'rate': instance.rate,
      'sum': instance.sum,
      'term': instance.term,
      'rating': instance.rating,
    };

_$OtherPartnersSoftImpl _$$OtherPartnersSoftImplFromJson(
        Map<String, dynamic> json) =>
    _$OtherPartnersSoftImpl(
      title: json['title'] as String?,
      link: json['link'] as String?,
      icon: json['icon'] as String?,
      rate: json['rate'] as String?,
      sum: json['sum'] as String?,
      term: json['term'] as String?,
      rating: json['rating'] as String?,
    );

Map<String, dynamic> _$$OtherPartnersSoftImplToJson(
        _$OtherPartnersSoftImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'icon': instance.icon,
      'rate': instance.rate,
      'sum': instance.sum,
      'term': instance.term,
      'rating': instance.rating,
    };

_$RejectedByRegionImpl _$$RejectedByRegionImplFromJson(
        Map<String, dynamic> json) =>
    _$RejectedByRegionImpl(
      title: json['title'] as String?,
      link: json['link'] as String?,
      text: json['text'] as String?,
      icon: json['icon'] as String?,
      rate: json['rate'] as String?,
      sum: json['sum'] as String?,
      term: json['term'] as String?,
      rating: json['rating'] as String?,
    );

Map<String, dynamic> _$$RejectedByRegionImplToJson(
        _$RejectedByRegionImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'text': instance.text,
      'icon': instance.icon,
      'rate': instance.rate,
      'sum': instance.sum,
      'term': instance.term,
      'rating': instance.rating,
    };

_$AdversiteImpl _$$AdversiteImplFromJson(Map<String, dynamic> json) =>
    _$AdversiteImpl(
      ID: json['ID'] as int?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      filename: json['filename'] as String?,
      filesize: json['filesize'] as int?,
      url: json['url'] as String?,
      link: json['link'] as String?,
      alt: json['alt'] as String?,
      author: json['author'] as String?,
      description: json['description'] as String?,
      caption: json['caption'] as String?,
      name: json['name'] as String?,
      status: json['status'] as String?,
      uploadedTo: json['uploaded_to'] as int?,
      date: json['date'] as String?,
      modified: json['modified'] as String?,
      menuOrder: json['menu_order'] as int?,
      mimeType: json['mime_type'] as String?,
      type: json['type'] as String?,
      subtype: json['subtype'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$AdversiteImplToJson(_$AdversiteImpl instance) =>
    <String, dynamic>{
      'ID': instance.ID,
      'id': instance.id,
      'title': instance.title,
      'filename': instance.filename,
      'filesize': instance.filesize,
      'url': instance.url,
      'link': instance.link,
      'alt': instance.alt,
      'author': instance.author,
      'description': instance.description,
      'caption': instance.caption,
      'name': instance.name,
      'status': instance.status,
      'uploaded_to': instance.uploadedTo,
      'date': instance.date,
      'modified': instance.modified,
      'menu_order': instance.menuOrder,
      'mime_type': instance.mimeType,
      'type': instance.type,
      'subtype': instance.subtype,
      'icon': instance.icon,
    };

_$HeaderMenuImpl _$$HeaderMenuImplFromJson(Map<String, dynamic> json) =>
    _$HeaderMenuImpl(
      id: json['id'] as int?,
      title: json['title'] as String?,
      url: json['url'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Items.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HeaderMenuImplToJson(_$HeaderMenuImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'items': instance.items,
    };

_$ItemsImpl _$$ItemsImplFromJson(Map<String, dynamic> json) => _$ItemsImpl(
      id: json['id'] as int?,
      title: json['title'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$ItemsImplToJson(_$ItemsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
    };

_$MobileMenuImpl _$$MobileMenuImplFromJson(Map<String, dynamic> json) =>
    _$MobileMenuImpl(
      id: json['id'] as int?,
      title: json['title'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$MobileMenuImplToJson(_$MobileMenuImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
    };

_$FooterMenuImpl _$$FooterMenuImplFromJson(Map<String, dynamic> json) =>
    _$FooterMenuImpl(
      id: json['id'] as int?,
      title: json['title'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$FooterMenuImplToJson(_$FooterMenuImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
    };

_$FooterMenu2Impl _$$FooterMenu2ImplFromJson(Map<String, dynamic> json) =>
    _$FooterMenu2Impl(
      id: json['id'] as int?,
      title: json['title'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$FooterMenu2ImplToJson(_$FooterMenu2Impl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
    };
