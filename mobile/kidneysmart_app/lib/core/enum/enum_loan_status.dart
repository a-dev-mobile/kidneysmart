
// turnGen
// ignore_for_file: constant_identifier_names, non_constant_identifier_names

// loanStatus from server
// https://confluence.aventus.work/display/RU/Loan+Status
// https://api.belka.aventus.work/api_documentation.html#user-api-get-user-loan-get
enum EnumLoanStatus implements Comparable<EnumLoanStatus> {
  unknown(-1),
  test_user(777),
  request(0),
  confirmed(1),
  active(2),
  returned(3),
  denied(4),
  terminated(5),
  processing(10),
  extended(20),
  overdue(21),
  customer_confirmation(22),
  awaiting_customer_confirmation(26),
  sold(27),
  judicial_recovery_starting(29),
  judicial_recovery_in_progress(30),
  judicial_recovery_finish(31),
  judicial_enforcement_proceedings(33),
  verification_problem(35),
  pco_select_sum(36);

  const EnumLoanStatus(this.id);
  final int id;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumLoanStatus fromId(int? id, {EnumLoanStatus? fallback,}) {
    switch (id) {
case -1:
return unknown;
case 777:
return test_user;
case 0:
return request;
case 1:
return confirmed;
case 2:
return active;
case 3:
return returned;
case 4:
return denied;
case 5:
return terminated;
case 10:
return processing;
case 20:
return extended;
case 21:
return overdue;
case 22:
return customer_confirmation;
case 26:
return awaiting_customer_confirmation;
case 27:
return sold;
case 29:
return judicial_recovery_starting;
case 30:
return judicial_recovery_in_progress;
case 31:
return judicial_recovery_finish;
case 33:
return judicial_enforcement_proceedings;
case 35:
return verification_problem;
case 36:
return pco_select_sum;
      default:
        return fallback ?? (throw ArgumentError.value(
          id, 'id', 'Value not found in EnumLoanStatus',));
    }
  }

  static EnumLoanStatus? fromIdOrNull(int? id,) {
    switch (id) {
case -1:
return unknown;
case 777:
return test_user;
case 0:
return request;
case 1:
return confirmed;
case 2:
return active;
case 3:
return returned;
case 4:
return denied;
case 5:
return terminated;
case 10:
return processing;
case 20:
return extended;
case 21:
return overdue;
case 22:
return customer_confirmation;
case 26:
return awaiting_customer_confirmation;
case 27:
return sold;
case 29:
return judicial_recovery_starting;
case 30:
return judicial_recovery_in_progress;
case 31:
return judicial_recovery_finish;
case 33:
return judicial_enforcement_proceedings;
case 35:
return verification_problem;
case 36:
return pco_select_sum;
      default:
        return null;
    }
  }


  T map<T>({
    required T Function() unknown,
    required T Function() test_user,
    required T Function() request,
    required T Function() confirmed,
    required T Function() active,
    required T Function() returned,
    required T Function() denied,
    required T Function() terminated,
    required T Function() processing,
    required T Function() extended,
    required T Function() overdue,
    required T Function() customer_confirmation,
    required T Function() awaiting_customer_confirmation,
    required T Function() sold,
    required T Function() judicial_recovery_starting,
    required T Function() judicial_recovery_in_progress,
    required T Function() judicial_recovery_finish,
    required T Function() judicial_enforcement_proceedings,
    required T Function() verification_problem,
    required T Function() pco_select_sum,
  }) {
    switch (this) {
      case EnumLoanStatus.unknown:
        return unknown();
      case EnumLoanStatus.test_user:
        return test_user();
      case EnumLoanStatus.request:
        return request();
      case EnumLoanStatus.confirmed:
        return confirmed();
      case EnumLoanStatus.active:
        return active();
      case EnumLoanStatus.returned:
        return returned();
      case EnumLoanStatus.denied:
        return denied();
      case EnumLoanStatus.terminated:
        return terminated();
      case EnumLoanStatus.processing:
        return processing();
      case EnumLoanStatus.extended:
        return extended();
      case EnumLoanStatus.overdue:
        return overdue();
      case EnumLoanStatus.customer_confirmation:
        return customer_confirmation();
      case EnumLoanStatus.awaiting_customer_confirmation:
        return awaiting_customer_confirmation();
      case EnumLoanStatus.sold:
        return sold();
      case EnumLoanStatus.judicial_recovery_starting:
        return judicial_recovery_starting();
      case EnumLoanStatus.judicial_recovery_in_progress:
        return judicial_recovery_in_progress();
      case EnumLoanStatus.judicial_recovery_finish:
        return judicial_recovery_finish();
      case EnumLoanStatus.judicial_enforcement_proceedings:
        return judicial_enforcement_proceedings();
      case EnumLoanStatus.verification_problem:
        return verification_problem();
      case EnumLoanStatus.pco_select_sum:
        return pco_select_sum();
    }
  }


  T mapValue<T>({
    required T unknown,
    required T test_user,
    required T request,
    required T confirmed,
    required T active,
    required T returned,
    required T denied,
    required T terminated,
    required T processing,
    required T extended,
    required T overdue,
    required T customer_confirmation,
    required T awaiting_customer_confirmation,
    required T sold,
    required T judicial_recovery_starting,
    required T judicial_recovery_in_progress,
    required T judicial_recovery_finish,
    required T judicial_enforcement_proceedings,
    required T verification_problem,
    required T pco_select_sum,
  }) {
    switch (this) {
      case EnumLoanStatus.unknown:
        return unknown;
      case EnumLoanStatus.test_user:
        return test_user;
      case EnumLoanStatus.request:
        return request;
      case EnumLoanStatus.confirmed:
        return confirmed;
      case EnumLoanStatus.active:
        return active;
      case EnumLoanStatus.returned:
        return returned;
      case EnumLoanStatus.denied:
        return denied;
      case EnumLoanStatus.terminated:
        return terminated;
      case EnumLoanStatus.processing:
        return processing;
      case EnumLoanStatus.extended:
        return extended;
      case EnumLoanStatus.overdue:
        return overdue;
      case EnumLoanStatus.customer_confirmation:
        return customer_confirmation;
      case EnumLoanStatus.awaiting_customer_confirmation:
        return awaiting_customer_confirmation;
      case EnumLoanStatus.sold:
        return sold;
      case EnumLoanStatus.judicial_recovery_starting:
        return judicial_recovery_starting;
      case EnumLoanStatus.judicial_recovery_in_progress:
        return judicial_recovery_in_progress;
      case EnumLoanStatus.judicial_recovery_finish:
        return judicial_recovery_finish;
      case EnumLoanStatus.judicial_enforcement_proceedings:
        return judicial_enforcement_proceedings;
      case EnumLoanStatus.verification_problem:
        return verification_problem;
      case EnumLoanStatus.pco_select_sum:
        return pco_select_sum;
    }
  }


  T maybeMap<T>({
    required T Function() orElse,
    T Function()? unknown,
    T Function()? test_user,
    T Function()? request,
    T Function()? confirmed,
    T Function()? active,
    T Function()? returned,
    T Function()? denied,
    T Function()? terminated,
    T Function()? processing,
    T Function()? extended,
    T Function()? overdue,
    T Function()? customer_confirmation,
    T Function()? awaiting_customer_confirmation,
    T Function()? sold,
    T Function()? judicial_recovery_starting,
    T Function()? judicial_recovery_in_progress,
    T Function()? judicial_recovery_finish,
    T Function()? judicial_enforcement_proceedings,
    T Function()? verification_problem,
    T Function()? pco_select_sum,
  }) =>
      map<T>(
      unknown: unknown ?? orElse,
      test_user: test_user ?? orElse,
      request: request ?? orElse,
      confirmed: confirmed ?? orElse,
      active: active ?? orElse,
      returned: returned ?? orElse,
      denied: denied ?? orElse,
      terminated: terminated ?? orElse,
      processing: processing ?? orElse,
      extended: extended ?? orElse,
      overdue: overdue ?? orElse,
      customer_confirmation: customer_confirmation ?? orElse,
      awaiting_customer_confirmation: awaiting_customer_confirmation ?? orElse,
      sold: sold ?? orElse,
      judicial_recovery_starting: judicial_recovery_starting ?? orElse,
      judicial_recovery_in_progress: judicial_recovery_in_progress ?? orElse,
      judicial_recovery_finish: judicial_recovery_finish ?? orElse,
      judicial_enforcement_proceedings: judicial_enforcement_proceedings ?? orElse,
      verification_problem: verification_problem ?? orElse,
      pco_select_sum: pco_select_sum ?? orElse,
      );


  T maybeMapValue<T>({
    required T orElse,
    T? unknown,
    T? test_user,
    T? request,
    T? confirmed,
    T? active,
    T? returned,
    T? denied,
    T? terminated,
    T? processing,
    T? extended,
    T? overdue,
    T? customer_confirmation,
    T? awaiting_customer_confirmation,
    T? sold,
    T? judicial_recovery_starting,
    T? judicial_recovery_in_progress,
    T? judicial_recovery_finish,
    T? judicial_enforcement_proceedings,
    T? verification_problem,
    T? pco_select_sum,
  }) =>
      mapValue<T>(
      unknown: unknown ?? orElse,
      test_user: test_user ?? orElse,
      request: request ?? orElse,
      confirmed: confirmed ?? orElse,
      active: active ?? orElse,
      returned: returned ?? orElse,
      denied: denied ?? orElse,
      terminated: terminated ?? orElse,
      processing: processing ?? orElse,
      extended: extended ?? orElse,
      overdue: overdue ?? orElse,
      customer_confirmation: customer_confirmation ?? orElse,
      awaiting_customer_confirmation: awaiting_customer_confirmation ?? orElse,
      sold: sold ?? orElse,
      judicial_recovery_starting: judicial_recovery_starting ?? orElse,
      judicial_recovery_in_progress: judicial_recovery_in_progress ?? orElse,
      judicial_recovery_finish: judicial_recovery_finish ?? orElse,
      judicial_enforcement_proceedings: judicial_enforcement_proceedings ?? orElse,
      verification_problem: verification_problem ?? orElse,
      pco_select_sum: pco_select_sum ?? orElse,
      );


  T? maybeMapOrNull<T>({
    T Function()? unknown,
    T Function()? test_user,
    T Function()? request,
    T Function()? confirmed,
    T Function()? active,
    T Function()? returned,
    T Function()? denied,
    T Function()? terminated,
    T Function()? processing,
    T Function()? extended,
    T Function()? overdue,
    T Function()? customer_confirmation,
    T Function()? awaiting_customer_confirmation,
    T Function()? sold,
    T Function()? judicial_recovery_starting,
    T Function()? judicial_recovery_in_progress,
    T Function()? judicial_recovery_finish,
    T Function()? judicial_enforcement_proceedings,
    T Function()? verification_problem,
    T Function()? pco_select_sum,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        unknown: unknown,
        test_user: test_user,
        request: request,
        confirmed: confirmed,
        active: active,
        returned: returned,
        denied: denied,
        terminated: terminated,
        processing: processing,
        extended: extended,
        overdue: overdue,
        customer_confirmation: customer_confirmation,
        awaiting_customer_confirmation: awaiting_customer_confirmation,
        sold: sold,
        judicial_recovery_starting: judicial_recovery_starting,
        judicial_recovery_in_progress: judicial_recovery_in_progress,
        judicial_recovery_finish: judicial_recovery_finish,
        judicial_enforcement_proceedings: judicial_enforcement_proceedings,
        verification_problem: verification_problem,
        pco_select_sum: pco_select_sum,
      );


  T? maybeMapOrNullValue<T>({
    T? unknown,
    T? test_user,
    T? request,
    T? confirmed,
    T? active,
    T? returned,
    T? denied,
    T? terminated,
    T? processing,
    T? extended,
    T? overdue,
    T? customer_confirmation,
    T? awaiting_customer_confirmation,
    T? sold,
    T? judicial_recovery_starting,
    T? judicial_recovery_in_progress,
    T? judicial_recovery_finish,
    T? judicial_enforcement_proceedings,
    T? verification_problem,
    T? pco_select_sum,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        unknown: unknown,
        test_user: test_user,
        request: request,
        confirmed: confirmed,
        active: active,
        returned: returned,
        denied: denied,
        terminated: terminated,
        processing: processing,
        extended: extended,
        overdue: overdue,
        customer_confirmation: customer_confirmation,
        awaiting_customer_confirmation: awaiting_customer_confirmation,
        sold: sold,
        judicial_recovery_starting: judicial_recovery_starting,
        judicial_recovery_in_progress: judicial_recovery_in_progress,
        judicial_recovery_finish: judicial_recovery_finish,
        judicial_enforcement_proceedings: judicial_enforcement_proceedings,
        verification_problem: verification_problem,
        pco_select_sum: pco_select_sum,
      );


  static List<int> getListId() => EnumLoanStatus.values.map((e) => e.id).toList();


  @override
  int compareTo(EnumLoanStatus other) => index.compareTo(other.index);

 


}
extension $EnumLoanStatus on EnumLoanStatus {
bool get isUnknown => this == EnumLoanStatus.unknown;
bool get is_test_user => this == EnumLoanStatus.test_user;
bool get isRequest => this == EnumLoanStatus.request;
bool get isConfirmed => this == EnumLoanStatus.confirmed;
bool get isActive => this == EnumLoanStatus.active;
bool get isReturned => this == EnumLoanStatus.returned;
bool get isDenied => this == EnumLoanStatus.denied;
bool get isTerminated => this == EnumLoanStatus.terminated;
bool get isProcessing => this == EnumLoanStatus.processing;
bool get isExtended => this == EnumLoanStatus.extended;
bool get isOverdue => this == EnumLoanStatus.overdue;
bool get is_customer_confirmation => this == EnumLoanStatus.customer_confirmation;
bool get is_awaiting_customer_confirmation => this == EnumLoanStatus.awaiting_customer_confirmation;
bool get isSold => this == EnumLoanStatus.sold;
bool get is_judicial_recovery_starting => this == EnumLoanStatus.judicial_recovery_starting;
bool get is_judicial_recovery_in_progress => this == EnumLoanStatus.judicial_recovery_in_progress;
bool get is_judicial_recovery_finish => this == EnumLoanStatus.judicial_recovery_finish;
bool get is_judicial_enforcement_proceedings => this == EnumLoanStatus.judicial_enforcement_proceedings;
bool get is_verification_problem => this == EnumLoanStatus.verification_problem;
bool get is_pco_select_sum => this == EnumLoanStatus.pco_select_sum;
}

