import 'package:bottom_navigation_example/ui/bottom_navigation.dart';
import 'package:flutter/material.dart';

// main関数はアプリを実行するコードです
// 複数の処理を中に書かなければアロー関数で書くことができます。
// アロー関数とは、処理を１行で書ける関数です
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: NavigationWidget(),
    );
  }
}
