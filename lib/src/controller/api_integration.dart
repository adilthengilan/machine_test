import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/widgets.dart';
import 'package:machine_test/src/model/model_class.dart';

class Api_Intergration extends ChangeNotifier {
  //////////////// Constructing here
  Api_Intergration() {
    fetchData();
    notifyListeners();
  }

  late Users users = Users(
      page: 0,
      perPage: 0,
      total: 0,
      totalPages: 0,
      data: [],
      support: Support(url: '', text: ''));

////////// here we have a function to fetch data from API

  Future<Users> fetchData() async {
    final response =
        await http.get(Uri.parse('https://reqres.in/api/users?page=2'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      notifyListeners();
      return users = Users.fromJson(responseData);
    } else {
      throw Exception('Failed to load products');
    }
  }
}
