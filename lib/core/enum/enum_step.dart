// turnGen

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

enum EnumStep implements Comparable<EnumStep> {
  mob_step_phone('mob_step_phone'),
  mob_step_phone_old('mob_step_phone_old'),
  mob_step_personal_data('mob_step_personal_data'),
  mob_step_1_phone_old('mob_step_1_phone_old'),
  mob_step_1_phone_old_re('mob_step_1_phone_old_re'),
  mob_step_1_phone_saved('mob_step_1_phone_saved'),
  mob_step_1_1_phone_change('mob_step_1.1_phone_change'),

  mob_step_2_1_calculator('mob_step_2.1_calculator'),
  mob_step_2_phone_confirmed('mob_step_2_phone_confirmed'),
  mob_step_3_personal_info('mob_step_3_personal_info'),
  mob_step_4_pasport_info('mob_step_4_pasport_info'),
  mob_step_5_reg_address('mob_step_5_reg_address'),
  mob_step_6_job_info('mob_step_6_job_info'),
  mob_step_7_contact_person('mob_step_7_contact_person'),
  mob_step_8_card_added('mob_step_8_card_added'),
  mob_step_9_photo_upload('mob_step_9_photo_upload'),
  mob_step_9_photo_reupload('mob_step_9_photo_reupload'),
  mob_loan_request('mob_loan_request'),
  mob_loan_approved_new('mob_loan_approved_new'),
  mob_loan_approved_new_no('mob_loan_approved_new_no'),
  mob_loan_approved_new_yes('mob_loan_approved_new_yes'),
  mob_loan_approved_old('mob_loan_approved_old'),
  mob_loan_approved_old_no('mob_loan_approved_old_no'),
  mob_loan_approved_old_yes('mob_loan_approved_old_yes'),
  mob_loan_request_old('mob_loan_request_old'),
  web_step_1('Step1'),
  web_step_2('Step2'),
  web_step_3('Step3'),
  web_step_4('Step4'),
  web_step_5('Step5'),
  web_step_6('Step6'),
  web_step_7('Step7'),
  web_step_8('Step8'),
  web_step_9('Step9'),
  web_step_10('Step10');

  const EnumStep(this.name);
  final String name;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumStep fromName(
    String? name, {
    EnumStep? fallback,
  }) {
    switch (name) {
      case 'mob_step_phone':
        return mob_step_phone;
      case 'mob_step_phone_old':
        return mob_step_phone_old;
      case 'mob_step_personal_data':
        return mob_step_personal_data;
      case 'mob_step_1_phone_old':
        return mob_step_1_phone_old;
      case 'mob_step_1_phone_old_re':
        return mob_step_1_phone_old_re;
      case 'mob_step_1_phone_saved':
        return mob_step_1_phone_saved;
      case 'mob_step_1.1_phone_change':
        return mob_step_1_1_phone_change;
      case 'mob_step_2.1_calculator':
        return mob_step_2_1_calculator;
      case 'mob_step_2_phone_confirmed':
        return mob_step_2_phone_confirmed;
      case 'mob_step_3_personal_info':
        return mob_step_3_personal_info;
      case 'mob_step_4_pasport_info':
        return mob_step_4_pasport_info;
      case 'mob_step_5_reg_address':
        return mob_step_5_reg_address;
      case 'mob_step_6_job_info':
        return mob_step_6_job_info;
      case 'mob_step_7_contact_person':
        return mob_step_7_contact_person;
      case 'mob_step_8_card_added':
        return mob_step_8_card_added;
      case 'mob_step_9_photo_upload':
        return mob_step_9_photo_upload;
      case 'mob_step_9_photo_reupload':
        return mob_step_9_photo_reupload;
      case 'mob_loan_request':
        return mob_loan_request;
      case 'mob_loan_approved_new':
        return mob_loan_approved_new;
      case 'mob_loan_approved_new_no':
        return mob_loan_approved_new_no;
      case 'mob_loan_approved_new_yes':
        return mob_loan_approved_new_yes;
      case 'mob_loan_approved_old':
        return mob_loan_approved_old;
      case 'mob_loan_approved_old_no':
        return mob_loan_approved_old_no;
      case 'mob_loan_approved_old_yes':
        return mob_loan_approved_old_yes;
      case 'mob_loan_request_old':
        return mob_loan_request_old;
      case 'Step1':
        return web_step_1;
      case 'Step2':
        return web_step_2;
      case 'Step3':
        return web_step_3;
      case 'Step4':
        return web_step_4;
      case 'Step5':
        return web_step_5;
      case 'Step6':
        return web_step_6;
      case 'Step7':
        return web_step_7;
      case 'Step8':
        return web_step_8;
      case 'Step9':
        return web_step_9;
      case 'Step10':
        return web_step_10;
      default:
        return fallback ??
            (throw ArgumentError.value(
              name,
              'name',
              'Value not found in EnumStep',
            ));
    }
  }

  static EnumStep? fromNameOrNull(
    String? name,
  ) {
    switch (name) {
      case 'mob_step_phone':
        return mob_step_phone;
      case 'mob_step_phone_old':
        return mob_step_phone_old;
      case 'mob_step_personal_data':
        return mob_step_personal_data;
      case 'mob_step_1_phone_old':
        return mob_step_1_phone_old;
      case 'mob_step_1_phone_old_re':
        return mob_step_1_phone_old_re;
      case 'mob_step_1_phone_saved':
        return mob_step_1_phone_saved;
      case 'mob_step_1.1_phone_change':
        return mob_step_1_1_phone_change;
      case 'mob_step_2.1_calculator':
        return mob_step_2_1_calculator;
      case 'mob_step_2_phone_confirmed':
        return mob_step_2_phone_confirmed;
      case 'mob_step_3_personal_info':
        return mob_step_3_personal_info;
      case 'mob_step_4_pasport_info':
        return mob_step_4_pasport_info;
      case 'mob_step_5_reg_address':
        return mob_step_5_reg_address;
      case 'mob_step_6_job_info':
        return mob_step_6_job_info;
      case 'mob_step_7_contact_person':
        return mob_step_7_contact_person;
      case 'mob_step_8_card_added':
        return mob_step_8_card_added;
      case 'mob_step_9_photo_upload':
        return mob_step_9_photo_upload;
      case 'mob_step_9_photo_reupload':
        return mob_step_9_photo_reupload;
      case 'mob_loan_request':
        return mob_loan_request;
      case 'mob_loan_approved_new':
        return mob_loan_approved_new;
      case 'mob_loan_approved_new_no':
        return mob_loan_approved_new_no;
      case 'mob_loan_approved_new_yes':
        return mob_loan_approved_new_yes;
      case 'mob_loan_approved_old':
        return mob_loan_approved_old;
      case 'mob_loan_approved_old_no':
        return mob_loan_approved_old_no;
      case 'mob_loan_approved_old_yes':
        return mob_loan_approved_old_yes;
      case 'mob_loan_request_old':
        return mob_loan_request_old;
      case 'Step1':
        return web_step_1;
      case 'Step2':
        return web_step_2;
      case 'Step3':
        return web_step_3;
      case 'Step4':
        return web_step_4;
      case 'Step5':
        return web_step_5;
      case 'Step6':
        return web_step_6;
      case 'Step7':
        return web_step_7;
      case 'Step8':
        return web_step_8;
      case 'Step9':
        return web_step_9;
      case 'Step10':
        return web_step_10;
      default:
        return null;
    }
  }

  T map<T>({
    required T Function() mob_step_phone,
    required T Function() mob_step_phone_old,
    required T Function() mob_step_personal_data,
    required T Function() mob_step_1_phone_old,
    required T Function() mob_step_1_phone_old_re,
    required T Function() mob_step_1_phone_saved,
    required T Function() mob_step_1_1_phone_change,
    required T Function() mob_step_2_1_calculator,
    required T Function() mob_step_2_phone_confirmed,
    required T Function() mob_step_3_personal_info,
    required T Function() mob_step_4_pasport_info,
    required T Function() mob_step_5_reg_address,
    required T Function() mob_step_6_job_info,
    required T Function() mob_step_7_contact_person,
    required T Function() mob_step_8_card_added,
    required T Function() mob_step_9_photo_upload,
    required T Function() mob_step_9_photo_reupload,
    required T Function() mob_loan_request,
    required T Function() mob_loan_approved_new,
    required T Function() mob_loan_approved_new_no,
    required T Function() mob_loan_approved_new_yes,
    required T Function() mob_loan_approved_old,
    required T Function() mob_loan_approved_old_no,
    required T Function() mob_loan_approved_old_yes,
    required T Function() mob_loan_request_old,
    required T Function() web_step_1,
    required T Function() web_step_2,
    required T Function() web_step_3,
    required T Function() web_step_4,
    required T Function() web_step_5,
    required T Function() web_step_6,
    required T Function() web_step_7,
    required T Function() web_step_8,
    required T Function() web_step_9,
    required T Function() web_step_10,
  }) {
    switch (this) {
      case EnumStep.mob_step_phone:
        return mob_step_phone();
      case EnumStep.mob_step_phone_old:
        return mob_step_phone_old();
      case EnumStep.mob_step_personal_data:
        return mob_step_personal_data();
      case EnumStep.mob_step_1_phone_old:
        return mob_step_1_phone_old();
      case EnumStep.mob_step_1_phone_old_re:
        return mob_step_1_phone_old_re();
      case EnumStep.mob_step_1_phone_saved:
        return mob_step_1_phone_saved();
      case EnumStep.mob_step_1_1_phone_change:
        return mob_step_1_1_phone_change();
      case EnumStep.mob_step_2_1_calculator:
        return mob_step_2_1_calculator();
      case EnumStep.mob_step_2_phone_confirmed:
        return mob_step_2_phone_confirmed();
      case EnumStep.mob_step_3_personal_info:
        return mob_step_3_personal_info();
      case EnumStep.mob_step_4_pasport_info:
        return mob_step_4_pasport_info();
      case EnumStep.mob_step_5_reg_address:
        return mob_step_5_reg_address();
      case EnumStep.mob_step_6_job_info:
        return mob_step_6_job_info();
      case EnumStep.mob_step_7_contact_person:
        return mob_step_7_contact_person();
      case EnumStep.mob_step_8_card_added:
        return mob_step_8_card_added();
      case EnumStep.mob_step_9_photo_upload:
        return mob_step_9_photo_upload();
      case EnumStep.mob_step_9_photo_reupload:
        return mob_step_9_photo_reupload();
      case EnumStep.mob_loan_request:
        return mob_loan_request();
      case EnumStep.mob_loan_approved_new:
        return mob_loan_approved_new();
      case EnumStep.mob_loan_approved_new_no:
        return mob_loan_approved_new_no();
      case EnumStep.mob_loan_approved_new_yes:
        return mob_loan_approved_new_yes();
      case EnumStep.mob_loan_approved_old:
        return mob_loan_approved_old();
      case EnumStep.mob_loan_approved_old_no:
        return mob_loan_approved_old_no();
      case EnumStep.mob_loan_approved_old_yes:
        return mob_loan_approved_old_yes();
      case EnumStep.mob_loan_request_old:
        return mob_loan_request_old();
      case EnumStep.web_step_1:
        return web_step_1();
      case EnumStep.web_step_2:
        return web_step_2();
      case EnumStep.web_step_3:
        return web_step_3();
      case EnumStep.web_step_4:
        return web_step_4();
      case EnumStep.web_step_5:
        return web_step_5();
      case EnumStep.web_step_6:
        return web_step_6();
      case EnumStep.web_step_7:
        return web_step_7();
      case EnumStep.web_step_8:
        return web_step_8();
      case EnumStep.web_step_9:
        return web_step_9();
      case EnumStep.web_step_10:
        return web_step_10();
    }
  }

  T mapValue<T>({
    required T mob_step_phone,
    required T mob_step_phone_old,
    required T mob_step_personal_data,
    required T mob_step_1_phone_old,
    required T mob_step_1_phone_old_re,
    required T mob_step_1_phone_saved,
    required T mob_step_1_1_phone_change,
    required T mob_step_2_1_calculator,
    required T mob_step_2_phone_confirmed,
    required T mob_step_3_personal_info,
    required T mob_step_4_pasport_info,
    required T mob_step_5_reg_address,
    required T mob_step_6_job_info,
    required T mob_step_7_contact_person,
    required T mob_step_8_card_added,
    required T mob_step_9_photo_upload,
    required T mob_step_9_photo_reupload,
    required T mob_loan_request,
    required T mob_loan_approved_new,
    required T mob_loan_approved_new_no,
    required T mob_loan_approved_new_yes,
    required T mob_loan_approved_old,
    required T mob_loan_approved_old_no,
    required T mob_loan_approved_old_yes,
    required T mob_loan_request_old,
    required T web_step_1,
    required T web_step_2,
    required T web_step_3,
    required T web_step_4,
    required T web_step_5,
    required T web_step_6,
    required T web_step_7,
    required T web_step_8,
    required T web_step_9,
    required T web_step_10,
  }) {
    switch (this) {
      case EnumStep.mob_step_phone:
        return mob_step_phone;
      case EnumStep.mob_step_phone_old:
        return mob_step_phone_old;
      case EnumStep.mob_step_personal_data:
        return mob_step_personal_data;
      case EnumStep.mob_step_1_phone_old:
        return mob_step_1_phone_old;
      case EnumStep.mob_step_1_phone_old_re:
        return mob_step_1_phone_old_re;
      case EnumStep.mob_step_1_phone_saved:
        return mob_step_1_phone_saved;
      case EnumStep.mob_step_1_1_phone_change:
        return mob_step_1_1_phone_change;
      case EnumStep.mob_step_2_1_calculator:
        return mob_step_2_1_calculator;
      case EnumStep.mob_step_2_phone_confirmed:
        return mob_step_2_phone_confirmed;
      case EnumStep.mob_step_3_personal_info:
        return mob_step_3_personal_info;
      case EnumStep.mob_step_4_pasport_info:
        return mob_step_4_pasport_info;
      case EnumStep.mob_step_5_reg_address:
        return mob_step_5_reg_address;
      case EnumStep.mob_step_6_job_info:
        return mob_step_6_job_info;
      case EnumStep.mob_step_7_contact_person:
        return mob_step_7_contact_person;
      case EnumStep.mob_step_8_card_added:
        return mob_step_8_card_added;
      case EnumStep.mob_step_9_photo_upload:
        return mob_step_9_photo_upload;
      case EnumStep.mob_step_9_photo_reupload:
        return mob_step_9_photo_reupload;
      case EnumStep.mob_loan_request:
        return mob_loan_request;
      case EnumStep.mob_loan_approved_new:
        return mob_loan_approved_new;
      case EnumStep.mob_loan_approved_new_no:
        return mob_loan_approved_new_no;
      case EnumStep.mob_loan_approved_new_yes:
        return mob_loan_approved_new_yes;
      case EnumStep.mob_loan_approved_old:
        return mob_loan_approved_old;
      case EnumStep.mob_loan_approved_old_no:
        return mob_loan_approved_old_no;
      case EnumStep.mob_loan_approved_old_yes:
        return mob_loan_approved_old_yes;
      case EnumStep.mob_loan_request_old:
        return mob_loan_request_old;
      case EnumStep.web_step_1:
        return web_step_1;
      case EnumStep.web_step_2:
        return web_step_2;
      case EnumStep.web_step_3:
        return web_step_3;
      case EnumStep.web_step_4:
        return web_step_4;
      case EnumStep.web_step_5:
        return web_step_5;
      case EnumStep.web_step_6:
        return web_step_6;
      case EnumStep.web_step_7:
        return web_step_7;
      case EnumStep.web_step_8:
        return web_step_8;
      case EnumStep.web_step_9:
        return web_step_9;
      case EnumStep.web_step_10:
        return web_step_10;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? mob_step_phone,
    T Function()? mob_step_phone_old,
    T Function()? mob_step_personal_data,
    T Function()? mob_step_1_phone_old,
    T Function()? mob_step_1_phone_old_re,
    T Function()? mob_step_1_phone_saved,
    T Function()? mob_step_1_1_phone_change,
    T Function()? mob_step_2_1_calculator,
    T Function()? mob_step_2_phone_confirmed,
    T Function()? mob_step_3_personal_info,
    T Function()? mob_step_4_pasport_info,
    T Function()? mob_step_5_reg_address,
    T Function()? mob_step_6_job_info,
    T Function()? mob_step_7_contact_person,
    T Function()? mob_step_8_card_added,
    T Function()? mob_step_9_photo_upload,
    T Function()? mob_step_9_photo_reupload,
    T Function()? mob_loan_request,
    T Function()? mob_loan_approved_new,
    T Function()? mob_loan_approved_new_no,
    T Function()? mob_loan_approved_new_yes,
    T Function()? mob_loan_approved_old,
    T Function()? mob_loan_approved_old_no,
    T Function()? mob_loan_approved_old_yes,
    T Function()? mob_loan_request_old,
    T Function()? web_step_1,
    T Function()? web_step_2,
    T Function()? web_step_3,
    T Function()? web_step_4,
    T Function()? web_step_5,
    T Function()? web_step_6,
    T Function()? web_step_7,
    T Function()? web_step_8,
    T Function()? web_step_9,
    T Function()? web_step_10,
  }) =>
      map<T>(
        mob_step_phone: mob_step_phone ?? orElse,
        mob_step_phone_old: mob_step_phone_old ?? orElse,
        mob_step_personal_data: mob_step_personal_data ?? orElse,
        mob_step_1_phone_old: mob_step_1_phone_old ?? orElse,
        mob_step_1_phone_old_re: mob_step_1_phone_old_re ?? orElse,
        mob_step_1_phone_saved: mob_step_1_phone_saved ?? orElse,
        mob_step_1_1_phone_change: mob_step_1_1_phone_change ?? orElse,
        mob_step_2_1_calculator: mob_step_2_1_calculator ?? orElse,
        mob_step_2_phone_confirmed: mob_step_2_phone_confirmed ?? orElse,
        mob_step_3_personal_info: mob_step_3_personal_info ?? orElse,
        mob_step_4_pasport_info: mob_step_4_pasport_info ?? orElse,
        mob_step_5_reg_address: mob_step_5_reg_address ?? orElse,
        mob_step_6_job_info: mob_step_6_job_info ?? orElse,
        mob_step_7_contact_person: mob_step_7_contact_person ?? orElse,
        mob_step_8_card_added: mob_step_8_card_added ?? orElse,
        mob_step_9_photo_upload: mob_step_9_photo_upload ?? orElse,
        mob_step_9_photo_reupload: mob_step_9_photo_reupload ?? orElse,
        mob_loan_request: mob_loan_request ?? orElse,
        mob_loan_approved_new: mob_loan_approved_new ?? orElse,
        mob_loan_approved_new_no: mob_loan_approved_new_no ?? orElse,
        mob_loan_approved_new_yes: mob_loan_approved_new_yes ?? orElse,
        mob_loan_approved_old: mob_loan_approved_old ?? orElse,
        mob_loan_approved_old_no: mob_loan_approved_old_no ?? orElse,
        mob_loan_approved_old_yes: mob_loan_approved_old_yes ?? orElse,
        mob_loan_request_old: mob_loan_request_old ?? orElse,
        web_step_1: web_step_1 ?? orElse,
        web_step_2: web_step_2 ?? orElse,
        web_step_3: web_step_3 ?? orElse,
        web_step_4: web_step_4 ?? orElse,
        web_step_5: web_step_5 ?? orElse,
        web_step_6: web_step_6 ?? orElse,
        web_step_7: web_step_7 ?? orElse,
        web_step_8: web_step_8 ?? orElse,
        web_step_9: web_step_9 ?? orElse,
        web_step_10: web_step_10 ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? mob_step_phone,
    T? mob_step_phone_old,
    T? mob_step_personal_data,
    T? mob_step_1_phone_old,
    T? mob_step_1_phone_old_re,
    T? mob_step_1_phone_saved,
    T? mob_step_1_1_phone_change,
    T? mob_step_2_1_calculator,
    T? mob_step_2_phone_confirmed,
    T? mob_step_3_personal_info,
    T? mob_step_4_pasport_info,
    T? mob_step_5_reg_address,
    T? mob_step_6_job_info,
    T? mob_step_7_contact_person,
    T? mob_step_8_card_added,
    T? mob_step_9_photo_upload,
    T? mob_step_9_photo_reupload,
    T? mob_loan_request,
    T? mob_loan_approved_new,
    T? mob_loan_approved_new_no,
    T? mob_loan_approved_new_yes,
    T? mob_loan_approved_old,
    T? mob_loan_approved_old_no,
    T? mob_loan_approved_old_yes,
    T? mob_loan_request_old,
    T? web_step_1,
    T? web_step_2,
    T? web_step_3,
    T? web_step_4,
    T? web_step_5,
    T? web_step_6,
    T? web_step_7,
    T? web_step_8,
    T? web_step_9,
    T? web_step_10,
  }) =>
      mapValue<T>(
        mob_step_phone: mob_step_phone ?? orElse,
        mob_step_phone_old: mob_step_phone_old ?? orElse,
        mob_step_personal_data: mob_step_personal_data ?? orElse,
        mob_step_1_phone_old: mob_step_1_phone_old ?? orElse,
        mob_step_1_phone_old_re: mob_step_1_phone_old_re ?? orElse,
        mob_step_1_phone_saved: mob_step_1_phone_saved ?? orElse,
        mob_step_1_1_phone_change: mob_step_1_1_phone_change ?? orElse,
        mob_step_2_1_calculator: mob_step_2_1_calculator ?? orElse,
        mob_step_2_phone_confirmed: mob_step_2_phone_confirmed ?? orElse,
        mob_step_3_personal_info: mob_step_3_personal_info ?? orElse,
        mob_step_4_pasport_info: mob_step_4_pasport_info ?? orElse,
        mob_step_5_reg_address: mob_step_5_reg_address ?? orElse,
        mob_step_6_job_info: mob_step_6_job_info ?? orElse,
        mob_step_7_contact_person: mob_step_7_contact_person ?? orElse,
        mob_step_8_card_added: mob_step_8_card_added ?? orElse,
        mob_step_9_photo_upload: mob_step_9_photo_upload ?? orElse,
        mob_step_9_photo_reupload: mob_step_9_photo_reupload ?? orElse,
        mob_loan_request: mob_loan_request ?? orElse,
        mob_loan_approved_new: mob_loan_approved_new ?? orElse,
        mob_loan_approved_new_no: mob_loan_approved_new_no ?? orElse,
        mob_loan_approved_new_yes: mob_loan_approved_new_yes ?? orElse,
        mob_loan_approved_old: mob_loan_approved_old ?? orElse,
        mob_loan_approved_old_no: mob_loan_approved_old_no ?? orElse,
        mob_loan_approved_old_yes: mob_loan_approved_old_yes ?? orElse,
        mob_loan_request_old: mob_loan_request_old ?? orElse,
        web_step_1: web_step_1 ?? orElse,
        web_step_2: web_step_2 ?? orElse,
        web_step_3: web_step_3 ?? orElse,
        web_step_4: web_step_4 ?? orElse,
        web_step_5: web_step_5 ?? orElse,
        web_step_6: web_step_6 ?? orElse,
        web_step_7: web_step_7 ?? orElse,
        web_step_8: web_step_8 ?? orElse,
        web_step_9: web_step_9 ?? orElse,
        web_step_10: web_step_10 ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? mob_step_phone,
    T Function()? mob_step_phone_old,
    T Function()? mob_step_personal_data,
    T Function()? mob_step_1_phone_old,
    T Function()? mob_step_1_phone_old_re,
    T Function()? mob_step_1_phone_saved,
    T Function()? mob_step_1_1_phone_change,
    T Function()? mob_step_2_1_calculator,
    T Function()? mob_step_2_phone_confirmed,
    T Function()? mob_step_3_personal_info,
    T Function()? mob_step_4_pasport_info,
    T Function()? mob_step_5_reg_address,
    T Function()? mob_step_6_job_info,
    T Function()? mob_step_7_contact_person,
    T Function()? mob_step_8_card_added,
    T Function()? mob_step_9_photo_upload,
    T Function()? mob_step_9_photo_reupload,
    T Function()? mob_loan_request,
    T Function()? mob_loan_approved_new,
    T Function()? mob_loan_approved_new_no,
    T Function()? mob_loan_approved_new_yes,
    T Function()? mob_loan_approved_old,
    T Function()? mob_loan_approved_old_no,
    T Function()? mob_loan_approved_old_yes,
    T Function()? mob_loan_request_old,
    T Function()? web_step_1,
    T Function()? web_step_2,
    T Function()? web_step_3,
    T Function()? web_step_4,
    T Function()? web_step_5,
    T Function()? web_step_6,
    T Function()? web_step_7,
    T Function()? web_step_8,
    T Function()? web_step_9,
    T Function()? web_step_10,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        mob_step_phone: mob_step_phone,
        mob_step_phone_old: mob_step_phone_old,
        mob_step_personal_data: mob_step_personal_data,
        mob_step_1_phone_old: mob_step_1_phone_old,
        mob_step_1_phone_old_re: mob_step_1_phone_old_re,
        mob_step_1_phone_saved: mob_step_1_phone_saved,
        mob_step_1_1_phone_change: mob_step_1_1_phone_change,
        mob_step_2_1_calculator: mob_step_2_1_calculator,
        mob_step_2_phone_confirmed: mob_step_2_phone_confirmed,
        mob_step_3_personal_info: mob_step_3_personal_info,
        mob_step_4_pasport_info: mob_step_4_pasport_info,
        mob_step_5_reg_address: mob_step_5_reg_address,
        mob_step_6_job_info: mob_step_6_job_info,
        mob_step_7_contact_person: mob_step_7_contact_person,
        mob_step_8_card_added: mob_step_8_card_added,
        mob_step_9_photo_upload: mob_step_9_photo_upload,
        mob_step_9_photo_reupload: mob_step_9_photo_reupload,
        mob_loan_request: mob_loan_request,
        mob_loan_approved_new: mob_loan_approved_new,
        mob_loan_approved_new_no: mob_loan_approved_new_no,
        mob_loan_approved_new_yes: mob_loan_approved_new_yes,
        mob_loan_approved_old: mob_loan_approved_old,
        mob_loan_approved_old_no: mob_loan_approved_old_no,
        mob_loan_approved_old_yes: mob_loan_approved_old_yes,
        mob_loan_request_old: mob_loan_request_old,
        web_step_1: web_step_1,
        web_step_2: web_step_2,
        web_step_3: web_step_3,
        web_step_4: web_step_4,
        web_step_5: web_step_5,
        web_step_6: web_step_6,
        web_step_7: web_step_7,
        web_step_8: web_step_8,
        web_step_9: web_step_9,
        web_step_10: web_step_10,
      );

  T? maybeMapOrNullValue<T>({
    T? mob_step_phone,
    T? mob_step_phone_old,
    T? mob_step_personal_data,
    T? mob_step_1_phone_old,
    T? mob_step_1_phone_old_re,
    T? mob_step_1_phone_saved,
    T? mob_step_1_1_phone_change,
    T? mob_step_2_1_calculator,
    T? mob_step_2_phone_confirmed,
    T? mob_step_3_personal_info,
    T? mob_step_4_pasport_info,
    T? mob_step_5_reg_address,
    T? mob_step_6_job_info,
    T? mob_step_7_contact_person,
    T? mob_step_8_card_added,
    T? mob_step_9_photo_upload,
    T? mob_step_9_photo_reupload,
    T? mob_loan_request,
    T? mob_loan_approved_new,
    T? mob_loan_approved_new_no,
    T? mob_loan_approved_new_yes,
    T? mob_loan_approved_old,
    T? mob_loan_approved_old_no,
    T? mob_loan_approved_old_yes,
    T? mob_loan_request_old,
    T? web_step_1,
    T? web_step_2,
    T? web_step_3,
    T? web_step_4,
    T? web_step_5,
    T? web_step_6,
    T? web_step_7,
    T? web_step_8,
    T? web_step_9,
    T? web_step_10,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        mob_step_phone: mob_step_phone,
        mob_step_phone_old: mob_step_phone_old,
        mob_step_personal_data: mob_step_personal_data,
        mob_step_1_phone_old: mob_step_1_phone_old,
        mob_step_1_phone_old_re: mob_step_1_phone_old_re,
        mob_step_1_phone_saved: mob_step_1_phone_saved,
        mob_step_1_1_phone_change: mob_step_1_1_phone_change,
        mob_step_2_1_calculator: mob_step_2_1_calculator,
        mob_step_2_phone_confirmed: mob_step_2_phone_confirmed,
        mob_step_3_personal_info: mob_step_3_personal_info,
        mob_step_4_pasport_info: mob_step_4_pasport_info,
        mob_step_5_reg_address: mob_step_5_reg_address,
        mob_step_6_job_info: mob_step_6_job_info,
        mob_step_7_contact_person: mob_step_7_contact_person,
        mob_step_8_card_added: mob_step_8_card_added,
        mob_step_9_photo_upload: mob_step_9_photo_upload,
        mob_step_9_photo_reupload: mob_step_9_photo_reupload,
        mob_loan_request: mob_loan_request,
        mob_loan_approved_new: mob_loan_approved_new,
        mob_loan_approved_new_no: mob_loan_approved_new_no,
        mob_loan_approved_new_yes: mob_loan_approved_new_yes,
        mob_loan_approved_old: mob_loan_approved_old,
        mob_loan_approved_old_no: mob_loan_approved_old_no,
        mob_loan_approved_old_yes: mob_loan_approved_old_yes,
        mob_loan_request_old: mob_loan_request_old,
        web_step_1: web_step_1,
        web_step_2: web_step_2,
        web_step_3: web_step_3,
        web_step_4: web_step_4,
        web_step_5: web_step_5,
        web_step_6: web_step_6,
        web_step_7: web_step_7,
        web_step_8: web_step_8,
        web_step_9: web_step_9,
        web_step_10: web_step_10,
      );

  static List<String> getListName() =>
      EnumStep.values.map((e) => e.name).toList();

  @override
  int compareTo(EnumStep other) => index.compareTo(other.index);
}

extension $EnumStep on EnumStep {
  bool get is_mob_step_phone => this == EnumStep.mob_step_phone;
  bool get is_mob_step_phone_old => this == EnumStep.mob_step_phone_old;
  bool get is_mob_step_personal_data => this == EnumStep.mob_step_personal_data;
  bool get is_mob_step_1_phone_old => this == EnumStep.mob_step_1_phone_old;
  bool get is_mob_step_1_phone_old_re =>
      this == EnumStep.mob_step_1_phone_old_re;
  bool get is_mob_step_1_phone_saved => this == EnumStep.mob_step_1_phone_saved;
  bool get is_mob_step_1_1_phone_change =>
      this == EnumStep.mob_step_1_1_phone_change;
  bool get is_mob_step_2_1_calculator =>
      this == EnumStep.mob_step_2_1_calculator;
  bool get is_mob_step_2_phone_confirmed =>
      this == EnumStep.mob_step_2_phone_confirmed;
  bool get is_mob_step_3_personal_info =>
      this == EnumStep.mob_step_3_personal_info;
  bool get is_mob_step_4_pasport_info =>
      this == EnumStep.mob_step_4_pasport_info;
  bool get is_mob_step_5_reg_address => this == EnumStep.mob_step_5_reg_address;
  bool get is_mob_step_6_job_info => this == EnumStep.mob_step_6_job_info;
  bool get is_mob_step_7_contact_person =>
      this == EnumStep.mob_step_7_contact_person;
  bool get is_mob_step_8_card_added => this == EnumStep.mob_step_8_card_added;
  bool get is_mob_step_9_photo_upload =>
      this == EnumStep.mob_step_9_photo_upload;
  bool get is_mob_step_9_photo_reupload =>
      this == EnumStep.mob_step_9_photo_reupload;
  bool get is_mob_loan_request => this == EnumStep.mob_loan_request;
  bool get is_mob_loan_approved_new => this == EnumStep.mob_loan_approved_new;
  bool get is_mob_loan_approved_new_no =>
      this == EnumStep.mob_loan_approved_new_no;
  bool get is_mob_loan_approved_new_yes =>
      this == EnumStep.mob_loan_approved_new_yes;
  bool get is_mob_loan_approved_old => this == EnumStep.mob_loan_approved_old;
  bool get is_mob_loan_approved_old_no =>
      this == EnumStep.mob_loan_approved_old_no;
  bool get is_mob_loan_approved_old_yes =>
      this == EnumStep.mob_loan_approved_old_yes;
  bool get is_mob_loan_request_old => this == EnumStep.mob_loan_request_old;
  bool get is_web_step_1 => this == EnumStep.web_step_1;
  bool get is_web_step_2 => this == EnumStep.web_step_2;
  bool get is_web_step_3 => this == EnumStep.web_step_3;
  bool get is_web_step_4 => this == EnumStep.web_step_4;
  bool get is_web_step_5 => this == EnumStep.web_step_5;
  bool get is_web_step_6 => this == EnumStep.web_step_6;
  bool get is_web_step_7 => this == EnumStep.web_step_7;
  bool get is_web_step_8 => this == EnumStep.web_step_8;
  bool get is_web_step_9 => this == EnumStep.web_step_9;
  bool get is_web_step_10 => this == EnumStep.web_step_10;
}
