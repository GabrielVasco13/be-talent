import 'package:be_talent/app/components/search_bar_component.dart';
import 'package:be_talent/design_system/font/helvica.dart';
import 'package:be_talent/design_system/spacing/space.dart';
import 'package:flutter/material.dart';

class ContactsView extends StatefulWidget {
  const ContactsView({super.key});

  @override
  State<ContactsView> createState() => _ContactsViewState();
}

class _ContactsViewState extends State<ContactsView> {
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
            const SpaceWidget(height: Space.m),
            const Helvetica(text: 'Testando', fontSize: 20.0),
          ],
        ),
      ),
    );
  }
}
