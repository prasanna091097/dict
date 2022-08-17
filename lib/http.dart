import 'package:http/http.dart' as http;

import 'word_model.dart';

class HttpService {
  static Future<Worss> fetchProducts() async {
    var response =
        await http.get(Uri.parse("https://owlbot.info/api/v4/dictionary/{}"));
    if (response.statusCode == 200) {
      var data = response.body;
      return worssFromJson(data);
    } else {
      throw Exception();
    }
  }
}
// class HttpService {
//   static Future<List<Welcome>> fetchProducts() async {
//     var response = await http
//         .get(Uri.parse("https://owlbot.info/api/v4/dictionary/"));
//     String token = "929a644296838db7310c0ae391c0a291ff107ad5";
//    final _api = await http.get(Url, headers: {
//       'Content-Type': 'application/json',
//       'Accept': 'application/json',
//       'Authorization': 'Bearer $token',
//     });
//     print('Token : ${token}');
//     print(response);

//     if (response.statusCode == 200) {
//       List themesList = jsonDecode(response.body);
//       List<Theme> themes = [];
//       for (var themeMap in themesList) {
//         themes.add(Welcome.fromJson.());
//       }
//       return Welcome(pronoutiation: pronoutiation, title: title, defiination: defiination);
//     } else {
//       throw Exception('Failed to load themes');
//     }
//   }
// }
