import 'package:flutter/material.dart';

class SearchBarComponent extends StatelessWidget {
  final ValueChanged<String> onSearch;

  const SearchBarComponent({super.key, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onChanged: onSearch,
        decoration: const InputDecoration(
          hintText: 'Search',
          icon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
}
