import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  const App({super.key});
  @override
  State<App> createState() => AppHome();
  // @override
  // Widget build(BuildContext context) {
  //   return const MaterialApp(
  //     home: AppHome(),
  //   );
  // }
}

class AppHome extends State<App> {
  int buttonClicked = 0;
  // const AppHome({super.key});
  bool _obscureText = true;
  var text = '';
  void changedText(int button) {
    setState(() {
      buttonClicked = button;
      switch (button) {
        case 1:
          text =
              "ログインＩＤとパスワードを入力してログインします。\n ログインＩＤまたはパスワードをお忘れの場合は「問い合わせ先」よりお問い合わせをお願いします";
          break;
        case 2:
          text = "オフラインでは利用できません。\nオフラインでは利用できません";
          break;
        case 3:
          text =
              "システムに関する問合せは以下まで連絡お願いします。\nシステム担当：ＸＸＸＸ (xxxxxx@toshiba.co.jp) ";
          break;
        default:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        alignment: Alignment.center,
        color: const Color(0xFF10163a),
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width * 1,
                      child: Container(
                        color: Colors.white,
                        child: Column(children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.17,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 26,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                    color: Color(0xFF0063d0),
                                  ),
                                  onPressed: () {},
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor: const Color(0xFF0063d0),
                                    padding: const EdgeInsets.only(left: -5),
                                    textStyle: const TextStyle(fontSize: 16),
                                  ),
                                  onPressed: () => changedText(1),
                                  child: const Text(
                                    ' ログインについて ',
                                    style: TextStyle(
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 26,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                    color: Color(0xFF0063d0),
                                  ),
                                  onPressed: () {},
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor: const Color(0xFF0063d0),
                                    padding: const EdgeInsets.only(left: -5),
                                    textStyle: const TextStyle(fontSize: 16),
                                  ),
                                  onPressed: () => changedText(2),
                                  child: const Text(
                                    ' 通信環境 ',
                                    style: TextStyle(
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 26,
                            width: MediaQuery.of(context).size.width * 0.75,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                    color: Color(0xFF0063d0),
                                  ),
                                  onPressed: () {},
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor: const Color(0xFF0063d0),
                                    padding: const EdgeInsets.only(left: -5),
                                    textStyle: const TextStyle(fontSize: 16),
                                  ),
                                  onPressed: () => changedText(3),
                                  child: const Text(
                                    ' 問い合わせ先 ',
                                    style: TextStyle(
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.17,
                            width: MediaQuery.of(context).size.width * 0.75,
                            child: Text(
                              text ?? '',
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  height: 1.5),
                            ),
                          )
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Column(
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
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black
                                .withOpacity(0.14), // Set the shadow color
                            spreadRadius:
                                2, // Set the spread radius of the shadow
                            blurRadius: 4, // Set the blur radius of the shadow
                            offset:
                                Offset(0, 2), // Set the offset of the shadow
                          ),
                        ],
                      ),
                      child: LayoutBuilder(builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Column(
                          children: [
                            const Icon(
                              Icons.person,
                              size: 80.0,
                              color: Color(0xFF4b4b4b),
                            ),
                            SizedBox(
                              width: constraints.maxWidth * 0.8,
                              height: 34,
                              child: TextField(
                                cursorColor: const Color(0xFF4b4b4b),
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                        color: Color(0xFFd7d7d7)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                        color: Color(0xFFd7d7d7)),
                                  ),
                                  // ),
                                  hintText: 'ログインＩＤ',
                                  alignLabelWithHint: true,
                                  contentPadding: const EdgeInsets.all(10.0),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            SizedBox(
                              width: constraints.maxWidth * 0.8,
                              height: 34,
                              child: Stack(children: [
                                TextField(
                                  textAlign: TextAlign.center,
                                  obscureText: _obscureText,
                                  cursorColor: const Color(0xFF4b4b4b),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                          color: Color(0xFFd7d7d7)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                          color: Color(0xFFd7d7d7)),
                                    ),
                                    hintText: 'パスワード',
                                    contentPadding: const EdgeInsets.all(10.0),
                                  ),
                                ),
                                Positioned(
                                  right: 10,
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 34,
                                    width: 24,
                                    child: IconButton(
                                      color: const Color(0xFFd7d7d7),
                                      icon: Icon(
                                        _obscureText
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                        size: 18,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _obscureText = !_obscureText;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                            const SizedBox(
                              height: 26,
                            ),
                            ElevatedButton.icon(
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('This is a SnackBar'),
                                      behavior: SnackBarBehavior
                                          .floating, // Display at the top
                                    ),
                                  );
                                },
                                icon: SvgPicture.asset(
                                  'assets/images/login.svg',
                                  width: 22,
                                  height: 22,
                                ),
                                label: const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    'ログイン',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(3),
                                  backgroundColor: const Color(0xFF52c195),
                                  minimumSize:
                                      Size(constraints.maxWidth * 0.8, 34.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                )),
                            const SizedBox(
                              height: 32,
                            )
                          ],
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
