import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../utils/screen_size.dart';
import '../widgets/common/checkbox_with_labels.dart';
import '../widgets/common/primary_button_widget.dart';
import '../widgets/common/text_field_widget.dart';
import 'home.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      // padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Row(children: [
            Container(
              width: ScreenSize.width / 1.5,
              height: ScreenSize.height * 0.3,
              decoration: const BoxDecoration(
                  // borderRadius: BorderRadius.circular(80),
                  image: DecorationImage(
                      image: AssetImage("assets/images/blueDesign.png"))),
            ),
          ]),
          Center(
            child: SizedBox(
              width: ScreenSize.width * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Sign up with Google",
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        width: 30,
                        height: 30,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/google_logo.png"),
                          radius: 100,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/ProfilePicture_1.png"),
                          radius: 100,
                        ),
                      ),
                    ],
                  ),
                  const TextFormFieldWidget(
                    label: "First name",
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextFormFieldWidget(
                    label: "Last name",
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextFormFieldWidget(
                    label: "Mobile number",
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextFormFieldWidget(
                    label: "Password",
                    isPassword: true,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const TextFormFieldWidget(
                    label: "Confoirm Password",
                    isPassword: true,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      PrimaryButtonWidget(
                        width: ScreenSize.width / 5,
                        height: ScreenSize.height * 0.04,
                        text: "Next",
                        ontap: () {
                          showDialog(
                              context: context,
                              builder: (context) => const OtpConfoirmMsg(
                                    mobilenumber: 767066455,
                                  ));
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account ? "),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()),
                            );
                          },
                          child: const Text(
                            "  Sign In",
                            style: TextStyle(color: kPrimaryColor),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}

////////////////////////////////Otp Confoirm Msg
class OtpConfoirmMsg extends StatelessWidget {
  const OtpConfoirmMsg({super.key, required this.mobilenumber});

  final int mobilenumber;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        "OTP Confirmation",
        textAlign: TextAlign.center,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
      content: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: ScreenSize.height / 2.9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextFormFieldWidget(
              label: "Enter OTP No",
            ),
            const SizedBox(
              height: 5,
            ),
            const Flexible(
              child: Text(
                "You will receive an OTP  to your email  and phone number",
                style: TextStyle(fontSize: 10, color: Colors.black38),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Mobile number",
                    style: TextStyle(fontSize: 10),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "+94$mobilenumber",
                    style: const TextStyle(fontSize: 10),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "change",
                    style: TextStyle(fontSize: 10, color: Colors.blue),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Resend OTP in ",
                  style: TextStyle(fontSize: 10),
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "00:58",
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            CheckBoxWithLabels(
              onRememberCheck: ((isChecked) =>
                  debugPrint(isChecked.toString())),
              label: "I  Accept Terms and Conditions",
            ),
            Row(
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                    child: const Text(
                      "Go back to login",
                      style: TextStyle(color: kPrimaryColor, fontSize: 12),
                    )),
                const Spacer(),
                PrimaryButtonWidget(
                  text: "Finish",
                  height: 30,
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Home()));
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
