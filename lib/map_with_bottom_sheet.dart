import 'dart:io';
import 'package:capstone/CameraGalleryPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MapWithBottomSheet extends StatelessWidget {
  final String url;

  MapWithBottomSheet({super.key, required this.url});

  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  final MethodChannel _channel = const MethodChannel('openIntentChannel');

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: _scaffoldMessengerKey,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('LOCK MEMORY'),
        ),
        body: Stack(
          children: [
            WebView(
              initialUrl: url,
              javascriptMode: JavascriptMode.unrestricted,
              javascriptChannels: <JavascriptChannel>{
                _toasterJavascriptChannel()
              },
              navigationDelegate: (delegate) async {
                debugPrint('[Webview] delegate : ${delegate.url}');

                if (Platform.isAndroid &&
                    delegate.url.startsWith('intent://')) {
                  await _channel.invokeMethod('intent', {'url': delegate.url});

                  return NavigationDecision.prevent;
                } else if (Platform.isIOS &&
                    delegate.url.contains('itms-apps')) {
                  await _iosNavigate(delegate.url);

                  return NavigationDecision.prevent;
                }

                return NavigationDecision.navigate;
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  _showBottomSheet(context);
                },
                child: const Text('정보 보기'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 800,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '대구가톨릭대학교(해석이와삼따리)',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20), // 텍스트와 버튼 사이의 간격 추가
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CameraGalleryPage(
                        source: ImageSource.camera,
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.camera_alt),
                label: const Text('카메라'),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CameraGalleryPage(
                        source: ImageSource.gallery,
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.photo_library),
                label: const Text('갤러리'),
              ),
            ],
          ),
        );
      },
    );
  }

  JavascriptChannel _toasterJavascriptChannel() {
    return JavascriptChannel(
        name: 'Toaster',
        onMessageReceived: (JavascriptMessage message) {
          _scaffoldMessengerKey.currentState
              ?.showSnackBar(SnackBar(content: Text(message.message)));
        });
  }

  Future<void> _iosNavigate(String url) async {
    if (url.contains('id304608425')) {
      if (!(await launchUrl(Uri.parse('kakaomap://open')))) {
        await launchUrl(Uri.parse('https://apps.apple.com/us/app/id304608425'));
      }
    } else {
      await launchUrl(Uri.parse(url));
    }
  }
}
