import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidneysmart/app/style/color/app_color.dart';
import 'package:kidneysmart/app/style/typography/app_text_styles.dart';
import 'package:kidneysmart/core/enum/enum_loan_status.dart';
import 'package:kidneysmart/core/enum/enum_type_form.dart';
import 'package:kidneysmart/core/utils/string_utils.dart';
import 'package:kidneysmart/gen/assets.gen.dart';

class AppLoanCard extends StatefulWidget {
  const AppLoanCard({
    required this.idLoan,
    required this.daysLate,
    required this.days,
    required this.daysLeft,
    required this.dateStart,
    required this.dateEnd,
    required this.status,
    required this.content,
    super.key,
  });

  final int idLoan;
  final int daysLate;
  final int days;
  final int daysLeft;
  final String dateStart;
  final String dateEnd;
  final EnumLoanStatus status;
  final List<AppLoanCardContent> content;

  @override
  State<AppLoanCard> createState() => _AppLoanCardState();
}

class _AppLoanCardState extends State<AppLoanCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _rotatedBoxAnimation;

  @override
  Widget build(BuildContext context) {
    const borderRadius = BorderRadius.all(Radius.circular(6));
    var textColor = AppColors.greenMain;
    var foregroundColor = AppColors.greenMain;
    var backgroundColor = AppColors.greenButton;

    final screenWidth = MediaQuery.of(context).size.width;
    var width = widget.daysLate > 0
        ? double.infinity
        : screenWidth * (1 - (widget.daysLeft / widget.days));

    if (width < 0) width = 0;

    if (widget.daysLate > 0) {
      textColor = AppColors.red;
      foregroundColor = AppColors.red;
      backgroundColor = AppColors.redBackground;
    } else if (widget.daysLeft <= 3) {
      textColor = AppColors.yellowLine;
      foregroundColor = AppColors.yellowLine;
      backgroundColor = AppColors.yellowAlertBorder;
    }

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        border: Border.fromBorderSide(BorderSide(color: AppColors.blueBorder)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 21),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            'Займ',
                            style:
                                AppTextStyle.s20w600h24.copyWith(height: 1.25),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Flexible(
                          child: Text(
                            '№${widget.idLoan}',
                            style:
                                AppTextStyle.s20w600h24.copyWith(height: 1.25),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      left: -16,
                      top: 0,
                      bottom: 0,
                      child: Container(
                        width: 2,
                        height: 24,
                        color: foregroundColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        'Статус',
                        style: AppTextStyle.s14w400h21
                            .copyWith(color: AppColors.greyGreyLightText),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        _statusInfo(
                          context,
                          status: widget.status,
                          daysLate: widget.daysLate,
                          daysLeft: widget.daysLeft,
                        ),
                        style:
                            AppTextStyle.s14w400h16.copyWith(color: textColor),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 6,
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: borderRadius,
                      ),
                    ),
                    Container(
                      width: width,
                      height: 6,
                      decoration: BoxDecoration(
                        color: foregroundColor,
                        borderRadius: borderRadius,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        'с ${widget.dateStart}',
                        style: AppTextStyle.s12w400h18
                            .copyWith(color: AppColors.greyText),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        'по ${widget.dateEnd}',
                        style: AppTextStyle.s12w400h18
                            .copyWith(color: AppColors.greyText),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            height: 1,
            color: AppColors.blueBorder,
          ),
          Theme(
            data:
                Theme.of(context).copyWith(dividerColor: AppColors.transparent),
            child: ListTileTheme(
              dense: true,
              minVerticalPadding: 0,
              contentPadding: EdgeInsets.zero,
              child: ExpansionTile(
                trailing: AnimatedBuilder(
                  animation: _rotatedBoxAnimation,
                  builder: (context, child) => Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()
                      ..rotateZ(_rotatedBoxAnimation.value),
                    child: SvgPicture.asset(
                      AssetPaths.icChevronDownSvg,
                      colorFilter: const ColorFilter.mode(
                        AppColors.greenMain,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
                title: Text(
                  'Подробнее',
                  style: AppTextStyle.s20w600h24
                      .copyWith(color: AppColors.greenMain),
                ),
                tilePadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                childrenPadding: EdgeInsets.zero,
                onExpansionChanged: (value) => value
                    ? _animationController.forward()
                    : _animationController.reverse(),
                children: List.generate(
                  widget.content.length,
                  (index) {
                    final item = widget.content[index];

                    return _ExpansionTileAppLoanCardContent(
                      title: item.title,
                      text: item.text,
                      extraText: item.extraText,
                      isShowDivider: index < (widget.content.length - 1),
                      isShowTopPadding: index > 0,
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _rotatedBoxAnimation = Tween<double>(
      begin: 0,
      end: pi,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.linear,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  String _statusInfo(
    BuildContext context, {
    required EnumLoanStatus status,
    required int daysLate,
    required int daysLeft,
  }) {
    if (status.isSold) {
      return 'продан';
    }

    if (daysLate > 0) {
      return 'просрочен на ${StringUtils.declOfNum(daysLate, EnumTypeForm.days, includeNumber: true)}';
    }

    return 'осталось ${StringUtils.declOfNum(daysLeft, EnumTypeForm.days, includeNumber: true)}';
  }
}

class _ExpansionTileAppLoanCardContent extends StatelessWidget {
  const _ExpansionTileAppLoanCardContent({
    required this.title,
    required this.text,
    required this.isShowDivider,
    required this.isShowTopPadding,
    this.extraText,
  });

  final String title;
  final String text;
  final String? extraText;
  final bool isShowDivider;
  final bool isShowTopPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: isShowTopPadding ? 16 : 0,
        bottom: 16,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: isShowDivider ? AppColors.blueBorder : AppColors.transparent,
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  title,
                  style: AppTextStyle.s14w400h21
                      .copyWith(color: AppColors.greyText),
                ),
              ),
              const SizedBox(width: 8),
              Flexible(
                child: Text(
                  text,
                  style: AppTextStyle.s14w600,
                ),
              ),
            ],
          ),
          if (extraText?.isNotEmpty ?? false) ...[
            const SizedBox(height: 4),
            Text(
              extraText!,
              style:
                  AppTextStyle.s12w400h18.copyWith(color: AppColors.greyText),
            ),
          ],
        ],
      ),
    );
  }
}

class AppLoanCardContent with EquatableMixin {
  const AppLoanCardContent({
    required this.title,
    required this.text,
    this.extraText,
  });

  final String title;
  final String text;
  final String? extraText;

  @override
  List<Object?> get props => [title, text, extraText];
}
