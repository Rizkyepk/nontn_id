// import 'dart:convert';

// import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

void main() {
  fetchData().then((response) {
    // print(response.body);
    var data = jsonDecode(response.body);
    // print(data['admins']);
    for (var admin in data['admins']) {
      print(admin['id']);
      print(admin['name']);
      print(admin['email']);
    }
  }).catchError((error) {
    print(error);
  });
}

Future<http.Response> fetchData() async {
  try {
    var response = await http.get(Uri.parse('https://myhmtk.jeyy.xyz/admin'),
        headers: {HttpHeaders.authorizationHeader: 'Bearer myhmtk-app-key'});

    if (response.statusCode == 200) {
      print("sucsses to load");

      return response;
    } else {
      throw Exception('Fail to load : ${response.statusCode}');
    }
  } catch (e) {
    print("fail to load : $e");

    return http.Response('fail to load', 500);
  }
}

// Future<http.Response> addData() async {
//   try {
//     Map<String, dynamic> params = {
//       'nim': '1102132142',
//       'name': 'jeysi',
//       'tel': '08123456',
//       'email': 'cucur@gmail.com',
//       'password': '987654321',
//     };
//     var response = await http.post(
//       Uri(
//           scheme: 'https',
//           host: 'myhmtk.jeyy.xyz',
//           path: '/student',
//           queryParameters: params),
//       headers: {HttpHeaders.authorizationHeader: 'Bearer myhmtk-app-key'},
//     );
//     return response;
//   } catch (e) {
//     print("fail to load : $e");

//     return http.Response('fail to load', 500);
//   }
// }
