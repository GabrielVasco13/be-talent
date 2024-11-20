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
      leading: Image.network(widget.person.image, width: 50),
      title: Text(widget.person.name),
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
          title: Text('Cargo: ${widget.person.job}'),
          subtitle: Text('Telefone: ${widget.person.phone}'),
        ),
      ],
    );
  }
}
