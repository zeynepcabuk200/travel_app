import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/core/constants/app_colors.dart';
import 'package:travel_app/core/constants/app_text.dart';
import 'package:travel_app/core/textstyle/app_textstyle.dart';
import 'package:travel_app/core/widget/base_button.dart';
import 'package:travel_app/cubit/app_cubits.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  List images = ["assets/images/travel_0.png", "assets/images/travel_1.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        images[index],
                      ))),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          AppText.welcomeTitleText,
                          style: AppTextstyle.largeBoldText,
                        ),
                        const Text(
                          AppText.welcomeSubTitleText,
                          style: AppTextstyle.largeText,
                        ),
                        const SizedBox(height: 25,),
                        const SizedBox(
                          width: 350,
                          child:  Text(
                            AppText.welcomeDescriptionText,
                            style: AppTextstyle.size14BlackText,
                          ),
                        ),
                        const SizedBox(height: 50,),
                        GestureDetector(
                          onTap: () {
                            BlocProvider.of<AppCubits>(context).getData();
                          },
                          child: Container(
                            width: 200,
                            child: Row(
                              children: [
                                BaseButton(width: 150,),
                              ],
                            )))
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots){
                        return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          height:index==indexDots? 30:10,
                          width: 8,
                          decoration: BoxDecoration(
                            color: index==indexDots?AppColors.blueColor:AppColors.greyColor,
                            borderRadius: BorderRadius.circular(5)
                            ),
                        );
                      })
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
