import 'package:flutter/material.dart';

class FilterButtons extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isSelected;
  
  const FilterButtons({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onPressed,
    });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: isSelected
            ? Colors.blue.shade500
            : Colors.white,
        foregroundColor: isSelected
            ? Colors.white
            : Colors.grey.shade800,
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        minimumSize: const Size(0, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
          side: BorderSide(
            color: Colors.blue.shade200,
          ),
        ),
      ),
      child: Text(text),
      );
  }
}