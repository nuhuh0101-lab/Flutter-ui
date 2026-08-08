
import 'package:final_year_project/widgets/custom_dropdown.dart';
import 'package:final_year_project/login_page.dart';
import 'package:final_year_project/widgets/custom_textfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  
  final double fontSize = 15;
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 1,
        shadowColor: Colors.grey.shade100,
        title: Row(
    children: [
      Image.asset(
        "assets/No-bg-Logo.png",
        width: 32,
        height: 32,
      ),
      const SizedBox(width: 10),
      const Text("CitySolve", style: TextStyle(color: Colors.blue),),
    ],
  ),
      ),
       body: SafeArea(
         child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Card(
              color: Colors.white,
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create an Account",
                      style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: FontWeight.w400
                        ),),
                      SizedBox(height: 10,),
                      Text(
                        "Join the smart city initiative today.",
                        style: TextStyle(
                          fontSize: fontSize,
                          fontWeight: FontWeight.w300
                        ),),
                        SizedBox(height: 15,),
                        Text(
                          "Full Name",
                          style: TextStyle(
                            fontSize: fontSize,
                            fontWeight: FontWeight.bold
                          ),),
                          SizedBox(height: 5,),
            
                          CustomTextField(text: "John Doe", obscureText: false, numberKeyboard: false,),
                          
                          SizedBox(height: 10,),
                          Text("Email Address",
                          style: TextStyle(
                            fontSize: fontSize,
                            fontWeight: FontWeight.bold
                          ),),
            
                          SizedBox(height: 5,),
            
                          CustomTextField(text: "john@example.com", obscureText: false, numberKeyboard: false,),
            
                          SizedBox(height: 10,),
            
                          Text("Mobile Number",
                          style: TextStyle(
                            fontSize: fontSize,
                            fontWeight: FontWeight.bold
                          ),),
            
                          SizedBox(height: 5,),
            
                          CustomTextField(text: "+1 (555) 000-0000", obscureText: false, numberKeyboard: true),
            
                          SizedBox(height: 10,),
            
                          Text("Municipality",
                          style: TextStyle(
                            fontSize: fontSize,
                            fontWeight: FontWeight.bold
                          ),),
            
                          SizedBox(height: 10,),
            
                          CustomDropdown(dropdownItems: ["hello", "hi", "folk",]),
            
                          SizedBox(height: 10,),
            
                          Text("Address(Optional)",
                          style: TextStyle(
                            fontSize: fontSize,
                            fontWeight: FontWeight.bold
                          ),),
            
                          SizedBox(height: 5,),
            
                          CustomTextField(text: "123 Main St, Apt 4B", obscureText: false, numberKeyboard: false),
         
                          SizedBox(height: 10,),
         
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Password",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold
                                      ),),
                                    SizedBox(height: 5,),
                                    CustomTextField(text: "•••••", obscureText: true, numberKeyboard: false)
                                  ],
                                ),
                              ),
         
                              SizedBox(width: 20,),
         
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Comfirm Password",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold
                                        ),),
                                    SizedBox(height: 5,),
                                    CustomTextField(text: "•••••", obscureText: true, numberKeyboard: false)
                                  ],
                                ),
                              )
                            ],
                          ),
         
                          SizedBox(height: 10,),
         
                          Row(
                            children: [
                              Checkbox(
                                // 2. Assign the current state
                                value: _isChecked, 
                                // 3. Handle state updates
                                onChanged: (bool? newValue) { 
                                  setState(() {
                                    _isChecked = newValue ?? false;
                                  });
                                },
                              ),
                              Flexible(
                                child: RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                    children: [
                                      const TextSpan(
                                text: "I agree to the ",
                                      ),
                                      TextSpan(
                                text: "Terms of Service",
                                style: const TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                  
                                    
                                  },
                                      ),
                                      const TextSpan(
                                text: " and ",
                                      ),
                                      TextSpan(
                                text: "Privacy Policy",
                                style: const TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                  
                                  },
                                      ),
                                      const TextSpan(
                                text: ".",
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                              ),
             SizedBox(height: 10,),
             ElevatedButton(
         onPressed: (){
         
             }, 
             style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
             ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Create Account"),
              Icon(Icons.arrow_forward)
              ],
            )
          ),
          
          SizedBox(height: 10,),
         
          Row(
           children: [
             const Expanded(
          child: Divider(
            thickness: 1,
            color: Colors.grey,
          ),
             ),
             Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "OR",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
             ),
             const Expanded(
          child: Divider(
            thickness: 1,
            color: Colors.grey,
            ),
          ),
             ],
           ),
         
           SizedBox(height: 10,),
         
           ElevatedButton(
         onPressed: (){
         
             }, 
             style: ElevatedButton.styleFrom(
          elevation: 0,
          side: BorderSide(color: Color.fromARGB(115, 158, 158, 158)),
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
             ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Sign up with Google"),
              
              ],
            )
          ),
          
          SizedBox(height: 15,),
         
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    children: [
                      const TextSpan(
                        text: "Already have an account? ",
                      ),
                      TextSpan(
                        text: "Sign In",
                        style: const TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                              Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const LoginPage(),
                                    ),
                                  );
                          },
                      ),
                    ],
                  ),
                ),
            ],
          )
         
                  ],
                ),
              ),
            ),
          ),
         ),
       ),
     );
  }
}
