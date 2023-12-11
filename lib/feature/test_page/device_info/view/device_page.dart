import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kidneysmart/core/enum/enum_page_status.dart';
import 'package:kidneysmart/core/widgets/page_load.dart';
import 'package:kidneysmart/feature/test_page/device_info/cubit/device_info_cubit.dart';
import 'package:kidneysmart/core/enum/enum_page_status.dart';
import 'package:kidneysmart/core/widgets/page_load.dart';
import 'package:kidneysmart/feature/test_page/device_info/cubit/device_info_cubit.dart';

import 'package:kidneysmart/feature/test_page/device_info/view/system_theme_detector.dart';

class DevicePage extends StatelessWidget {
  const DevicePage({super.key});
  static const path = '/device';
  static const name = 'device';

  @override
  Widget build(BuildContext context) {
    context.read<DeviceInfoCubit>().load(true);

    return Scaffold(
      appBar: AppBar(
        title: const Text('INFO DEVICE'),
      ),
      body: SafeArea(
        child: BlocBuilder<DeviceInfoCubit, DeviceInfoState>(
          buildWhen: (p, c) => p.isLoad != c.isLoad,
          builder: (context, state) {
            if (state.isLoad) {
              return const Center(child: AppPageLoad());
            }

            return BlocListener<DeviceInfoCubit, DeviceInfoState>(
              listener: (context, state) {
                final sendStatus = state.sendStatus;
                if (sendStatus != EnumPageStatus.init) {
                  final _ = ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        sendStatus == EnumPageStatus.success
                            ? 'Данные отправлены'
                            : 'Данные НЕ отправлены',
                      ),
                    ),
                  );
                }
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        // onPressed: null,
                        onPressed: () {
                          context.read<DeviceInfoCubit>().sendDataTest();
                        },
                        child: const Text('Принудительно отправить данные'),
                      ),
                    ),
                    const SizedBox(height: 20),
                    for (final i in state.mapInfo.entries)
                      _Item(
                        title: i.key,
                        value: i.value.toString(),
                      ),
                    const Divider(),
                    const Divider(),
                    const Divider(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    required this.title,
    required this.value,
  });
  final String title;
  final String? value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$title - ',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(child: Text(value ?? 'null')),
        ],
      ),
    );
  }
}
