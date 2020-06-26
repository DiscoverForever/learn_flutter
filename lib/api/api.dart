class Api {
  static final String baseUrl = 'http://localhost:3000/';
  // static final String baseUrl = 'http://yapi.demo.qunar.com/mock/89510/';
  static final String action = 'client.action';
  static final String appCenterInfo = 'client.action?functionId=newAppCenterInfo';
  static final String home = 'client.action?functionId=welcomeHome';
  static final String subcategory = 'client.action?functionId=commonCatalogs';
  static final String category = 'client.action?functionId=category';
  static final String subcateoryList = '/client.action?functionId=newSubCatalog';
  static final String swipperImageList = 'client.action?functionId=getCmsPromotionsListByCatelogyID';
  static final String recommendItemList = 'client.action?functionId=uniformRecommend';
  static const String ItemInfo = 'client.action?functionId=wareBusiness';
  static const String UserInfo = 'client.action?functionId=personinfoBusiness';
  static const String Category = '/client.action?functionId=entranceCatalog';
  static const String Shopcart = '/client.action?functionId=cart';
  static const String Settings = '/client.action?functionId=myjdSetBusiness';
}