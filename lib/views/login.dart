// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:hojung/views/widget/loader.dart';

void main() => runApp(const LoginPage());

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoading = true;

  // initState는 해당 화면 호출시 제일먼저 실행하는 함수..
  @override
  void initState() {
    super.initState();

    // 2초 후에 LoadingComplete 함수를 호출합니다.
    Future.delayed(const Duration(seconds: 2), () {
      LoadingComplete();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Loader();
    } else {
      return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/login/background.png'), // 배경 이미지
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent, // 배경색을 투명으로 설정
          body: Column(
            children: const <Widget>[
              // 여기에 위젯들 추가
            ],
          ),
        ),
      );
    }
  }

  void LoadingComplete() {
    setState(() {
      isLoading = false;
    });
  }

  void Loading() {
    setState(() {
      isLoading = true;
    });
  }
}
