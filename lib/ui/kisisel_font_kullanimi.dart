import 'package:flutter/material.dart';

class KisiselFont extends StatelessWidget {
  const KisiselFont({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello World',
        style: TextStyle(
          fontFamily: 'ElYazisi',
          fontSize: 24,
        ),
      ),
    );
  }
}
