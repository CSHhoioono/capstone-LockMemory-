import 'package:capstone/profil1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class joinmembership2 extends StatelessWidget {
  const joinmembership2({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    void navigateToProfile1() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => profil1()),
      );
    }

    return Column(
      children: [
        Container(
          width: size.width,
          height: size.height,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 273,
                top: 445,
                child: Container(
                  width: 100,
                  height: 100,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: size.width,
                  height: size.height,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/img_1.png"),
                      fit: BoxFit.fill,
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
                    onTap: navigateToProfile1,
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
              Positioned(
                left: 35,
                top: 50,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
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
              Positioned(
                left: 25,
                top: 115,
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
                  ),
                ),
              ),
              const Positioned(
                left: 54,
                top: 135,
                child: Text(
                  '비밀번호를 입력 해주세요',
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
              Positioned(
                left: 25,
                top: 215,
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
                  ),
                ),
              ),
              const Positioned(
                left: 54,
                top: 235,
                child: Text(
                  '비밀번호를 확인 해주세요',
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
              const Positioned(
                left: 60,
                top: 180,
                child: Text(
                  '영문',
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
                left: 60,
                top: 280,
                child: Text(
                  '일치해요',
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
                left: 174,
                top: 180,
                child: Text(
                  '특수문자',
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
                left: 117,
                top: 180,
                child: Text(
                  '숫자',
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
                left: 258,
                top: 180,
                child: Text(
                  '8~20글자',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontFamily: 'Cafe24 Simplehae OTF',
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.31,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
