
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget{
  final String text;
  final bool obscureText;
  final bool numberKeyboard;
  final Icon? prefixIcon;

  const CustomTextField({
    super.key,
    required this.text, 
    required this.obscureText, 
    required this.numberKeyboard, 
    this.prefixIcon,
    });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool obscured;
  
  @override
  void initState(){
    super.initState();
    obscured = widget.obscureText;
  }

  @override
  Widget build(BuildContext context){
    return TextFormField(
      obscureText: obscured,
      keyboardType: widget.numberKeyboard ? TextInputType.phone : TextInputType.text,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.obscureText ? IconButton(
          onPressed: (){
            setState(() {
              obscured = !obscured;
            });
          }, 
          icon: Icon(obscured
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined
          )
          ) :
          null,
        
             contentPadding: EdgeInsets.all(10),
          hintText: widget.text,
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