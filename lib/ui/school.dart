import 'package:flutter/material.dart';

/// [スクールのページを作っているクラス]
class SchoolPage extends StatelessWidget {
  const SchoolPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('SchoolPage', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
