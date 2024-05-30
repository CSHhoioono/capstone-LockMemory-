import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

class KakaoLoginExample extends StatefulWidget {
  const KakaoLoginExample({Key? key}) : super(key: key);

  @override
  _KakaoLoginExampleState createState() => _KakaoLoginExampleState();
}

class _KakaoLoginExampleState extends State<KakaoLoginExample> {
  @override
  void initState() {
    super.initState();
    _initKakaoLogin();
  }

  Future<void> _initKakaoLogin() async {
    try {
      final token = await UserApi.instance.loginWithKakaoTalk();
      _showMessage('Kakao Talk Login Success, Token: ${token.accessToken}');
    } catch (error) {
      _showMessage('Kakao Talk Login Failed, Error: $error');
      try {
        final token = await UserApi.instance.loginWithKakaoAccount();
        _showMessage(
            'Kakao Account Login Success, Token: ${token.accessToken}');
      } catch (error) {
        _showMessage('Kakao Account Login Failed, Error: $error');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kakao Login Page'),
      ),
      body: const Center(
        child:
            CircularProgressIndicator(), // Display a loading indicator while logging in
      ),
    );
  }

  void _showMessage(String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
