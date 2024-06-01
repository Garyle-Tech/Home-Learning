import 'package:flutter/material.dart';
import '/path.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<LoginPageView> createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
  var _rememberToggle = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          _content(),
          Align(
            alignment: Alignment.bottomCenter,
            child: _footer(),
          ),
        ],
      ),
    );
  }

  Widget _footer() {
    return Text(
      "Version 1.0.0",
      style: FontFamilyConstant.primaryFont.copyWith(
        color: ColorConstant.greyColor1,
        fontSize: 12,
        fontWeight: FontWeightConstant.bold,
      ),
    );
  }

  Widget _content() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Center(
              child: Image.asset(
                "assets/images/img_logo.png",
                width: widget.size.width * 0.4,
              ),
            ),
            SizedBox(height: widget.size.height * 0.1),
            Text(
              "Let's Sign In",
              style: FontFamilyConstant.primaryFont.copyWith(
                color: ColorConstant.blackColor2,
                fontSize: 18,
                fontWeight: FontWeightConstant.bold,
              ),
            ),
            Text(
              "Login to Your Account to Continue your Courses",
              style: FontFamilyConstant.primaryFont.copyWith(
                color: ColorConstant.greyColor1,
                fontSize: 14,
                fontWeight: FontWeightConstant.bold,
              ),
            ),
            const SizedBox(height: 24),
            CustomTextField(
              svgIconPrefix: "assets/icons/ic_email.svg",
              controller: TextEditingController(),
              hintText: "Email",
            ),
            const SizedBox(height: 16),
            CustomTextField(
              svgIconPrefix: "assets/icons/ic_password.svg",
              controller: TextEditingController(),
              hintText: "Password",
              obscureText: true,
              isPassword: true,
              onTapIconSeePassword: () {},
            ),
            const SizedBox(height: 8),
            // remember me & forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: _rememberToggle,
                      onChanged: (value) {
                        setState(() {
                          _rememberToggle = value!;
                        });
                      },
                      activeColor: ColorConstant.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      visualDensity: VisualDensity.compact,
                    ),
                    Text(
                      "Remember Me",
                      style: FontFamilyConstant.primaryFont.copyWith(
                        color: ColorConstant.greyColor1,
                        fontSize: 14,
                        fontWeight: FontWeightConstant.bold,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Forgot Password?",
                  style: FontFamilyConstant.primaryFont.copyWith(
                    color: ColorConstant.greyColor1,
                    fontSize: 14,
                    fontWeight: FontWeightConstant.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            const CustomButton(),
            const SizedBox(height: 24),
            // continue login with other account like google & apple
            Center(
              child: Text(
                "Or Continue with",
                style: FontFamilyConstant.primaryFont.copyWith(
                  color: ColorConstant.greyColor1,
                  fontSize: 14,
                  fontWeight: FontWeightConstant.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButtonCircle(
                  icon: "assets/icons/ic_google.svg",
                  onPressed: () {},
                ),
                const SizedBox(width: 24),
                CustomButtonCircle(
                  icon: "assets/icons/ic_apple.svg",
                  onPressed: () {},
                ),
              ],
            ),

            // dont have account ?
            const SizedBox(height: 24),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: FontFamilyConstant.primaryFont.copyWith(
                      color: ColorConstant.greyColor1,
                      fontSize: 14,
                      fontWeight: FontWeightConstant.bold,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "Sign Up",
                    style: FontFamilyConstant.primaryFont.copyWith(
                      color: ColorConstant.primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeightConstant.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
