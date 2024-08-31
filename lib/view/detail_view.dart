import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/app_colors.dart';
import 'package:travel_app/core/textstyle/app_textstyle.dart';
import 'package:travel_app/core/widget/app_button.dart';
import 'package:travel_app/core/widget/base_button.dart';

class DetailView extends StatefulWidget {
  const DetailView({super.key});

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  int activeStar = 4;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                child: Container(
              width: double.maxFinite,
              height: 450,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/travel_0.png"),
                      fit: BoxFit.cover)),
            )),
            const Positioned(
                top: 50,
                left: 20,
                right: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.menu,
                          color: AppColors.whiteColor,
                        )),
                    IconButton(onPressed: null, icon: Icon(Icons.menu))
                  ],
                )),
            Positioned(
                top: 370,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 550,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  decoration: const BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Yosemite",
                            style: AppTextstyle.largeBoldText,
                          ),
                          Text(
                            "\$ 250",
                            style: AppTextstyle.largeBlueText,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: AppColors.blueColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "USA, California",
                            style: AppTextstyle.smallBlueText,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(
                                Icons.star,
                                color: activeStar > index
                                    ? AppColors.starColor
                                    : AppColors.greyColor,
                              );
                            }),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "(4.0)",
                            style: AppTextstyle.smallGreyText,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        "People",
                        style: AppTextstyle.middleBlackText,
                      ),
                      const Text(
                        "Number of people in your group",
                        style: AppTextstyle.smallGreyText,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Wrap(
                        children: List.generate(5, (index) {
                          return AppButton(
                            color: selectedIndex == index
                                ? AppColors.black54Color
                                : AppColors.greyColor,
                            backgroundColor: selectedIndex == index
                                ? AppColors.blackColor
                                : AppColors.greyColor,
                            size: 60,
                            borderColor: AppColors.greyColor,
                            isIcon: false,
                            text: (index + 1).toString(),
                            textStyle: selectedIndex == index
                                ? AppTextstyle.smallWhiteText
                                : AppTextstyle.smallBlackText,
                            function: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                          );
                        }),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Description",
                        style: AppTextstyle.middleBlackText,
                      ),
                      const Text(
                        "Description DescriptionDescriptionDescription DescriptionDescription Description Description Description Description Description Description Description DescriptionDescriptionDescription",
                        style: AppTextstyle.smallGreyText,
                      ),
                    ],
                  ),
                )),
            Positioned(
                bottom: 20,
                left: 20,
                child: Row(
                  children: [
                    AppButton(
                      backgroundColor: AppColors.whiteColor,
                      borderColor: AppColors.greyColor,
                      color: AppColors.greyColor,
                      size: 60,
                      function: () {},
                      isIcon: true,
                      icon: Icons.favorite_border,
                    ),
                    BaseButton(isResponsive: true,)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
