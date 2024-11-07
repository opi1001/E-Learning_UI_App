import 'package:e_learing_ui_app/Utills/colors.dart';
import 'package:e_learing_ui_app/Views/OnboardingScreen/NavBarView/nav_view.dart';
import 'package:e_learing_ui_app/widgets/custom_Button.dart';
import 'package:flutter/material.dart';

class OnboaringScreen extends StatefulWidget {
  const OnboaringScreen({super.key});

  @override
  State<OnboaringScreen> createState() => _OnboaringScreenState();
}

class _OnboaringScreenState extends State<OnboaringScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/logo1.jpg",
            height: size.height * .4,
            width: size.width * .9,
          ),
          const SizedBox(),
          Container(
            height: size.height * .35,
            width: size.width * .9,
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Discover Your Next \n Skill Learn Anything You Want!!!",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black.withOpacity(.8),
                        fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Discover The Things Your \n Want to Learn And Grow With Them",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colors.black.withOpacity(.5)),
                    textAlign: TextAlign.center,
                  ),
                  CustomButton(
                    tittle: 'Get Started',
                    width: size.width * 0.4,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NavView()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
