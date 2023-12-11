import 'dart:ui';

import 'package:kidneysmart/api/model/user_api/api_user_loan.dart';
import 'package:kidneysmart/app/style/color/app_color.dart';
import 'package:kidneysmart/core/enum/enum_loan_status.dart';
import 'package:kidneysmart/core/enum/enum_vacation_status.dart';

/// Represents status information with color and label.
class StatusInfo {
  /// Constructs an instance of [StatusInfo].
  const StatusInfo({
    required this.color,
    required this.label,
  });
  final Color color;
  final String label;
}

/// Gets the status information based on loan status, vacation, and days late.
StatusInfo getStatusInfo({
  required EnumLoanStatus enumLoanStatus,
  required Vacation? vacation,
  required int daysLate,
}) {
  switch (enumLoanStatus) {
    case EnumLoanStatus.active:
      final label = vacation != null && vacation.enumVacationStatus.isActive
          ? 'Каникулы'
          : daysLate >= 1
              ? 'Просрочен'
              : 'Активный';
      final color = daysLate >= 1 ? AppColors.redText : AppColors.greenMain;
      return StatusInfo(color: color, label: label);
    case EnumLoanStatus.returned:
      return const StatusInfo(
        color: AppColors.greyGreyLightText,
        label: 'Погашен',
      );
    case EnumLoanStatus.denied:
      return const StatusInfo(color: AppColors.redText, label: 'Отказано');
    case EnumLoanStatus.sold:
      return const StatusInfo(color: AppColors.redText, label: 'Продан');
    case EnumLoanStatus.judicial_recovery_starting:
    case EnumLoanStatus.judicial_recovery_in_progress:
    case EnumLoanStatus.judicial_recovery_finish:
    case EnumLoanStatus.judicial_enforcement_proceedings:
      return const StatusInfo(
        color: AppColors.redText,
        label: 'Судебная задолженность',
      );
    case EnumLoanStatus.unknown:
    case EnumLoanStatus.test_user:
    case EnumLoanStatus.request:
    case EnumLoanStatus.confirmed:
    case EnumLoanStatus.terminated:
    case EnumLoanStatus.processing:
    case EnumLoanStatus.extended:
    case EnumLoanStatus.overdue:
    case EnumLoanStatus.customer_confirmation:
    case EnumLoanStatus.awaiting_customer_confirmation:
    case EnumLoanStatus.pco_select_sum:
    case EnumLoanStatus.verification_problem:
      return const StatusInfo(
        color: AppColors.greenMain,
        label: 'Не определен',
      );
  }
}
