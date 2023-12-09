import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, "screen_one");
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3DB2FF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(children: [SvgPicture.asset('splash_screen.svg'), Positioned(left: 27, top: 30, child: SvgPicture.asset('splash_logo.svg'))]),
            const SizedBox(height: 14),
            SvgPicture.asset('splash_name.svg'),
          ],
        ),
      ),
    );
  }
}
