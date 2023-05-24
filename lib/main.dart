import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppHome(),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      color: const Color(0xFF10163a),
      child: Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 60),
        child: Stack(
          children: [
            Column(
              children: [
                SvgPicture.asset(
                  'assets/images/logo.svg',
                  width: 100,
                  height: 115,
                ),
                Transform.translate(
                  offset: const Offset(0, -16.0),
                  child: const Text(
                    'EQSURV Manager',
                    style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        height: 1.5),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -16.0),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        height: 1.5),
                  ),
                ),
                Container(
                  height: 264,
                  width: 300,
                  // color: Colors.white,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(15.0), // Set the border radius
                  ),
                  child: const Column(
                    children: [
                      Icon(
                        Icons.person,
                        size: 80.0,
                        color: Color(0xFF4b4b4b),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
