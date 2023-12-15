import 'package:flutter/material.dart';
import 'package:kidneysmart/core/service/overlay/overlay_manager.dart';
import 'package:kidneysmart/core/service/overlay/overlay_manager_provider.dart';
import 'package:kidneysmart/core/widgets/app_load_widget.dart';


class OverlayManagerInitializer extends StatefulWidget {
  const OverlayManagerInitializer({required this.child, super.key});
  final Widget child;

  @override
  OverlayManagerInitializerState createState() =>
      OverlayManagerInitializerState();
}

class OverlayManagerInitializerState extends State<OverlayManagerInitializer> {
  OverlayManager? overlayManager;

  @override
  void initState() {
    super.initState();
    // Инициализация OverlayManager после построения виджета
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final overlay = Overlay.of(context);
      setState(() {
        overlayManager = OverlayManager(overlay);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // Если overlayManager еще не инициализирован, показываем загрузочный экран
    if (overlayManager == null) return const AppLoadWidget();

    return OverlayManagerProvider(
      manager: overlayManager!,
      child: widget.child,
    );
  }
}
