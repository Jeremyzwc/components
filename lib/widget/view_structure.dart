import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

//
class ViewStructure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        //标签控制器，控制选择了那一个标签
        length: 3, //设置标签的数量
        child: Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: AppBar(
            // leading: IconButton(
            //   //通过leading小部件添加菜单按钮
            //   icon: const Icon(Icons.menu),
            //   tooltip: 'menu', //修饰说明
            //   onPressed: () => Fluttertoast.showToast(msg: "menu"),
            // ),
            title: const Text('Material风格界面结构'),
            actions: <Widget>[
              //右边通过actions设置一系列动作
              IconButton(
                icon: const Icon(Icons.search),
                tooltip: 'Search',
                onPressed: () => Fluttertoast.showToast(msg: "search"),
              )
            ],
            elevation: 0.0,
            // 去除appbar下的阴影
            bottom: const TabBar(
              //TabBar
              unselectedLabelColor: Colors.black38,
              //未被选择的标签的颜色
              indicatorColor: Colors.yellow,
              //标签选择指示器颜色
              indicatorSize: TabBarIndicatorSize.label,
              //设置指示器长度和tab长度一样
              indicatorWeight: 2.0,
              //指示器的高度
              tabs: <Widget>[
                //设置每个tab的icon或文本
                Tab(icon: Icon(Icons.car_crash)),
                Tab(icon: Icon(Icons.cabin)),
                Tab(icon: Icon(Icons.flag)),
              ],
            ),
          ),
          body: const TabBarView(
            //标签对应的视图
            children: <Widget>[
              //每个标签对应view的内容
              Icon(Icons.car_crash, size: 136.0, color: Colors.lightBlue),
              Icon(Icons.cabin, size: 136.0, color: Colors.yellow),
              Icon(Icons.flag, size: 136.0, color: Colors.red),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                // DrawerHeader(
                //   decoration: BoxDecoration(
                //     //设置header的背景色
                //     color: Colors.grey[200],
                //   ),
                //   child: Column(
                //     children: <Widget>[
                //       // const Icon(Icons.people,color: Colors.lightBlue,size: 48),
                //       ClipOval( //设置圆形切割
                //         child: Image.network(
                //           'https://p3-passport.byteimg.com/img/user-avatar/aede74f1a2d5008f871a8c1b95b2a3ce~180x180.awebp',
                //           width: 80,
                //           height: 80,
                //           fit: BoxFit.cover,
                //         ),
                //       ),
                //       const Text('柒叁'),
                //     ],
                //   ),
                // ),
                UserAccountsDrawerHeader(
                  accountName: const Text('柒叁'),
                  accountEmail: const Text('123455678@gmail.com'),
                  currentAccountPicture: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://p3-passport.byteimg.com/img/user-avatar/aede74f1a2d5008f871a8c1b95b2a3ce~180x180.awebp'),
                  ),
                  decoration: BoxDecoration(
                      //设置UserAccountsDrawerHeader的背景图片
                      color: Colors.yellow[200],
                      image: DecorationImage(
                          fit: BoxFit.cover, //填充满整个区域
                          colorFilter: ColorFilter.mode(
                              Colors.lightBlue.withOpacity(0.6),
                              BlendMode.srcOver), //颜色的滤镜
                          image: const NetworkImage(
                              'https://p9-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/04d31e46137f4981b7aaa6f6c83f1cc1~tplv-k3u1fbpfcp-watermark.image?'))),
                ),
                ListTile(
                  title: const Text('Rate us', textAlign: TextAlign.start),
                  leading:
                      const Icon(Icons.star, color: Colors.lightBlue, size: 32),
                  onTap: () => Navigator.pop(context), //点击item关闭抽屉
                  // trailing: , 在标题右边添加图片trailing
                ),
                ListTile(
                  title: const Text('Share', textAlign: TextAlign.start),
                  leading: const Icon(Icons.share,
                      color: Colors.lightBlue, size: 32),
                  onTap: () => Navigator.pop(context),
                  // trailing: ,
                ),
                ListTile(
                  title: const Text('Setting', textAlign: TextAlign.start),
                  leading: const Icon(Icons.settings,
                      color: Colors.lightBlue, size: 32),
                  onTap: () => Navigator.pop(context),
                  // trailing: ,
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBarDemo(),
        ));
  }
}

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomNavigationBarDemoState();
  }
}

class BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;

  //监听状态变化
  void _onTapHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,  //设置当前的选中的tab
      type: BottomNavigationBarType.fixed,//设置是刚好屏幕内填充
      fixedColor: Colors.red,  //设置选中的颜色
      onTap: _onTapHandler,
      // 切换状态的属性
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "首页",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shop),
          label: "商城",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "个人中心",
        ),
      ],
    );
  }
}
