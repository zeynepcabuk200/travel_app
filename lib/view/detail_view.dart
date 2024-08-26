import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app/core/constants/app_colors.dart';

class DetailView extends StatefulWidget {
  const DetailView({super.key});

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child:  Stack(
          children: [
            
                Positioned(
                  child: Container(
                  width: double.maxFinite,
                  height: 450,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/travel_0.png"),fit: BoxFit.cover)),
                )),
                const Positioned(
                top: 50,
                left: 20,
                right: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: null, icon: Icon(Icons.menu,color: AppColors.whiteColor,)),
                    IconButton(onPressed: null, icon: Icon(Icons.menu))
                  ],
                )),
                Positioned(
                  top: 370,

                  child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 550,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),
                    child: Column(children: [
                      Row(children: [],)
                    ],),
                ))

          ],
        ),
      ),
    );
  }
}
