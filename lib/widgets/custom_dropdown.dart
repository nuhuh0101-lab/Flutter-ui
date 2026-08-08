import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  final List<String> dropdownItems;

  const CustomDropdown({
    super.key,
    required this.dropdownItems,
  });

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      initialValue: selectedValue,
      isExpanded: true,
      menuMaxHeight: 200,
      decoration: InputDecoration(
        hintText: "Select",
        filled: true,
        fillColor: const Color.fromARGB(115, 243, 242, 242),
        

        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(
            color: Color.fromARGB(115, 158, 158, 158),
          ),
        ),

        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(
            color: Color.fromARGB(115, 158, 158, 158),
          ),
        ),

        contentPadding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 18,
        ),
      ),

      items: widget.dropdownItems.map((String item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Text(item),
        );
      }).toList(),

      onChanged: (value) {
        setState(() {
          selectedValue = value;
        });
      },
    );
  }
}