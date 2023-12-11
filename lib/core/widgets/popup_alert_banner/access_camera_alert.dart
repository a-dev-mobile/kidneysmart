import 'package:flutter/material.dart';

import 'package:kidneysmart/core/widgets/alert_snackbar.dart';
import 'package:permission_handler/permission_handler.dart';

class AccessCameraAlert extends StatefulWidget {
  const AccessCameraAlert({
    required this.permissionStatus,
    super.key,
  });

  final PermissionStatus permissionStatus;

  @override
  State<AccessCameraAlert> createState() => _AccessCameraAlertState();
}

class _AccessCameraAlertState extends State<AccessCameraAlert> {
  bool isShow = true;

  @override
  void initState() {
    super.initState();
  }

  void closeAlert() {
    setState(() {
      isShow = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!isShow) {
      return const SizedBox.shrink();
    }

    return AppAlert(
      isVisible: isShow &&
          widget.permissionStatus == PermissionStatus.permanentlyDenied,
      onPressed: () async {
        if (!(await _isSuccessAccessCamera())) {
          final _ = await openAppSettings();
        }
      },
      onPressedClose: closeAlert,
      title: 'Вы запретили доступ к камере',
      textMsg:
          'Разрешите приложению доступ к камере, чтобы быстрее добавлять фотографии',
      textBtn: 'Разрешить',
      alertType: AlertType.error,
    );
  }

  Future<bool> _isSuccessAccessCamera() async {
    final permission = await Permission.camera.request();

    if (permission.isGranted || permission.isLimited) {
      return true;
    }

    return false;
  }
}
