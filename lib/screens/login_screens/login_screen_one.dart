import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class LoginScreenOne extends StatefulWidget {
  const LoginScreenOne({super.key});

  @override
  State<LoginScreenOne> createState() => _LoginScreenOneState();
}

class _LoginScreenOneState extends State<LoginScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Stack(children: [SvgPicture.asset('assets/next_screen_logo.svg'), Positioned(left: 120, top: 65, child: SvgPicture.asset('assets/black_background.svg')), Positioned(left: 150, top: 100, child: SvgPicture.asset('assets/splash_logo.svg'))])),
          const SizedBox(height: 7),
          SvgPicture.asset('assets/splash_name_black.svg'),
          const SizedBox(height: 54),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [Text('Input Your Email', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF0074CE)))]),
          ),
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.only(left: 23, right: 23),
            child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder(), enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40)), borderSide: BorderSide(color: Color(0xFF0074CE)))),
            ),
          ),
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [Text('Input Your Password', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF0074CE)))]),
          ),
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.only(left: 23, right: 23),
            child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder(), enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40)), borderSide: BorderSide(color: Color(0xFF0074CE)))),
            ),
          ),
          const SizedBox(height: 17),
          InkWell(child: Container(width: 327, height: 58, decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40)), color: Color(0xFF0693F1)), child: const Center(child: Text('Login', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white))))),
          const SizedBox(height: 24),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      width: 360,
                      height: 320,
                      decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)), color: Color.fromARGB(58, 197, 197, 197)),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Image.asset('assets/google_image.png'), InkWell(onTap: () => Navigator.pop(context), child: SizedBox(width: 30, height: 30, child: SvgPicture.asset('assets/Close.svg')))],
                            ),
                            const SizedBox(height: 24),
                            const Center(child: Text('Choose your account', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color(0xFF263238)))),
                            const SizedBox(height: 8),
                            Center(child: Container(width: 344, height: 72, decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(13)), color: Colors.white), child: ListTile(leading: SvgPicture.asset('assets/Icon.svg'), title: const Text('John Doe', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black)), subtitle: const Text('Johndoe@gmail.com', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey)), trailing: SvgPicture.asset('assets/right_button.svg')))),
                            const SizedBox(height: 8),
                            Center(child: Container(width: 344, height: 72, decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(13)), color: Colors.white), child: ListTile(leading: SvgPicture.asset('assets/Icon.svg'), title: const Text('Otong', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black)), subtitle: const Text('otongs@gmail.com', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey)), trailing: SvgPicture.asset('assets/right_button.svg')))),
                            const SizedBox(height: 8),
                            Row(mainAxisAlignment: MainAxisAlignment.center, children: [const Text('Use another account?', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black)), const SizedBox(width: 12), SvgPicture.asset('assets/pastga_strelka.svg')])
                          ],
                        ),
                      ),
                    );
                  });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [const Text('Login With Google', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black)), const SizedBox(width: 12), SvgPicture.asset('assets/GoogleLogo.svg')],
            ),
          ),
          const SizedBox(height: 63),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text('Doesn’t have account?', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color.fromRGBO(60, 60, 67, 0.60))),
            const SizedBox(width: 10),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'register_screen_one');
                },
                child: const Text('Register', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF3DB2FF))))
          ])
        ],
      ),
    );
  }
}
