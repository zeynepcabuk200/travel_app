import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/app_colors.dart';
import 'package:travel_app/core/textstyle/app_textstyle.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.menu),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.greyColor),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Discover",
              style: AppTextstyle.largeBoldText,
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              child: TabBar(
                  controller: _tabController,
                  labelColor: AppColors.blackColor,
                  unselectedLabelColor: AppColors.black54Color,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator:
                      CircleTabIndicator(color: AppColors.blueColor, radius: 4),
                  tabs: const [
                    Tab(
                      text: "Places",
                    ),
                    Tab(
                      text: "Inspiration",
                    ),
                    Tab(
                      text: "Emotions",
                    )
                  ]),
            ),
            SizedBox(
              height: 300,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 200,
                          height: 300,
                          margin: const EdgeInsets.only(right: 15, top: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                  image:
                                      AssetImage("assets/images/travel_0.png"),
                                  fit: BoxFit.cover)),
                        );
                      }),
                  SizedBox(),
                  SizedBox(),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Explore more",
                  style: AppTextstyle.middleBlackText,
                ),
                Text(
                  "See all",
                  style: AppTextstyle.size14BlackText,
                ),
              ],
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return Column(children: [
                    Container(
                      height: 80,
                      width: 80,
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: AppColors.greyColor,
                        image: const DecorationImage(image: AssetImage("assets/images/travel_1.jpg"),fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20)),
                    )
                  ],);
              }),
            )
          ],
        ),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return CirclePainter(color: color, radius: radius);
  }
}

class CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
