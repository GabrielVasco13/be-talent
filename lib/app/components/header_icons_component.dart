import 'package:be_talent/design_system/colors/app_colors.dart';
import 'package:be_talent/design_system/font/helvetica.dart';
import 'package:be_talent/design_system/spacing/space.dart';
import 'package:flutter/material.dart';

class HeaderIconsComponent extends StatelessWidget {
  const HeaderIconsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: Space.er,
            top: Space.er,
          ),
          child: CircleAvatar(
            backgroundColor: AppColors.gray10,
            radius: Space.sm,
            child: Helvetica.h2('CG'),
          ),
        )
      ],
    );
  }
}
