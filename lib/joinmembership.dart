import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'joinmembership2.dart';

class joinmembership extends StatefulWidget {
  const joinmembership({super.key});

  @override
  _joinmembershipState createState() => _joinmembershipState();
}

class _joinmembershipState extends State<joinmembership> {
  TextEditingController emailController = TextEditingController();

  // 다음 페이지로 이동하는 함수
  void _navigateToNextPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              const joinmembership2()), // joinmembership2 페이지로 이동
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage("assets/images/img_1.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 25,
              top: 205,
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
                  child: TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 17),
                      hintText: '이메일을 입력 해주세요',
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Cafe24 Simplehae OTF',
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.41,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 25,
              top: 330,
              child: Opacity(
                opacity: 0.70,
                child: GestureDetector(
                  onTap: _navigateToNextPage,
                  child: Container(
                    width: 380,
                    height: 70,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFD6A6B9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        '다음',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'Cafe24 Simplehae OTF',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.41,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Positioned(
              left: 115,
              top: 100,
              child: Text(
                'Create Account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Cafe24 Simplehae OTF',
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.41,
                ),
              ),
            ),
            const Positioned(
              left: 50,
              top: 270,
              child: Text(
                '중복 확인',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontFamily: 'Cafe24 Simplehae OTF',
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.31,
                ),
              ),
            ),
            const Positioned(
              left: 58,
              top: 140,
              child: SizedBox(
                width: 324,
                height: 23,
                child: Text(
                  'Lock Memory와 함께 할 계정을 만들어요',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontFamily: 'Cafe24 Simplehae OTF',
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.41,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 35,
              top: 50,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context); // 뒤로 가기 기능 추가
                },
                child: const SizedBox(
                  width: 77,
                  height: 26,
                  child: Text(
                    'back',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Cafe24 Simplehae OTF',
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.41,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
