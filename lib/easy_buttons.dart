library easy_buttons;

import 'package:easy_buttons/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@immutable
class EasyButton extends StatelessWidget {
  EasyButton(
      {Key? key,
      this.icon,
      this.svgPicture,
      this.title,
      this.color,
      this.width,
      this.height,
      this.radius,
      this.onTap,
      this.fontSize})
      : super(key: key);

  final Widget? icon;
  final SvgPicture? svgPicture;
  final String? title;
  final Color? color;
  final double? width;
  final double? height;
  final double? radius;
  final Function? onTap;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        width: width ?? 153,
        height: height ?? 36,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius ?? 40),
            color: color ?? k1790FFColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            icon ??
                svgPicture ??
                SvgPicture.asset('assets/images/ic_done_bottom.svg'),
            Expanded(
              child: Center(
                child: Text(title ?? 'Save Button',
                    textAlign: TextAlign.center,
                    style: kBody3Style.copyWith(
                        fontSize: fontSize ?? 14, color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
