
import 'package:flutter/material.dart';

class HelloWord extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Hello Word',
        textDirection: TextDirection.ltr, //表示从左向右显示
        style: TextStyle(
          //设置字体样式
            fontSize: 48.0,
            fontWeight: FontWeight.bold, //粗体字
            color: Colors.yellow),
      ),
    );
  }
}