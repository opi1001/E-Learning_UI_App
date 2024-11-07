import 'package:e_learing_ui_app/Utills/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String tittle;
  final double? width;
  final void Function()? onTap;
  const CustomButton({super.key, required this.tittle, this.width, this.onTap});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width ?? size.width * .3,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                offset: const Offset(3, 6),
                color: AppColors.primaryColor.withOpacity(.3),
                spreadRadius: 5),
          ],
          color: AppColors.primaryColor,
        ),
        child: const Text(
          "Get Started",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
