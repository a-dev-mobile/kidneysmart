import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/notifier/page_tracker_notifier.dart';


class OverlayWidget extends ConsumerStatefulWidget {
  const OverlayWidget({
    required this.child,
    super.key,
  });
  final Widget child;

  @override
  ConsumerState<OverlayWidget> createState() => _OverlayWidgetState();
}

class _OverlayWidgetState extends ConsumerState<OverlayWidget> {
  @override
  void initState() {
    super.initState();

    // final _ = context.read<InternetCubit>().checkConnectivity();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          widget.child,
          const Positioned(height: 100, bottom: 10, child: NewWidget()),
        ],
      ),
    );
  }
}

class NewWidget extends ConsumerWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final page = ref.watch(pageTrackerNotifierProvider);
    return Text(page.page ?? '');
  }
}
