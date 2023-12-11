// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_schedule_installment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiScheduleInstallmentImpl _$$ApiScheduleInstallmentImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiScheduleInstallmentImpl(
      enumScheduleStatus: json['status'] == null
          ? EnumScheduleStatus.error
          : scheduleStatusFromJson(json['status'] as String?),
      date: dateTimeFromJson(json['date'] as String?),
      startDate: dateTimeFromJson(json['start_date'] as String?),
      endDate: dateTimeFromJson(json['end_date'] as String?),
      payment: json['payment'] == null
          ? 0
          : convertToNumOrZeroFromJson(json['payment']),
      body: json['body'] == null ? 0 : convertToNumOrZeroFromJson(json['body']),
      commission: json['commission'] == null
          ? 0
          : convertToNumOrZeroFromJson(json['commission']),
    );

Map<String, dynamic> _$$ApiScheduleInstallmentImplToJson(
        _$ApiScheduleInstallmentImpl instance) =>
    <String, dynamic>{
      'status': scheduleStatusToJson(instance.enumScheduleStatus),
      'date': dateTimeToJson(instance.date),
      'start_date': dateTimeToJson(instance.startDate),
      'end_date': dateTimeToJson(instance.endDate),
      'payment': convertToNumOrZeroToJson(instance.payment),
      'body': convertToNumOrZeroToJson(instance.body),
      'commission': convertToNumOrZeroToJson(instance.commission),
    };
