
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget{
  final String text;
  final bool obscureText;
  final bool numberKeyboard;
  const CustomTextField({super.key, required this.text, required this.obscureText, required this.numberKeyboard});
  @override
  Widget build(BuildContext context){
    return TextFormField(
      obscureText: obscureText,
      keyboardType: numberKeyboard ? TextInputType.phone : TextInputType.text,
      decoration: InputDecoration(
             contentPadding: EdgeInsets.all(10),
          hintText: text,
          filled: true,
          fillColor: const Color.fromARGB(115, 243, 242, 242),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(
              width: 1,
              color: const Color.fromARGB(115, 158, 158, 158),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(
              width: 1,
              color: const Color.fromARGB(115, 158, 158, 158),
            ),
          ),
        ),
    );
  }
}