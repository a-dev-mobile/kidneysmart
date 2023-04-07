import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/services/navigation/app_router_service.dart';

import 'package:nutrition/core/widget/widget.dart';
import 'package:nutrition/features/health_profile/health_profile.dart';
import 'package:nutrition/features/info_gfr/info_gfr.dart';
import 'package:url_launcher/url_launcher.dart';

class ResultGfr extends ConsumerWidget {
  const ResultGfr({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(healthProfileProvider);
    // final notifier = ref.watch(healthProfileProvider.notifier);
    final stateGfr = state.gfr;
    final isVisible = state.ckd.isShowCalcCreatinine;

    return Visibility(
      visible: isVisible,
      child: AppResultCard(
        isHaveInfoBtn: true,
        onPressedInfo: () => ref
            .read(appRouterServiceProvider)
            .router
            .pushNamed(InfoGfrPage.name),
        child: stateGfr.enumResult.mapValue(
          init: _Result(markdown: stateGfr.markdownInit),
          success: _Result(markdown: stateGfr.markdownSuccess),
          // success: _Result(markdown: stateGfr.markdownSuccess),
          error: _Result(markdown: stateGfr.markdownError),
        ),
      ),
    );
  }
}

class _Result extends StatelessWidget {
  const _Result({
    required this.markdown,
  });

  final String markdown;

  @override
  Widget build(BuildContext context) {
    return Markdown(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      data: markdown,
      onTapLink: (text, href, title) => _launchExternalUrl(href),
    );
  }

  static void _launchExternalUrl(String? urlStr) {
    if (urlStr == null) return;

    final url = Uri.parse(urlStr);
    final _ = launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    );
  }
}
