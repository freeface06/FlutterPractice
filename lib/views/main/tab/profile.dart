import 'package:flutter/material.dart';
import 'package:hojung/views/login.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    Widget view = Container();

    // 로그인 여부 확인
    bool isLogin = false;

    if (isLogin) {
      return const Scaffold(
        body: Center(child: Text("프로필")),
      );
    } else {
      return const LoginPage();
    }
  }
}
