import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Stack(children: [SvgPicture.asset('assets/next_screen_logo.svg'), Positioned(left: 160, top: 100, child: SvgPicture.asset('assets/splash_logo.svg'))])),
          const SizedBox(height: 7),
          SvgPicture.asset('assets/splash_name_black.svg'),
          const SizedBox(height: 73),
          Container(
            width: 360,
            height: 400,
            decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)), color: Color(0xFF3DB2FF)),
            child: Column(
              children: [
                Center(
                  child: SvgPicture.asset('assets/home_indicator.svg'),
                ),
                const SizedBox(height: 37),
                const Center(child: SizedBox(width: 340, height: 87, child: Center(child: Text('Learn the local language\n               for free!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white))))),
                const Center(child: SizedBox(width: 266, height: 80, child: Center(child: Text('     Learn all local languages \ninteractively at your fingertips!', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white))))),
                Center(child: SvgPicture.asset('assets/home_slider.svg')),
                const SizedBox(height: 52),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(onTap: () => Navigator.pushNamed(context, 'register_screen_one'), child: Container(width: 131, height: 58, decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(40)), border: Border.all(width: 2, color: Colors.white), color: const Color(0xFF3DB2FF)), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [const Text('Register', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white)), SvgPicture.asset('assets/CaretRight.svg')]))),
                      InkWell(onTap: () => Navigator.pushNamed(context, 'login_screen_one'), child: Container(width: 131, height: 58, decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40)), color: Colors.white), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [const Text('Login', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Color(0xFF3DB2FF))), SvgPicture.asset('assets/CaretRight_1.svg')])))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
