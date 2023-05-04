import 'package:flutter/material.dart';

/// [ビジネスページを作るクラス]
class BussinessPage extends StatelessWidget {
  const BussinessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Bussiness', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
