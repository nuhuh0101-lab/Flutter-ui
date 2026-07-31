import 'package:final_year_project/login_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
@override
void initState() {
  super.initState();
  _navigate();
}

Future<void> _navigate() async {
  await Future.delayed(const Duration(seconds: 3));

  if (!mounted) return;

  Navigator.pushReplacement(
    context,
    PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return const LoginPage();
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
  opacity: Tween<double>(
    begin: 0,
    end: 1,
  ).animate(
    CurvedAnimation(
      parent: animation,
      curve: Curves.easeInOut,
    ),
  ),
  child: child,
);
      },
      transitionDuration: Duration(milliseconds: 1500)
    ),
  );
}
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                 Spacer(),
                 Card(
                  shape: CircleBorder(),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/No-bg-Logo.png",
                      scale: 6,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "CitySolve",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade700
                  ),),
                SizedBox(height: 10,),
                Text(
                  "Intelligent Infrastructure Reporting\nfor a Better Future",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade700
                    ),
                  ),
                  SizedBox(height: 50,),
                  CircularProgressIndicator(
                    color: Colors.blue.shade600,
                    backgroundColor: Colors.grey.shade200,
                    strokeWidth: 3,
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.shield_outlined, size: 18,),
                      Text(
                        "SmartCity Infrastructure",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
        
                  const SizedBox(height: 4),
        
                  Text(
                    "v2.1.0 • Secure Portal",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
              
            ],
          ),
        )
        ),
    );
  }
}