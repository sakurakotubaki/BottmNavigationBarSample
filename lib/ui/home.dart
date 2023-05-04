import 'package:flutter/material.dart';

/// [ホームページを作るクラス]
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Home', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
