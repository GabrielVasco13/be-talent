import 'package:be_talent/design_system/colors/app_colors.dart';
import 'package:be_talent/design_system/spacing/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBarComponent extends StatelessWidget {
  final ValueChanged<String> onSearch;
  final TextEditingController controller;

  const SearchBarComponent({
    super.key,
    required this.onSearch,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Space.r),
      child: TextField(
        controller: controller,
        onChanged: onSearch,
        decoration: InputDecoration(
          hintText: 'Pesquisar',
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: Space.r, right: Space.r),
            child: SvgPicture.asset(
              'assets/icons/search.svg',
              width: Space.sr,
              height: Space.sr,
              colorFilter: const ColorFilter.mode(
                AppColors.black,
                BlendMode.srcIn,
              ),
            ),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(Space.sm),
            ),
          ),
          fillColor: AppColors.gray05,
          filled: true,
        ),
      ),
    );
  }
}
