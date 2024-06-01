import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '/path.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.svgIconPrefix,
    this.svgIconSuffix,
    this.obscureText,
    this.textInputType = TextInputType.text,
    this.isPassword = false,
    this.onTapIconSeePassword,
  });

  final TextEditingController controller;
  final TextInputType textInputType;
  final String hintText;
  final String svgIconPrefix;
  final String? svgIconSuffix;
  final bool? obscureText;
  final bool isPassword;
  final VoidCallback? onTapIconSeePassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: ColorConstant.whiteColor,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.blackColor.withOpacity(0.03),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          SvgPicture.asset(svgIconPrefix),
          const SizedBox(width: 10),
          Expanded(
            child: TextFormField(
              controller: controller,
              obscureText: obscureText ?? false,
              keyboardType: textInputType,
              decoration: InputDecoration.collapsed(
                hintText: hintText,
              ),
            ),
          ),
          isPassword && svgIconSuffix == null
              ? InkWell(
                  onTap: onTapIconSeePassword,
                  child: SvgPicture.asset(
                    obscureText == false
                        ? 'assets/icons/ic_see_password_active.svg'
                        : 'assets/icons/ic_see_password_inactive.svg',
                  ),
                )
              : Container(),
          svgIconSuffix != null ? SvgPicture.asset(svgIconSuffix!) : Container()
        ],
      ),
    );
  }
}
