import 'package:be_talent/design_system/colors/app_colors.dart';
import 'package:flutter/material.dart';

class FormTitleComponent extends StatelessWidget {
  const FormTitleComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            'Foto',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.gray20,
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Text(
            'Nome',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.gray20,
            ),
          ),
        ),
      ],
    );
  }
}
