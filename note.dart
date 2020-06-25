import 'package:http/http.dart' as http;
import 'users.dart';

class Services {
  static const String url = 'https://api.covid19api.com/summary';
  static Future<List<Wereld>> getusers() async{
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final List<Wereld> welcome = welcomeFromJson(response.body) as List<Wereld>;
        return welcome;
      } else {
        return List<Wereld>();
      }
    }catch(e){
      return List<Wereld>();
    }
  }
}