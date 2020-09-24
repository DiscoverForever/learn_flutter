# 背景
从Flutter发布beta版本就一直在关注Flutter、很多大厂也都在使用Flutter比如字节跳动今日头条、西瓜视频、阿里爸爸的闲鱼、毒APP，包括我们公司(一个卖菜的公司)也在部分非主流程页面使用Flutter。都说Flutter极其流畅漂亮，本着再不学习就老了的心态，于是准备抽些闲暇时间来尝试下Flutter。最近小端午放假APP的几个页面也搭建的差不多了，本着人人为我、我为人人的精神决定写个blog给大家分享一下。

### 为什么仿JD APP？
因为像JD这种电商APP无论是业务逻辑还是页面复杂度都是比较复杂的，一来可以体验一下Flutter在复杂页面流畅度的表现，二来也可以看下到底Flutter是否能真正投入生产环境中。

# 首页
![Simulator Screen Shot - iPhone 11 Pro Max - 2020-06-26 at 17.33.25.png](https://upload-images.jianshu.io/upload_images/11287122-67cdc04060b3e11f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/300) 
功能 | 方案 
---------|----------
 搜索滚动吸顶 | SliverAppBar + FlexibleSpaceBar 
 Banner轮播 | flutter_swiper | 
 货架|PageView+GridView |  
 推荐列表| flutter_swiper |  

# 分类
![image.png](https://upload-images.jianshu.io/upload_images/11287122-01146d27776a5ff0.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/300)
功能 | 方案 
---------|----------
 banner | flutter_swipper
 扫一扫| barcode_scan

# 购物车
![image.png](https://upload-images.jianshu.io/upload_images/11287122-e13f608f7c6f8f93.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/300)
功能 | 方案
---------|----------
 商品选择|| 
 倒计时|Timer.periodic | 
 商品数量增减|自定义组件 | 
# 我的
![image.png](https://upload-images.jianshu.io/upload_images/11287122-be12aa8619616eb3.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/300)
功能 | 方案
---------|----------
 header滚动渐变|监听滚动位置设置Appbar opacity | 
 其它| 页面效果还原 

# 商详
### I love China, love huawei
![image.png](https://upload-images.jianshu.io/upload_images/11287122-e2e898be0fe1f0e2.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/300)
![image.png](https://upload-images.jianshu.io/upload_images/11287122-03d852633e8ce61e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/300)
功能 | 方案 | 备注
---------|----------|--------
 header滚动渐变| | 无
 商品轮播图 | flutter_swiper | 无
 地址选择 | city_pickers | 无
 规格选择 | showCupertinoModalPopup | 无
 商品详情图 | webview_flutter | TODO Android 超过5500高度会黑屏崩溃 需要等待网页加载结束获取网页高度后重新设置webview高度否则会内存溢出

# 设置
![image.png](https://upload-images.jianshu.io/upload_images/11287122-283f81c93803ae2c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/400)

# 注册登录


![image.png](https://upload-images.jianshu.io/upload_images/11287122-e6a6476ea1166ca0.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/400)
功能 | 方案 | 备注
---------|----------|--------
 登录注册| leancloud | 注册登录图省事，整了一个页面（点注册按钮即使用当前输入的用户名密码注册）
账密|账号 admin 密码 admin| 无



# GIT仓库地址
APP端：
### [https://github.com/DiscoverForever/learn_flutter](https://github.com/DiscoverForever/learn_flutter)
Server端：
### [https://github.com/DiscoverForever/flutter_mock_server](https://github.com/DiscoverForever/flutter_mock_server)
#### [👏欢迎PR 觉得不错的可以给个star✨](https://github.com/DiscoverForever/learn_flutter)

### ⚠️⚠️⚠️ *警告：真机运行 lib/api/api.dart中的baseUrl需要修改为你的本机IP* ⚠️⚠️⚠️

# 项目目录结构
![image.png](https://upload-images.jianshu.io/upload_images/11287122-f05d9c3aecaa1242.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/200)

 # 项目使用第三方库一览
```yaml
name: learn_flutter
description: A new Flutter project.
version: 1.0.0+1

environment:
  sdk: ">=2.2.2 <3.0.0"

dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^0.1.2
  # 轮播插件
  flutter_swiper: ^1.1.6
  # toast
  fluttertoast: ^4.0.1
  # 网络请求
  dio: ^3.0.8
  # webview
  # flutter_webview_plugin: ^0.3.5
  # webview
  webview_flutter: ^0.3.19
  json_annotation: ^3.0.0
  # 城市选择器
  city_pickers: ^0.1.30
  # 扫描插件
  barcode_scan: ^2.0.1
  # Leancloud
  leancloud_storage: ^0.2.3
  # 官方缓存插件
  shared_preferences: ^0.5.6
  # provide
  provide: ^1.0.2
dev_dependencies:
  flutter_test:
    sdk: flutter
  # json generator
  build_runner: ^1.0.0
  json_serializable: ^3.3.0

  uses-material-design: true


  assets:
    - lib/assets/json/movie.json
 
  fonts:
  - family: FlamanteRoma
    fonts:
    - asset: lib/assets/fonts/Flamante-Roma-Medium.ttf
    - asset: lib/assets/fonts/Flamante-Roma-MediumItalic.ttf

  - family: LatoBold
    fonts:
    - asset: lib/assets/fonts/Lato-Bold.ttf

  - family: PingFang
    fonts:
    - asset: lib/assets/fonts/PingFang.ttf

```
# 免责声明
⚠️本APP仅限于学习交流使用，项目中使用的图片及字体等资源如有侵权请联系作者删除

⚠️本APP接口数据均为mock，请勿用于其它商业目的

⚠️如使用本项目代码造成侵权与作者无关

我这求生欲🤔
