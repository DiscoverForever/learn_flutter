
import 'package:leancloud_storage/leancloud.dart';

class LoginService {
  static register(String username, String password) {
    var user = LCUser();
    user.username = username;
    user.password = password;
    return user.signUp();
  }

  static login(String username, String password) {
    return LCUser.login(username, password);
  }
}