import 'package:be_talent/app/components/employee_expansion_tile_component.dart';
import 'package:be_talent/app/components/header_icons_component.dart';
import 'package:be_talent/app/components/search_bar_component.dart';
import 'package:be_talent/app/components/title_app.dart';
import 'package:be_talent/app/modelView/search_model_view.dart';
import 'package:be_talent/design_system/spacing/space.dart';
import 'package:flutter/material.dart';

class ContactsView extends StatefulWidget {
  const ContactsView({super.key});

  @override
  State<ContactsView> createState() => _ContactsViewState();
}

class _ContactsViewState extends State<ContactsView> {
  final SearchModelView searchModelView = SearchModelView();

  @override
  void initState() {
    super.initState();
    searchModelView.addListener(() {
      setState(() {});
    });
    searchModelView.loadPersons();
  }

  @override
  void dispose() {
    searchModelView.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const HeaderIconsComponent(),
            const TitleApp(),
            SearchBarComponent(
              controller: searchModelView.controller,
              onSearch: (value) {
                setState(() => searchModelView.filterEmployees());
              },
            ),
            const SizedBox(height: Space.m),
            Expanded(
              child: ListView.builder(
                itemCount: searchModelView.filteredEmployees.length,
                itemBuilder: (context, index) {
                  final person = searchModelView.filteredEmployees[index];
                  return EmployeeExpansionTileComponent(person: person);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
