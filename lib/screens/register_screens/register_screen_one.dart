import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class RegisterScreenOne extends StatefulWidget {
  const RegisterScreenOne({super.key});

  @override
  State<RegisterScreenOne> createState() => _RegisterScreenOneState();
}

class _RegisterScreenOneState extends State<RegisterScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: 450, decoration: const BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(150)), color: Color(0xFF0693F1)), child: Center(child: SvgPicture.asset('assets/create_profile.svg'))),
          const SizedBox(height: 27),
          const Padding(padding: EdgeInsets.only(left: 33, right: 33), child: Text('Create Your Profile', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400, color: Color(0xFF273958)))),
          const Padding(padding: EdgeInsets.only(left: 33, right: 33), child: Text('Now!', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400, color: Color(0xFF273958)))),
          const SizedBox(height: 28),
          const Padding(padding: EdgeInsets.only(left: 33, right: 33), child: Text('Create a profile to save your learning \nprogress and keep learning for free!', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF989EA7)))),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 35, right: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(onTap: () => Navigator.pop(context), child: Container(width: 127, height: 48, decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40)), color: Colors.white), child: const Center(child: Text('Back', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF0693F1)))))),
                InkWell(onTap: () => Navigator.pushNamed(context, 'register_screen_age'), child: Container(width: 127, height: 48, decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40)), color: Color(0xFF0693F1)), child: const Center(child: Text('Next', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFFFFFFFF)))))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
