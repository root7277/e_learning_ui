import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class HomeScreenLevelWidget extends StatefulWidget {
  final String courseName;
  final String courseLevel;
  final String courseMember;

  const HomeScreenLevelWidget({super.key, required this.courseName, required this.courseLevel, required this.courseMember});

  @override
  State<HomeScreenLevelWidget> createState() => _HomeScreenLevelWidgetState();
}

class _HomeScreenLevelWidgetState extends State<HomeScreenLevelWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      height: 93,
      decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)), color: Color(0xFF27AE60)),
      child: Padding(
        padding: const EdgeInsets.only(left: 12, top: 12, right: 8, bottom: 12),
        child: Row(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(widget.courseName, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white)), const SizedBox(height: 10), Text(widget.courseLevel, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white)), const SizedBox(height: 10), Text(widget.courseMember, style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Colors.white))]),
            Container(width: 48, height: 48, decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50)), color: Colors.white), child: Center(child: SvgPicture.asset('assets/CaretRight.svg')))
          ],
        ),
      ),
    );
  }
}
