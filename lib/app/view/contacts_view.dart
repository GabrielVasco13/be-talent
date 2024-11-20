import 'package:be_talent/app/components/search_bar_component.dart';
import 'package:be_talent/app/modelView/employee_model_view.dart';
import 'package:be_talent/app/modelView/search_model_view.dart';
import 'package:be_talent/design_system/spacing/space.dart';
import 'package:flutter/material.dart';

class ContactsView extends StatefulWidget {
  const ContactsView({super.key});

  @override
  State<ContactsView> createState() => _ContactsViewState();
}

class _ContactsViewState extends State<ContactsView> {
  final EmployeeModelView controllerEmployees = EmployeeModelView();
  final SearchModelView searchController = SearchModelView();

  @override
  void initState() {
    super.initState();
    loadPersons();
  }

  Future<void> loadPersons() async {
    await controllerEmployees.getPersons();
    setState(() {
      searchController.setEmployees(controllerEmployees.persons);
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SearchBarComponent(
              controller: searchController.controller,
              onSearch: (value) {
                setState(() {
                  searchController.filterEmployees();
                });
              },
            ),
            const SizedBox(height: Space.m),
            Expanded(
              child: ListView.builder(
                itemCount: searchController.filteredEmployees.length,
                itemBuilder: (context, index) {
                  final person = searchController.filteredEmployees[index];
                  return ExpansionTile(
                    leading: Image.network(person.image, width: 50),
                    title: Text(person.name),
                    children: [
                      ListTile(
                        title: Text('Cargo: ${person.job}'),
                        subtitle: Text('Telefone: ${person.phone}'),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
