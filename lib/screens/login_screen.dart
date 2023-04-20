import 'package:capsule_patient/screens/register_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../utils/screen_size.dart';
import '../widgets/common/checkbox_with_labels.dart';
import '../widgets/common/primary_button_widget.dart';
import '../widgets/common/text_field_widget.dart';

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
          children: [
            Row(children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.4,
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: const BoxDecoration(
                    // borderRadius: BorderRadius.circular(80),
                    image: DecorationImage(
                        image:
                            AssetImage("assets/images/blueDesignSignIn.png"))),
              ),
            ]),
            Container(
              width: ScreenSize.width,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const TextFormFieldWidget(
                          label: "Email",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const TextFormFieldWidget(
                          label: "Password",
                          isPassword: true,
                        ),
                        const SizedBox(height: 10),
                        CheckBoxWithLabels(
                          onRememberCheck: ((isChecked) =>
                              debugPrint(isChecked.toString())),
                          label: "Remember me",
                        ),
                        PrimaryButtonWidget(
                          ontap: () async {},
                          height: ScreenSize.height * 0.06,
                          width: ScreenSize.width,
                          text: "Sign in",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "OR",
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 10),
                  PrimaryButtonWidget(
                    ontap: () {},
                    isOutlined: true,
                    height: ScreenSize.height * 0.06,
                    width: ScreenSize.width,
                    text: "Sign in with Google",
                  ),
                  const SizedBox(height: 20),
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
