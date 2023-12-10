import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class RegisterScreenAge extends StatefulWidget {
  const RegisterScreenAge({super.key});

  @override
  State<RegisterScreenAge> createState() => _RegisterScreenTwoState();
}

class _RegisterScreenTwoState extends State<RegisterScreenAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: const EdgeInsets.only(left: 24, top: 53), child: InkWell(onTap: () => Navigator.pop(context), child: Container(width: 42, height: 42, decoration: const BoxDecoration(boxShadow: [BoxShadow(color: Colors.grey, offset: Offset(2.0, 2.0), blurRadius: 20)]), child: Center(child: SvgPicture.asset('assets/back_button.svg'))))),
          const SizedBox(height: 32),
          const Center(child: Text('How old are you?', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: Color(0xFF273958)))),
          const SizedBox(height: 36),
          const Padding(padding: EdgeInsets.only(left: 24, right: 24), child: TextField(keyboardType: TextInputType.number, textAlign: TextAlign.center, decoration: InputDecoration(border: OutlineInputBorder(), enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40)), borderSide: BorderSide(color: Color(0xFF0074CE)))))),
          const SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: InkWell(onTap: () => Navigator.pushNamed(context, 'register_screen_name'), child: Container(width: 327, height: 58, decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40)), color: Color(0xFF0693F1)), child: const Center(child: Text('Next', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white))))),
          ),
        ],
      ),
    );
  }
}
