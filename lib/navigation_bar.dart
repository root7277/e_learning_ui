import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  bool isColor = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  isColor != isColor;
                });
              },
              child: Column(
                children: [SvgPicture.asset('assets/navigation_1.svg'), const SizedBox(height: 2), Text('Learn', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: isColor ? const Color(0xFF000000) : const Color(0xFF3DB2FF)))],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isColor != isColor;
                });
              },
              child: Column(
                children: [SvgPicture.asset('assets/navigation_2.svg'), const SizedBox(height: 2), Text('Search', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: isColor ? const Color(0xFF3DB2FF) : const Color(0xFF000000)))],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isColor != isColor;
                });
              },
              child: Column(
                children: [SvgPicture.asset('assets/navigation_3.svg'), const SizedBox(height: 2), Text('Achievement', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: isColor ? const Color(0xFF3DB2FF) : const Color(0xFF000000)))],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isColor != isColor;
                });
              },
              child: Column(
                children: [SvgPicture.asset('assets/navigation_4.svg'), const SizedBox(height: 2), Text('Profile', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: isColor ? const Color(0xFF3DB2FF) : const Color(0xFF000000)))],
              ),
            )
          ],
        ),
      ),
    );
  }
}
