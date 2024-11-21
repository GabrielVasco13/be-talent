import 'package:be_talent/app/view/contacts_view.dart';
import 'package:be_talent/design_system/colors/app_colors.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.white,
      ),
      home: const ContactsView(),
    );
  }
}
