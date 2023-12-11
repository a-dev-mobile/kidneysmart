import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kidneysmart/app/style/color/app_color.dart';

import 'package:kidneysmart/app/style/typography/app_text_styles.dart';
import 'package:kidneysmart/core/cubits/preloading/wp/wp_preloading_cubit.dart';
import 'package:kidneysmart/global.dart';

class SmsLimitMsg extends StatelessWidget {
  const SmsLimitMsg({
    required this.msg,
    super.key,
  });
  final String msg;
  @override
  Widget build(BuildContext context) {
    final style =
        AppTextStyle.s12w400h18.copyWith(color: AppColors.greyGreyLightText);
    final phoneSupport = context.read<WpPreloadingCubit>().state.phoneSupport;

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: msg,
            style: style,
          ),
          TextSpan(
            text: phoneSupport,
            recognizer: TapGestureRecognizer()
              ..onTap = () => AppRun.callSupport(
                    phoneSupport,
                  ),
            style: AppTextStyle.s14w400h16
                .copyWith(color: Theme.of(context).primaryColor),
          ),
          TextSpan(
            text: ' - бесплатно по России',
            style: style,
          ),
        ],
      ),
    );
  }
}
