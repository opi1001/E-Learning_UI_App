import 'package:e_learing_ui_app/Utills/colors.dart';
import 'package:flutter/material.dart';

Widget homeappbar(Size size) {
  return Container(
    padding: const EdgeInsets.only(
      top: 20,
      left: 15,
      right: 15,
      bottom: 15,
    ),
    height: size.height * .3,
    width: size.width,
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [AppColors.secondaryColor, AppColors.primaryColor])),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const Text(
                  "Hello",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 35,
                      color: Colors.white),
                ),
                Text(
                  "Good Morning",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.white.withOpacity(.5)),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(.2),
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  const Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.primaryColor,
                          width: 1.5,
                        ),
                        color: Colors.orange,
                        shape: BoxShape.circle),
                  )
                ],
              ),
            ),
          ],
        ),
        TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: const BorderSide(
                  width: 0,
                ),
              ),
              hintText: 'search your topic',
              filled: true,
              fillColor: Colors.white,
              suffix: const Icon(
                Icons.mic,
                color: AppColors.primaryColor,
              ),
              prefix: Icon(
                Icons.search,
                color: Colors.black.withOpacity(.5),
              )),
        ),
      ],
    ),
  );
}
