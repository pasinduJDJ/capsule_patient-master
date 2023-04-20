import 'package:capsule_patient/providers/providers.dart';
import 'package:capsule_patient/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: providers,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Capsule Patient',
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      home: const SplashScreen(),
    );
  }
}
