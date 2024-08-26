import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/app_colors.dart';
import 'package:travel_app/view/navPages/bar_item_view.dart';
import 'package:travel_app/view/home_view.dart';
import 'package:travel_app/view/navPages/my_pages_view.dart';
import 'package:travel_app/view/navPages/search_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  List  pages = [const HomeView(), const BarItemView(), const SearchView(), const MyPagesView()];
  int currentIndex=0;
  void onTap(int index){
    setState(() {
      currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: AppColors.blackColor,
        unselectedItemColor: AppColors.black38Color,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.apps,),label: 'Home',),
        BottomNavigationBarItem(icon: Icon(Icons.bar_chart_sharp),label: 'BarItem',),
        BottomNavigationBarItem(icon: Icon(Icons.search,),label: 'Search',),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile',),
      ]),
    );
  }
}
