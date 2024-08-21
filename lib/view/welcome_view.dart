import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app/core/constants/app_text.dart';
import 'package:travel_app/core/textstyle/app_textstyle.dart';
import 'package:travel_app/core/widget/base_button.dart';

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
                child: const Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppText.welcomeTitleText,
                          style: AppTextstyle.largeBoldText,
                        ),
                        Text(
                          AppText.welcomeSubTitleText,
                          style: AppTextstyle.largeText,
                        ),
                        SizedBox(height: 15,),
                        SizedBox(
                          width: 350,
                          child:  Text(
                            AppText.welcomeDescriptionText,
                            style: AppTextstyle.size14BlackText,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
