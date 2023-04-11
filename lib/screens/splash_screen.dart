import 'package:capsule_patient/screens/login_screen.dart';
import 'package:capsule_patient/utils/screen_size.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
  }

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return const Scaffold(
      body: Center(
        child: Text("Splash Screen"),
      ),
    );
  }

  navigateToNextScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => const LoginScreen()));
    });
  }
}
