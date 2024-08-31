import 'package:flutter/material.dart';
import 'package:travel_app/core/textstyle/app_textstyle.dart';

class AppButton extends StatelessWidget {
  final Color borderColor;
  final Color backgroundColor;
  final double size;
  final Color color;
  String? text;
  IconData? icon;
  bool isIcon;
  final Function() function;
  TextStyle? textStyle;
  AppButton(
      {super.key,
      required this.backgroundColor,
      required this.borderColor,
      required this.color,
      required this.size,
      required this.function,
      this.textStyle=AppTextstyle.smallBlackText,
      this.icon,
      this.text = "",
      this.isIcon = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
          width: size,
          height: size,
          margin: const EdgeInsets.only(right: 5),
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: borderColor),
              color: backgroundColor,
              borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: isIcon
                ? Icon(
                    icon,
                    color: color,
                  )
                : Text(
                    text!,
                    style: textStyle,
                  ),
          )),
    );
  }
}
