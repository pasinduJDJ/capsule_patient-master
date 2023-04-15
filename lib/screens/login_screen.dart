import 'package:capsule_patient/constants/colors.dart';
import 'package:capsule_patient/screens/home.dart';
import 'package:capsule_patient/screens/register_screen.dart';
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
        body: SingleChildScrollView(
            // padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
      children: [
        Row(children: [
          Container(
            width: MediaQuery.of(context).size.width / 1.4,
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: const BoxDecoration(
                // borderRadius: BorderRadius.circular(80),
                image: DecorationImage(
                    image: AssetImage("assets/images/blueDesignSignIn.png"))),
          ),
        ]),
        SizedBox(
          height: 30,
        ),
        Container(
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
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
                  const CheckBoxWithLabels(
                    isChecked: true,
                    label1: "Remember me",
                    label2: "Forget Password",
                  ),
                  PrimaryButtonWidget(
                    ontap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    },
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: MediaQuery.of(context).size.height * 0.06,
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
                    children: [
                      Text("Dont have an account ? "),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegisterScreen()),
                            );
                          },
                          child: Text(
                            "  Register",
                            style: TextStyle(
                              color: KprimaryColor,
                            ),
                          ))
                      // Text(
                      //   "  Register",
                      //   style: TextStyle(
                      //     color: KprimaryColor,
                      //   ),
                      // )
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    )));
  }
}
