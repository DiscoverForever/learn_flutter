import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwipperImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      child: Swiper(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        autoplay: true,
        // layout: SwiperLayout.DEFAULT,
        loop: true,
        itemHeight: 180,
        itemWidth: double.infinity,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'http://m.360buyimg.com/mobilecms/s750x366_jfs/t1/73882/21/1179/95457/5cf63648E9b3220e4/3a9cfd61213976f1.jpg!cr_1125x549_0_72!q70.jpg.dpg',
                ),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.all(Radius.circular(5))
            ),
          );
        },
        onTap: (index) {
          print('点击了第$index');
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
        viewportFraction: 0.8,
        scale: 0.8,
      ),
    );
  }
}
