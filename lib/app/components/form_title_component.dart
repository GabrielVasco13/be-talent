import 'package:be_talent/design_system/colors/app_colors.dart';
import 'package:be_talent/design_system/spacing/space.dart';
import 'package:flutter/material.dart';

class FormTitleComponent extends StatelessWidget {
  const FormTitleComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Space.sr,
        vertical: Space.l + Space.sl,
      ),
      decoration: const BoxDecoration(
        color: AppColors.blue10,
        border: Border(
          bottom: BorderSide(
            color: AppColors.gray10,
          ),
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Space.l),
          topRight: Radius.circular(Space.l),
        ),
      ),
      child: const Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              'Foto',
              style: TextStyle(
                fontSize: Space.sr,
                fontWeight: FontWeight.bold,
                color: AppColors.black,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Text(
              'Nome',
              style: TextStyle(
                fontSize: Space.sr,
                fontWeight: FontWeight.bold,
                color: AppColors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
