import 'package:flutter/material.dart';
import 'package:hojung/views/main/tab/cart.dart';
import 'package:hojung/views/main/tab/favorites.dart';
import 'package:hojung/views/main/tab/home.dart';
import 'package:hojung/views/main/tab/profile.dart';
import 'package:hojung/views/main/tab/search.dart';

void main() => runApp(const HomePage());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // 기본 인덱스값 설정
  int _selectedIndex = 0;

  // 리스트에 view 담기
  final List<Widget> _pages = [
    const HomeTab(),
    const SearchTab(),
    const CartTab(),
    const FavoritesTab(),
    const ProfileTab(),
  ];

  // 탭햇을때 실행되는 함수
  void _onItemTapped(int index) {
    setState(() {
      // 인덱스값 변경
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}