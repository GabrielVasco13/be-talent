import 'dart:convert';

import 'package:be_talent/app/model/person_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SearchModelView extends ChangeNotifier {
  final TextEditingController controller = TextEditingController();
  List<PersonModel> filteredEmployees = [];
  List<PersonModel> allEmployees = [];

  SearchModelView() {
    controller.addListener(filterEmployees);
    loadPersons();
  }

  Future<void> loadPersons() async {
    final response =
        await http.get(Uri.parse('http://10.0.2.2:3000/employees'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      allEmployees = data.map((json) => PersonModel.fromJson(json)).toList();
      filteredEmployees = allEmployees;
      notifyListeners();
    } else {
      throw Exception('Failed to load persons');
    }
  }

  void setEmployees(List<PersonModel> emplooyes) {
    allEmployees = emplooyes;
    filteredEmployees = emplooyes;
    notifyListeners();
  }

  void filterEmployees() {
    final query = controller.text.toLowerCase();
    filteredEmployees = allEmployees.where((employee) {
      return employee.name.toLowerCase().contains(query) ||
          employee.job.toLowerCase().contains(query) ||
          employee.phone.contains(query);
    }).toList();
    notifyListeners();
  }

  @override
  void dispose() {
    controller.removeListener(filterEmployees);
    controller.dispose();
    notifyListeners();
  }
}
