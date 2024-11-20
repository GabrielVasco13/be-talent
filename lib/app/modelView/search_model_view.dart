import 'package:be_talent/app/model/person_model.dart';
import 'package:flutter/material.dart';

class SearchModelView {
  final TextEditingController controller = TextEditingController();
  List<PersonModel> filteredEmployees = [];
  List<PersonModel> allEmployees = [];

  SearchModelView() {
    controller.addListener(filterEmployees);
  }

  void setEmployees(List<PersonModel> emplooyes) {
    allEmployees = emplooyes;
    filteredEmployees = emplooyes;
  }

  void filterEmployees() {
    final query = controller.text.toLowerCase();
    filteredEmployees = allEmployees.where((employee) {
      return employee.name.toLowerCase().contains(query) ||
          employee.job.toLowerCase().contains(query) ||
          employee.phone.contains(query);
    }).toList();
  }

  void dispose() {
    controller.dispose();
  }
}
