import 'package:capsule_patient/constants/colors.dart';
import 'package:capsule_patient/utils/screen_size.dart';
import 'package:capsule_patient/widgets/common/checkbox_with_labels.dart';
import 'package:flutter/material.dart';

import '../widgets/common/primary_button_widget.dart';
import '../widgets/common/text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Container(
          width: ScreenSize.width * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextFormFieldWidget(
                label: "Phone number or Email",
              ),
              const SizedBox(
                height: 10,
              ),
              const TextFormFieldWidget(
                label: "Password",
                isPassword: true,
              ),
              const SizedBox(height: 10),
              const checkBoxWithLabels(
                isChecked: true,
                label1: "Remember me",
                label2: "Forget Password",
              ),
              PrimaryButtonWidget(
                width: ScreenSize.width / 2,
                height: ScreenSize.width * 0.1,
                text: "Sign in",
              ),
              const SizedBox(height: 5),
              const Text(
                "OR",
                style: TextStyle(fontSize: 10),
              ),
              // const SizedBox(height: 5),
              OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  side: MaterialStateProperty.all(const BorderSide(
                      color: KprimaryColor,
                      width: 1.0,
                      style: BorderStyle.solid)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
                ),
                child: const Text("Sign in With Google",
                    style: TextStyle(
                        fontSize: 13,
                        color: kblack,
                        fontWeight: FontWeight.w100)),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Dont have an account ? "),
                  Text(
                    "  Register",
                    style: TextStyle(color: KprimaryColor),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
