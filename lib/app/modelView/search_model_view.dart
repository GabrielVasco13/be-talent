import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:be_talent/app/model/person_model.dart';

class SearchModelView {
  List<PersonModel> persons = [];

  Future<void> getPersons() async {
    try {
      final resposta = await http.get(Uri.parse('http://localhost:8080/users'));

      if (resposta.statusCode == 200) {
        final List<dynamic> json = jsonDecode(resposta.body);
        persons = json.map((e) => PersonModel.fromJson(e)).toList();
      } else {
        print(resposta.statusCode);
      }
    } catch (e) {
      print("Erro ao buscar pessoas: $e");
    }
  }
}
