import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:be_talent/app/model/person_model.dart';

class SearchModelView {
  List<PersonModel> persons = [];

  Future<void> getPersons() async {
    try {
      final response = await http.get(
        Uri.parse('http://10.0.2.2:3000/employees'),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> json = jsonDecode(response.body);
        persons = json.map((e) => PersonModel.fromJson(e)).toList();
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print("Erro ao buscar pessoas: $e");
    }
  }
}
