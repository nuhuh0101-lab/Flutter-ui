
import 'package:final_year_project/widgets/custom_dropdown.dart';
import 'package:final_year_project/login_page.dart';
import 'package:final_year_project/widgets/custom_textfield.dart';
import 'package:final_year_project/widgets/typical_text.dart';
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
                    RegisterCardTitle(fontSize: fontSize),
                      

                        TypicalText(text: "Full Name"),

                          SizedBox(height: 5,),
            
                          CustomTextField(text: "John Doe", obscureText: false, numberKeyboard: false,),
                          
                          SizedBox(height: 10,),
                          TypicalText(text: "Email Address"),
            
                          SizedBox(height: 5,),
            
                          CustomTextField(text: "john@example.com", obscureText: false, numberKeyboard: false,),
            
                          SizedBox(height: 10,),
            
                          TypicalText(text: "Mobile Number"),
            
                          SizedBox(height: 5,),
            
                          CustomTextField(text: "+1 (555) 000-0000", obscureText: false, numberKeyboard: true),
            
                          SizedBox(height: 10,),
            
                          TypicalText(text: "Municipality"),
            
                          SizedBox(height: 10,),
            
                          CustomDropdown(dropdownItems: ["hello", "hi", "folk",]),
            
                          SizedBox(height: 10,),
            
                          TypicalText(text: "Address(Optional)"),
            
                          SizedBox(height: 5,),
            
                          CustomTextField(text: "123 Main St, Apt 4B", obscureText: false, numberKeyboard: false),
         
                          SizedBox(height: 10,),
         
                          RegisterCardPassword(),
         
                          SizedBox(height: 10,),
         
                          Row(
                            children: [
                              Checkbox(
                                value: _isChecked,
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

             CreateAccountButton(),
          
          SizedBox(height: 10,),
         
          DividerWidget(),
         
           SizedBox(height: 10,),
         
           GoogleSignUpButton(),
          
          SizedBox(height: 15,),
         
          LoginPageNavigator()
         
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

class LoginPageNavigator extends StatelessWidget {
  const LoginPageNavigator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

class GoogleSignUpButton extends StatelessWidget {
  const GoogleSignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
              );
  }
}

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
     );
  }
}

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
              );
  }
}

class RegisterCardPassword extends StatelessWidget {
  const RegisterCardPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

class RegisterCardTitle extends StatelessWidget {
  const RegisterCardTitle({
    super.key,
    required this.fontSize,
  });

  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Create an Account",
          style: TextStyle(
            fontSize: 16,
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
      ],
    );
  }
}
