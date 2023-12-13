import 'package:e_learning_ui/home_screen_widgets.dart/home_screen_lesson_widget.dart';
import 'package:e_learning_ui/home_screen_widgets.dart/home_screen_level_widget.dart';
import 'package:e_learning_ui/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3DB2FF),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 36, top: 30),
            child: Row(
              children: [
                const Padding(padding: EdgeInsets.only(top: 32), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Hi, John!", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white)), SizedBox(height: 13), Text("What local language \nwould you like to learn?", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white))])),
                const SizedBox(width: 5),
                SvgPicture.asset('assets/home_screen_image.svg')
              ],
            ),
          ),
          const SizedBox(height: 38),
          Container(
            width: 378,
            height: 537,
            decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(13), topRight: Radius.circular(13)), color: Colors.white),
            child: Column(
              children: [
                Center(child: SvgPicture.asset('assets/home_indicator_2.svg')),
                const SizedBox(height: 9),
                const Center(child: Text('Language Being Learned', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xFF43463F)))),
                const SizedBox(height: 31),
                const Padding(padding: EdgeInsets.only(left: 10, right: 10), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [HomeScreenLevelWidget(courseName: 'Minangkabau', courseLevel: '7 Level', courseMember: '7K active participants'), HomeScreenLevelWidget(courseName: 'Papua', courseLevel: '5 Level', courseMember: '5K active participants')])),
                // const SizedBox(height: 23),
                SizedBox(
                  height: 270,
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return const Center(
                        child: HomeScreenLessonWidget(lessonImage: 'assets/home_lesson_image_1.png', lessonName: 'Sundanese', lessonProgressBar: 'assets/progress_bar_1.svg', lessonParcent: '80%'),
                      );
                    },
                  ),
                ),
                const MyNavigationBar(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
