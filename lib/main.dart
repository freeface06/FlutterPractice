import 'package:flutter/material.dart';
import 'package:hojung/views/main/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 자동 로그인 되었는지 안되었는지 확인
    bool isLogin = false;
    
    // 리턴될 기본화면을 빈화면으로 설정
    late Widget view = Container();

    // 로그인이 되었는지 확인하는 코드 추가 해야함

    view = const HomePage();
    // 로그인이 되지 않은 경우 로그인 화면을 view에 저장

    // view를 리턴
    return MaterialApp(
      home: view,
    );
  }
}
