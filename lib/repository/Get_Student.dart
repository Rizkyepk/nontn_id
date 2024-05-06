// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class GetData {
//   static Future<List<dynamic>> fetchData() async {
//     final response = await http.get(
//       Uri.parse('https://myhmtk.jeyy.xyz/student'),
//       headers: {
//         'Authorization': 'Bearer myhmtk-app-key',
//       },
//     );

//     if (response.statusCode == 200) {
//       return json.decode(response.body);
//     } else {
//       throw Exception('Failed to load data');
//     }
//   }
// }

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

void main() {
  fetchData().then((response) {
    var data = jsonDecode(response.body);
    var profileID = data['auth']['user']['nim']; // Mendapatkan nilai NIM
    print('NIM: $profileID'); // Menampilkan nilai NIM
  });
}

Future<http.Response> fetchData() async {
  try {
    // value yg untuk di matchkan
    Map<String, String> params = {
      'email': 'rep@telko.com',
      'password': 'rep123'
    };
    var response = await http.post(
        Uri(
            scheme: 'https',
            host: 'myhmtk.jeyy.xyz',
            path: '/auth/login',
            queryParameters: params),
        headers: {HttpHeaders.authorizationHeader: 'Bearer myhmtk-app-key'});

    if (response.statusCode == 200) {
      print("sucsses to load");

      return response;
    } else {
      throw Exception('Fail to load : ${response.statusCode} ${response.body}');
    }
  } catch (e) {
    print("fail to load : $e");

    return http.Response('fail to load', 500);
  }
}
