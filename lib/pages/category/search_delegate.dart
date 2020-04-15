import 'package:flutter/material.dart';
import 'package:learn_flutter/widgets/tag.dart';

class SearchBarDelegate extends SearchDelegate<String> {
  var searchList = [
    "1",
    "1",
    "1",
    "1",
    "1",
    "1",
    "1",
  ];

  var recentList = [
    "2",
    "3",
    "4",
    "5",
    "1",
  ];

  // 搜索条右侧的按钮执行方法，我们在这里方法里放入一个clear图标。 当点击图片时，清空搜索的内容。
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          // 清空搜索内容
          query = "";
        },
      ),
      GestureDetector(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 5, right: 10),
          child: Text('取消', style: TextStyle(color: Colors.grey)),
        ),
        onTap: () {
          close(context, "");
        },
      ),
    ];
  }

  // 搜索栏左侧的图标和功能，点击时关闭整个搜索页面
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
      onPressed: () {
        close(context, "");
      },
    );
  }

  // 搜索到内容了
  @override
  Widget buildResults(BuildContext context) {
    return Container(
      child: Center(
        child: Text("搜索的结果：$query"),
      ),
    );
  }

  // 输入时的推荐及搜索结果
  @override
  Widget buildSuggestions(BuildContext context) {
    
    return Container(
      margin: EdgeInsets.all(10),
      child: GridView.count(
      crossAxisCount: 5,
      childAspectRatio: 3,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      children: <Widget>[
        Tag(text: Text('iphone'), borderColor: Colors.transparent, color: Colors.grey,),
        Tag(text: Text('iphone'), borderColor: Colors.transparent, color: Colors.grey,),
        Tag(text: Text('iphone'), borderColor: Colors.transparent, color: Colors.grey,),
        Tag(text: Text('iphone'), borderColor: Colors.transparent, color: Colors.grey,),
        Tag(text: Text('iphone'), borderColor: Colors.transparent, color: Colors.grey,),
        Tag(text: Text('iphone'), borderColor: Colors.transparent, color: Colors.grey,),
        Tag(text: Text('iphone'), borderColor: Colors.transparent, color: Colors.grey,),
        Tag(text: Text('iphone'), borderColor: Colors.transparent, color: Colors.grey,),
      ],
    ),
    );
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    return super.appBarTheme(context);
  }
}
