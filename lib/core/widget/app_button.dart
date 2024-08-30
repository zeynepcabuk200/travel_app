import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: AppColors.greyColor, borderRadius: BorderRadius.circular(15)),
    );
    ;
  }
}
