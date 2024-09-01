import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/constants/app_assets_path.dart';
import 'package:travel_app/core/constants/app_colors.dart';
import 'package:travel_app/core/textstyle/app_textstyle.dart';

class BaseButton extends StatelessWidget {
  bool isResponsive;
  double? width;
  BaseButton({super.key, this.isResponsive = false, this.width=120});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive?double.maxFinite: width,
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: AppColors.blueColor,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: isResponsive? MainAxisAlignment.spaceBetween: MainAxisAlignment.center,
          children: [
           isResponsive? const Text(
              "Book Trip Now",
              style: AppTextstyle.midWhiteText,
            ):const SizedBox.shrink(),
            SvgPicture.asset(
              AppAssetsPath.nextIconPath,
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}
