import 'package:be_talent/app/components/search_bar_component.dart';
import 'package:be_talent/app/modelView/search_model_view.dart';
import 'package:flutter/material.dart';

class ContactsView extends StatefulWidget {
  const ContactsView({super.key});

  @override
  State<ContactsView> createState() => _ContactsViewState();
}

class _ContactsViewState extends State<ContactsView> {
  final SearchModelView controller = SearchModelView();

  @override
  void initState() {
    super.initState();
    loadPersons();
  }

  Future<void> loadPersons() async {
    await controller.getPersons();
    setState(() {
      print('State updated with ${controller.persons.length} persons.');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SearchBarComponent(
              onSearch: (value) {
                print(value);
              },
            ),
            Expanded(
              child: ListView.builder(
                itemCount: controller.persons.length,
                itemBuilder: (context, index) {
                  final person = controller.persons[index];
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
            )
          ],
        ),
      ),
    );
  }
}
