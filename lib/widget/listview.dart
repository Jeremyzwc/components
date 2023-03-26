import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../model/data.dart';

class ListViewDemo extends StatelessWidget {

  Widget _itemBuilder(BuildContext context, int position){

    return Container( //相当于每个列表项的布局
      color: Colors.white,
      margin: const EdgeInsets.all(8.0), //设置整个Container的margin
      child: Column( //Container里面的垂直布局
        children: <Widget>[
          Image.network(items[position].imgUrl),
          const SizedBox(height: 16.0), //图片和文本的间隔空间
          Text(
            items[position].title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold小部件包含常用的material常用的小部件，如titlebar
      appBar: AppBar(
          title: const Text("Title"),
          elevation: 0.0, //标题栏阴影的大小
          systemOverlayStyle: const SystemUiOverlayStyle( //设置状态栏颜色
            statusBarColor: Colors.transparent,
          )
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: _itemBuilder,
      ),
    );
  }
}