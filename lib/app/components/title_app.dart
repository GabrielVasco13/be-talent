import 'package:be_talent/design_system/font/helvetica.dart';
import 'package:be_talent/design_system/spacing/space.dart';
import 'package:flutter/material.dart';

class TitleApp extends StatelessWidget {
  const TitleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: Space.sr,
        top: Space.sr,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Helvetica.h1('Funcionarios'),
        ],
      ),
    );
  }
}
