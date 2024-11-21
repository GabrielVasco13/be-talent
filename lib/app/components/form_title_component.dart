import 'package:be_talent/design_system/colors/app_colors.dart';
import 'package:flutter/material.dart';

class FormTitleComponent extends StatelessWidget {
  const FormTitleComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      decoration: const BoxDecoration(
        color: AppColors.gray05,
        border: Border(
          bottom: BorderSide(color: AppColors.gray10),
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0),
        ),
      ),
      child: const Row(
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
            flex: 4,
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
      ),
    );
  }
}
