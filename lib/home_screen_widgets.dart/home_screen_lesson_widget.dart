import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class HomeScreenLessonWidget extends StatefulWidget {
  final String lessonImage;
  final String lessonName;
  final String lessonProgressBar;
  final String lessonParcent;

  const HomeScreenLessonWidget({super.key, required this.lessonImage, required this.lessonName, required this.lessonProgressBar, required this.lessonParcent});

  @override
  State<HomeScreenLessonWidget> createState() => _HomeScreenLessonWidgetState();
}

class _HomeScreenLessonWidgetState extends State<HomeScreenLessonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 13),
      width: 349,
      height: 84,
      decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(8)), color: Colors.white, border: Border.all(width: 1)),
      child: Padding(
        padding: const EdgeInsets.only(left: 12, top: 8, right: 8),
        child: Row(
          children: [
            Image.asset(widget.lessonImage),
            const SizedBox(width: 8),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.lessonName, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Color(0xFF3C3A36))),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      SvgPicture.asset(widget.lessonProgressBar),
                      const SizedBox(width: 15),
                      Text(widget.lessonParcent, style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Colors.black)),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
