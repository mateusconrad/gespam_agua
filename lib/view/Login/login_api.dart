import 'package:http/http.dart' as http;

class Loginapi {
  static Future<bool> login(String login, String senha) async {
    var url = 'http://livrowebservice.com.br/rest/login';

    final params = {
      'name': login,
      'color': senha,
    };

    var response = await http.post(url, body: params);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    return true;
  }
}
