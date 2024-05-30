import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class profil1 extends StatelessWidget {
  const profil1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 430,
          height: 932,
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
                  width: 430,
                  height: 932,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/img_1.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 27,
                top: 570,
                child: Opacity(
                  opacity: 0.70,
                  child: Container(
                    width: 380,
                    height: 70,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFD6A6B9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 191,
                top: 594,
                child: Text(
                  '다음',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'Cafe24 Simplehae OTF',
                    fontWeight: FontWeight.w400,
                    height: 0.02,
                    letterSpacing: -0.41,
                  ),
                ),
              ),
              Positioned(
                left: 48,
                top: 64,
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
                        height: 0.06,
                        letterSpacing: -0.41,
                      ),
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 129,
                top: 138,
                child: Text(
                  'Create Profile',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'Cafe24 Simplehae',
                    fontWeight: FontWeight.w400,
                    height: 0.02,
                    letterSpacing: -0.41,
                  ),
                ),
              ),
              const Positioned(
                left: 58,
                top: 182,
                child: SizedBox(
                  width: 324,
                  height: 23,
                  child: Text(
                    'Lock Memory에게 당신을 알려 주세요.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Cafe24 Simplehae OTF',
                      fontWeight: FontWeight.w400,
                      height: 0.06,
                      letterSpacing: -0.41,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 45,
                top: 426,
                child: Text(
                  '닉네임',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontFamily: 'Cafe24 Simplehae OTF',
                    fontWeight: FontWeight.w400,
                    height: 0.13,
                    letterSpacing: -0.31,
                  ),
                ),
              ),
              Positioned(
                left: 27,
                top: 473,
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
              Positioned(
                left: 135,
                top: 245,
                child: Container(
                  width: 160,
                  height: 160,
                  decoration: const BoxDecoration(color: Color(0xFFDBD4CF)),
                ),
              ),
              Positioned(
                left: 193,
                top: 306,
                child: Container(
                  width: 48,
                  height: 36,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/48x36"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 52,
                top: 484,
                child: Text(
                  'Lock Memory에서 사용할 이름을 작성해주세요',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontFamily: 'Cafe24 Simplehae OTF',
                    fontWeight: FontWeight.w400,
                    height: 0.13,
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
