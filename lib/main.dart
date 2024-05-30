import 'package:capstone/kakao_login.dart';
import 'package:flutter/material.dart';
import 'joinmembership.dart';
import 'map/connect_map.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

void main() {
  KakaoSdk.init(nativeAppKey: 'd9e4fa86f07b1b5af53c87a06a8ebf64');
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: const StartPage(),
    );
  }
}

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 430,
              height: 932,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 412,
                      height: 732,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/img.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 25,
                    top: 254,
                    child: Opacity(
                      opacity: 0.40,
                      child: Container(
                        width: 380,
                        height: 60,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFD9D9D9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextFormField(
                              style: const TextStyle(
                                color:
                                    Colors.black, // Change this to Colors.black
                                fontSize: 20,
                                fontFamily: 'Cafe24 Simplehae OTF',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.41,
                              ),
                              decoration: const InputDecoration(
                                hintText: '이메일',
                                hintStyle: TextStyle(color: Colors.black),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 25,
                    top: 331,
                    child: Opacity(
                      opacity: 0.40,
                      child: Container(
                        width: 380,
                        height: 60,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFD9D9D9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextFormField(
                              style: const TextStyle(
                                color:
                                    Colors.black, // Change this to Colors.black
                                fontSize: 20,
                                fontFamily: 'Cafe24 Simplehae OTF',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.41,
                              ),
                              decoration: const InputDecoration(
                                hintText: '비밀번호',
                                hintStyle: TextStyle(color: Colors.black),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 165,
                    top: 440,
                    child: SizedBox(
                      width: 103,
                      height: 26,
                      child: ElevatedButton(
                        onPressed: () async {
                          await openKakaoMapScreen(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink
                              .withOpacity(0.2), // 버튼 배경색을 반투명한 핑크색으로 설정
                        ),
                        child: const Text(
                          '로그인',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white, // 텍스트 색상을 흰색으로 설정
                            fontSize: 20, // 버튼 텍스트 크기 수정
                            fontFamily: 'Cafe24 Simplehae OTF',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.41,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 91,
                    top: 495,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const joinmembership()));
                      },
                      child: const Text(
                        '회원가입',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Cafe24 Simplehae OTF',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.41,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 176,
                    top: 495,
                    child: TextButton(
                      onPressed: () {
                        // ID 찾기 버튼 동작 추가
                      },
                      child: const Text(
                        'ID찾기',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Cafe24 Simplehae OTF',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.41,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 239,
                    top: 495,
                    child: TextButton(
                      onPressed: () {
                        // 비밀번호 찾기 버튼 동작 추가
                      },
                      child: const Text(
                        '비밀번호찾기',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'Cafe24 Simplehae OTF',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.41,
                        ),
                      ),
                    ),
                  ),
                  // New Positioned widget for Kakao image
                  Positioned(
                    left: 165,
                    top: 540,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const KakaoLoginExample()),
                        );
                      },
                      child: Image.asset(
                        'assets/images/kakao.png',
                        width: 100, // Adjust the width as necessary
                        height: 100, // Adjust the height as necessary
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
