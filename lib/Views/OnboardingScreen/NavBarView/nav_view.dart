import 'package:e_learing_ui_app/Utills/colors.dart';
import 'package:e_learing_ui_app/Views/OnboardingScreen/HomeView/home_view.dart';
import 'package:flutter/material.dart';

class NavView extends StatefulWidget {
  const NavView({super.key});
  @override
  State<NavView> createState() => _NavViewState();
}

class _NavViewState extends State<NavView> {
  int currentIndex = 0;
  List<Widget> screens = const [
    HomeView(),
    Center(
      child: Text('My Learning'),
    ),
    Center(
      child: Text(' WhiteList'),
    ),
    Center(
      child: Text('Settings'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Feature'),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_circle_outline), label: ' My Learning'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'WhiteList'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'settings'),
          ]),
    );
  }
}
