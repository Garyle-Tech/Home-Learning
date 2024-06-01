import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/path.dart';

class CustomButtonCircle extends StatelessWidget {
  const CustomButtonCircle({
    super.key,
    this.onPressed,
    required this.icon,
  });

  final VoidCallback? onPressed;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Bounce(
      onTap: onPressed,
      tilt: false,
      tapDelay: const Duration(milliseconds: 100),
      duration: const Duration(milliseconds: 100),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: ColorConstant.whiteColor,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: ColorConstant.blackColor.withOpacity(0.03),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Center(
          child: SvgPicture.asset(
            icon,
            width: 24,
          ),
        ),
      ),
    );
  }
}
