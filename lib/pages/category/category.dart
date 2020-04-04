import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:learn_flutter/pages/category/master_category.dart';
import 'package:learn_flutter/pages/category/subcategory.dart';
import 'package:learn_flutter/service/category_service.dart';
import 'package:flutter/services.dart';
class Category extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CategoryState();
}

class CategoryState extends State<Category> {
  String barcode = "";
  @override
  void initState() {
    super.initState();
  }

  getSubcategoryList(String categoryId) async {
    var res = await CategoryService().getSubcategory(categoryId);
    print(res);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.crop_free,
            color: Color(0xFF787878),
          ),
          onPressed: () {
            Fluttertoast.showToast(msg: "test");
            scanQRCode();
          },
        ),
        title: Container(
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Color(0xFFf8f8f8)),
          child: TextField(
            decoration: InputDecoration(
              hintText: '遇见更好的自己',
              hintStyle: TextStyle(
                fontSize: 14,
              ),
              suffixIcon: Icon(Icons.camera_alt),
              prefixIcon: Icon(
                Icons.search,
                color: Color(0xFF444444),
              ),
              border: InputBorder.none,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.message,
              color: Color(0xFF595959),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Row(
        children: <Widget>[
          MasterCategory(
            onChildClick: (int id) {
              getSubcategoryList(id.toString());
            },
          ),
          Expanded(flex: 1, child: Subcategory()),
        ],
      ),
    );
  }

  /*
   * 扫描二维码
   */
  scanQRCode() async {
    try {
      String barcode = await BarcodeScanner.scan();
      Fluttertoast.showToast(msg: barcode);
      setState(() => this.barcode = barcode);
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          this.barcode = 'The user did not grant the camera permission!';
        });
      } else {
        setState(() => this.barcode = 'Unknown error: $e');
      }
    } on FormatException{
      setState(() => this.barcode = 'null (User returned using the "back"-button before scanning anything. Result)');
    } catch (e) {
      setState(() => this.barcode = 'Unknown error: $e');
    }
  }
}
