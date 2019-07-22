import 'package:flutter/widgets.dart';

class Category extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CategoryState();
}
class CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('category'),
    );
  }
}