import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwipperOptions {
  // final double height;
  // final double width;
  final String imageUrl;
  final String jumpUrl;
  SwipperOptions({ @required this.imageUrl, @required this.jumpUrl });
}

class SwipperImage extends StatelessWidget {
  final double height;
  final double width;
  final String backgroundImageUrl;
  final List<SwipperOptions> swipperOptionsList;
  SwipperImage({ Key key, @required this.swipperOptionsList, this.height = 180, this.width = 100, this.backgroundImageUrl = 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564260778041&di=035a5d4a7d370268e316035730a25a58&imgtype=0&src=http%3A%2F%2Fcdn.lizhi.fm%2Fradio_cover%2F2014%2F06%2F18%2F12383567000424964.jpg'}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: Swiper(
        scrollDirection: Axis.horizontal,
        itemCount: this.swipperOptionsList.length,
        autoplay: true,
        // layout: SwiperLayout.DEFAULT,
        loop: true,
        itemHeight: this.height,
        itemWidth: this.width,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  this.swipperOptionsList[index].imageUrl
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(6))
            ),
          );
        },
        onTap: (index) {
          print('点击了第$index');
          Navigator.pushNamed(context, '/webview', arguments: {
            'url': this.swipperOptionsList[index].jumpUrl
          });
        }, // 点击事件 onTap
        pagination: SwiperPagination(
          // 分页指示器
          alignment: Alignment.bottomCenter, // 位置 Alignment.bottomCenter 底部中间
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 5), // 距离调整
          builder: DotSwiperPaginationBuilder(
            // 指示器构建
            space: 5, // 点之间的间隔
            size: 6, // 没选中时的大小
            activeSize: 8, // 选中时的大小
            color: Colors.black54, // 没选中时的颜色
            activeColor: Colors.white, // 选中时的颜色
          ),
        ),
        // control: SwiperControl(
        //   color: Colors.pink,
        // ),
        viewportFraction: 1,
        scale: 1,
      ),
    );
  }
}
