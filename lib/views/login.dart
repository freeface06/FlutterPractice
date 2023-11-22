import 'package:flutter/material.dart';

void main() => runApp(const LoginPage());

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
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
          children: <Widget>[
            Stack(children: const <Widget>[
              Positioned(
                  child: Center(
                    child: null,
                  )),
            ])
          ],
        ),
      ),
    );
  }
}
