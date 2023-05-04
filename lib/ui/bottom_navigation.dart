import 'package:bottom_navigation_example/ui/business.dart';
import 'package:bottom_navigation_example/ui/home.dart';
import 'package:bottom_navigation_example/ui/school.dart';
import 'package:flutter/material.dart';

/// [ボトムナビゲーションバーを作るページ]
class NavigationWidget extends StatefulWidget {
  const NavigationWidget({super.key});

  @override
  State<NavigationWidget> createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {
  // 表示するページの順番を書いた変数
  // 最初は、０番目のHomePageクラスが表示される
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 40, fontWeight: FontWeight.bold);
  // ボトムナビゲーションバーで切り替えて表示するWidgetクラスをListに格納する
  // Widget型なので、画面を作るHomePageクラスを入れることができる。
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(), // ホームページクラス
    BussinessPage(), // ビジネスクラス
    SchoolPage(), // スクールクラス
  ];
  // ボタンをタップすると、画面を切り替えるメソッド
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      /// [BottomNavigationBarウイジェット]
      /// 画面下のタブメニューを作るパーツです
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          // 家のアイコンボタン
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          // ビジネスのアイコンボタン
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          // 学校のアイコンボタン
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        // 現在いるページを表す変数
        currentIndex: _selectedIndex,
        // メニューのアイコンとタイトルの色を変更する
        selectedItemColor: Colors.green,
        // ボタンをタップすると切り替えるメソッドを実行する
        onTap: _onItemTapped,
      ),
    );
  }
}
