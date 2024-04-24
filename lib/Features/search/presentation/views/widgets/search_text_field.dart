import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: buildOutLineBorder(),
        focusedBorder: buildOutLineBorder(),
        border: buildOutLineBorder(),
        hintText: 'Search',
        suffixIcon: const Icon(Icons.search),
      ),
    );
  }

  OutlineInputBorder buildOutLineBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ),
      borderSide: BorderSide(
        color: Colors.white,
      ),
    );
  }
}
