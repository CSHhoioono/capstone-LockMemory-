import 'dart:convert';
import 'package:capstone/map_with_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kakaomap_webview/kakaomap_webview.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'kakaomap_screen.dart';

Future<void> openKakaoMapScreen(BuildContext context) async {
  KakaoMapUtil util = KakaoMapUtil();

  // String url = await util.getResolvedLink(
  //     util.getKakaoMapURL(37.402056, 127.108212, name: 'Kakao 본사'));

  /// This is short form of the above comment
  String url =
      await util.getMapScreenURL(35.91218, 128.8076, name: '대구가톨릭대학교(해석이와삼따리)');

  debugPrint('url : $url');

  Navigator.push(
    context,
    MaterialPageRoute(builder: (_) => MapWithBottomSheet(url: url)),
  );
}
