import 'package:be_talent/app/model/person_model.dart';
import 'package:be_talent/design_system/colors/app_colors.dart';
import 'package:be_talent/design_system/spacing/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmployeeExpansionTileComponent extends StatefulWidget {
  final PersonModel person;
  const EmployeeExpansionTileComponent({super.key, required this.person});

  @override
  State<EmployeeExpansionTileComponent> createState() =>
      _EmployeeExpansionTileComponentState();
}

class _EmployeeExpansionTileComponentState
    extends State<EmployeeExpansionTileComponent> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(Space.er),
        child: Image.network(
          widget.person.image,
          width: 50,
          fit: BoxFit.contain,
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(
          left: Space.l,
        ),
        child: Text(
          widget.person.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      trailing: SvgPicture.asset(
        isExpanded
            ? 'assets/icons/arrow_up.svg'
            : 'assets/icons/arrow_down.svg',
        width: Space.r,
        height: Space.r,
        colorFilter: const ColorFilter.mode(
          AppColors.black,
          BlendMode.srcIn,
        ),
      ),
      onExpansionChanged: (expanded) {
        setState(() {
          isExpanded = expanded;
        });
      },
      children: [
        ListTile(
          title: Row(
            children: [
              const Text(
                'Cargo:',
                style: TextStyle(
                  fontSize: Space.sr,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              const Spacer(),
              Text(
                widget.person.job,
                style: const TextStyle(
                  fontSize: Space.sr,
                  color: AppColors.black,
                ),
              ),
            ],
          ),
          subtitle: Row(
            children: [
              const Text(
                'Telefone:',
                style: TextStyle(
                  fontSize: Space.sr,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              const Spacer(),
              Text(
                widget.person.phone,
                style: const TextStyle(
                  fontSize: Space.sr,
                  color: AppColors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
