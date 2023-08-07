import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../utils/screen_size.dart';
import '../utils/utils.dart';
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: const AssetImage("assets/images/blueDesign.png"),
              width: ScreenSize.width * 0.65,
            ),
            Container(
              alignment: Alignment.center,
              padding:
                  EdgeInsets.symmetric(horizontal: ScreenSize.width * 0.07),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Utils.seperatorWidget(heightRatio: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      signupWithGoogle(),
                      const Stack(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                                "assets/images/ProfilePicture_1.png"),
                            radius: 30,
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: CircleAvatar(
                              radius: 10,
                              child: Center(
                                child: Icon(
                                  Icons.edit,
                                  size: 10,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Utils.seperatorWidget(),
                  const TextFormFieldWidget(
                    label: "First name",
                  ),
                  Utils.seperatorWidget(),
                  const TextFormFieldWidget(
                    label: "Last name",
                  ),
                  Utils.seperatorWidget(),
                  const TextFormFieldWidget(
                    label: "Mobile number",
                  ),
                  Utils.seperatorWidget(),
                  const TextFormFieldWidget(
                    label: "Password",
                    isPassword: true,
                  ),
                  Utils.seperatorWidget(),
                  const TextFormFieldWidget(
                    label: "Confirm Password",
                    isPassword: true,
                  ),
                  Utils.seperatorWidget(heightRatio: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account ?",
                            style: TextStyle(
                              fontSize: ScreenSize.getResponsiveFontSize(15),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen(),
                                ),
                              );
                            },
                            child: Text(
                              " Sign In",
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: ScreenSize.getResponsiveFontSize(15),
                              ),
                            ),
                          )
                        ],
                      ),
                      PrimaryButtonWidget(
                        width: ScreenSize.width * 0.3,
                        height: ScreenSize.height * 0.04,
                        text: "Next",
                        ontap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const OtpConfoirmMsg(
                              mobilenumber: 767066455,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  GestureDetector signupWithGoogle() {
    return GestureDetector(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Sign up with Google",
            style: TextStyle(
              fontSize: ScreenSize.getResponsiveFontSize(13),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/google_logo.png"),
            radius: 20,
          ),
        ],
      ),
    );
  }
}

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
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Mobile number",
                style: TextStyle(
                  fontSize: ScreenSize.getResponsiveFontSize(11),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "+94$mobilenumber",
                style: TextStyle(
                  fontSize: ScreenSize.getResponsiveFontSize(11),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Change",
                style: TextStyle(
                  fontSize: ScreenSize.getResponsiveFontSize(11),
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Utils.seperatorWidget(heightRatio: 0.5),
            ],
          ),
          Utils.seperatorWidget(heightRatio: 1.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Resend OTP in ",
                style: TextStyle(
                  fontSize: ScreenSize.getResponsiveFontSize(12),
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                "00:58",
                style: TextStyle(
                  fontSize: ScreenSize.getResponsiveFontSize(12),
                ),
              )
            ],
          ),
          Utils.seperatorWidget(heightRatio: 1.5),
          CheckBoxWithLabels(
            onRememberCheck: ((isChecked) => debugPrint(isChecked.toString())),
            label: "I Accept Terms and Conditions",
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  child: Text(
                    "Go back to login",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: ScreenSize.getResponsiveFontSize(11),
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              const Spacer(),
              PrimaryButtonWidget(
                text: "Finish",
                height: 30,
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Home(),
                    ),
                  );
                },
              )
            ],
          ),
        )
      ],
    );
  }
}
