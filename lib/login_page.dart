import 'package:final_year_project/register_page.dart';
import 'package:final_year_project/widgets/custom_textfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            child: Card(
              color: Colors.white,
              elevation: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              "assets/No-bg-Logo.png",
                              height: 80,
                              width: 80,
                              ),
                            SizedBox(height: 10),
                            Text(
                              "CitySolve",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                            SizedBox(height: 5),
                            Text(
                              "Access your Citizen Portal",
                              style: TextStyle(
                                fontSize: 15,
                                color: const Color.fromARGB(255, 111, 111, 111)
                              ),
                              )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Text(
                      "Email Address",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      SizedBox(height: 5),
                      CustomTextField(text: "name@example.com", obscureText: false, numberKeyboard: false, prefixIcon: Icon(Icons.mail_outline),),
                      SizedBox(height: 10),
                      Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      SizedBox(height: 5),
                      CustomTextField(text: "•••••", obscureText: true, numberKeyboard: false, prefixIcon: Icon(Icons.lock_outline),),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Spacer(),
                          Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Colors.blue.shade800,
                              fontWeight: FontWeight.bold
                            ),)
                        ],
                      ),
                      SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: (){

                        }, 
                        style: ElevatedButton.styleFrom(
                        elevation: 0,
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue.shade600,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Login"),
                            SizedBox(width: 5,),
                            Icon(Icons.arrow_forward)
                            ],
                          )
                        ),
                        SizedBox(height: 20),
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
                            SizedBox(height: 20,),
                      ElevatedButton(
                        onPressed: (){
                            Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const RegisterPage(),
                                  ),
                                );
                        }, 
                        style: ElevatedButton.styleFrom(
                        elevation: 0,
                        foregroundColor: Colors.blue.shade600,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                          color: Colors.blue.shade600,
                          width: 1.8)
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Register Account"),
                            ],
                          )
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Flexible(
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                  children: [
                                    const TextSpan(
                                      text: "By logging in, you agree to the ",
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
                        )
                  ],
                ),
                ),
            ),
          ),
        )),
    );
  }
}