import 'package:flutter/material.dart';


class HYHomeDemo extends StatefulWidget {
  @override
  _HYHomeDemoState createState() => _HYHomeDemoState();
}

class _HYHomeDemoState extends State<HYHomeDemo> {
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
        appBar: AppBar(
          title: Text("商品列表"),
        ),
        body: Column(
          children: [
            HYHomeContent()
          ],
        ),
        floatingActionButton: ElevatedButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
              });
            }
        )
    );
  }
}


// StatefulWidget的生命周期
class HYHomeContent extends StatefulWidget {
  HYHomeContent() {
    print("1.调用HYHomeContent的constructor方法");
  }

  @override
  _HYHomeContentState createState() {
    print("2.调用HYHomeContent的createState方法");
    return _HYHomeContentState();
  }
}

class _HYHomeContentState extends State<HYHomeContent> {
  int _counter = 0;
  _HYHomeContentState() {
    print("3.调用_HYHomeContentState的constructor方法");
  }

  @override
  void initState() {
    // 调用: 这里是必须调用super
    final TextStyle style = TextStyle();

    super.initState();
    print("4.调用_HYHomeContentState的initState方法");
  }

  @override
  void didUpdateWidget(HYHomeContent oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("调用_HYHomeContentState的didChangeDependencies方法");
  }

  @override
  Widget build(BuildContext context) {
    print("5.调用_HYHomeContentState的build方法");
    return Column(
      children: <Widget>[
        ElevatedButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              _counter++;
            });
          },
        ),
        Text("数字:$_counter")
      ],
    );
  }

  @override
  void dispose() {
    print("6.调用_HYHomeContentState的dispose方法");
    super.dispose();
  }
}
