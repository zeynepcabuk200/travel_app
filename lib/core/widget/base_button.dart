import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/constants/app_assets_path.dart';
import 'package:travel_app/core/constants/app_colors.dart';

class BaseButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  BaseButton({super.key,this.isResponsive=false,this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        color: AppColors.blueColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        SvgPicture.asset(AppAssetsPath.nextIconPath,height: 25,)
      ],),
    );
  }
}