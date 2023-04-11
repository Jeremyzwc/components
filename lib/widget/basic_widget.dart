
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 基础小部件的定义

class BasicWidgetDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Basic_Widget"),
        elevation: 0.0,
      ),
      body: TextDemo(),
    );
  }
}

class TextDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Text(
        '你的Android知识和技能对于Flutter开发是非常有用的，因为Flutter依赖于Android操作系统的多种功能和配置。Flutter是一种全新的构建移动界面的方式，但是它有一套和Android（以及iOS）进行非UI任务通信的插件系统。如果你是一名Android专家，你就不必重新学习所有知识才能使用Flutter。',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16.0,
        color: Colors.lightBlue,
      ),
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}