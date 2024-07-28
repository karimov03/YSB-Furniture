import 'package:flutter/material.dart';

Widget buildCategoryChip(String label, {bool isSelected = false}) {
  return Padding(
    padding: const EdgeInsets.only(right: 8.0,left: 8.0),
    child: ChoiceChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (selected) {},
      selectedColor: Colors.orange,
      backgroundColor: Colors.grey[300],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),

        side: BorderSide.none
      ),
      labelPadding: EdgeInsets.symmetric(vertical: 3.0,horizontal: 8),
      avatar: null,
    ),
  );
}