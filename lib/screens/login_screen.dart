import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../utils/screen_size.dart';
import '../utils/utils.dart';
import '../widgets/common/checkbox_with_labels.dart';
import '../widgets/common/primary_button_widget.dart';
import '../widgets/common/text_field_widget.dart';
import 'home.dart';
import 'register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: const AssetImage("assets/images/blueDesignSignIn.png"),
              width: ScreenSize.width * 0.65,
            ),
            Container(
              width: ScreenSize.width,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Utils.seperatorWidget(heightRatio: 5),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const TextFormFieldWidget(
                          label: "Email",
                        ),
                        Utils.seperatorWidget(),
                        const TextFormFieldWidget(
                          label: "Password",
                          isPassword: true,
                        ),
                        Utils.seperatorWidget(),
                        CheckBoxWithLabels(
                          onRememberCheck: ((isChecked) =>
                              debugPrint(isChecked.toString())),
                          label: "Remember me",
                        ),
                        Utils.seperatorWidget(),
                        PrimaryButtonWidget(
                          ontap: () async {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return const Home();
                            }));
                          },
                          height: ScreenSize.height * 0.06,
                          width: ScreenSize.width,
                          text: "Sign in",
                        ),
                      ],
                    ),
                  ),
                  Utils.seperatorWidget(),
                  Text(
                    "OR",
                    style: TextStyle(
                      fontSize: ScreenSize.getResponsiveFontSize(13),
                    ),
                  ),
                  const SizedBox(height: 10),
                  PrimaryButtonWidget(
                    icon: const CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/google_logo.png"),
                      radius: 20,
                    ),
                    ontap: () {},
                    isOutlined: true,
                    height: ScreenSize.height * 0.06,
                    width: ScreenSize.width,
                    text: "Sign in with Google",
                  ),
                  Utils.seperatorWidget(heightRatio: 2),
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(color: Colors.black),
                      children: [
                        const TextSpan(
                          text: "Dont have an account? ",
                        ),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const RegisterScreen(),
                                ),
                              );
                            },
                          text: "Register",
                          style: const TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
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
