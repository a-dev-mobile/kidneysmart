import 'package:flutter/material.dart';
import 'package:kidneysmart/common/styles/app_text_styles.dart';
import 'package:kidneysmart/common/widgets/basic_button.dart';
import 'package:kidneysmart/gen/assets.gen.dart';
import 'package:kidneysmart/services/storage/app_storage.dart';

import 'package:url_launcher/url_launcher.dart';

class UpdateSoftAppPage extends StatelessWidget {
  const UpdateSoftAppPage({
  
    super.key,
  });

  static const path = '/UpdateSoftAppPage';
  static const name = 'UpdateSoftAppPage';
  @override
  Widget build(BuildContext context) {
  
    return Padding(
      padding: const EdgeInsets.only(right: 15, top: 30, left: 15, bottom: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            AssetPaths.logoImage,
            height: 48,
          ),
          const SizedBox(height: 20),
          const Text(
            'Доступна новая версия приложения!',
            style: AppTextStyle.s20w600h24,
          ),
          const SizedBox(height: 15),
       
          const SizedBox(height: 20),
        
          const SizedBox(height: 15),
          BasicButton(
            isTextBtn: true,
            onPressed: () => Navigator.of(context).pop(),
            text: 'Позже',
          ),
        ],
      ),
    );
  }

}
