import 'package:dio/dio.dart';

class MobilSettingsApi {
  static Future getMobilSettingsApi() async {
    var dio = Dio();
    try {
      final response = await dio.get(
          "http://mobile.okulsis.net:8280/Slim_Proxy_okulsis_v5/SlimProxyBoot.php?&url=getMobilSettings_mbldatabasemenus");
      if (response.statusCode == 200) {
        if (response.data != "[]") {
          dio.close();
        }

        return response;
      }
    } catch (e) {
      return null;
    }
  }
}
