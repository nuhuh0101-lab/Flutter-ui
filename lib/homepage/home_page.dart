import 'package:final_year_project/new%20complaint%20page/new_complaint_page.dart';
import 'package:final_year_project/homepage/ai_smart_analysis_card.dart';
import 'package:final_year_project/homepage/overview_widget.dart';
import 'package:final_year_project/homepage/recent_complaint_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context){
    
    return SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WelcomeCard(),
                SizedBox(height: 15,),
                Text(
                  "System Overview",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(height: 15,),

                  OverviewWidget(),

                  SizedBox(height: 15,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                      "Recent Complaints",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue.shade600
                        ),)
                    ],
                  ),

                  RecentComplaintWidget(),

                  SizedBox(height: 15,),
                  
                  Text(
                    "AI Smart Analysis",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade600
                    ),
                    ),
                    SizedBox(height: 10,),
                    AiSmartAnalysisCard(),
              ],
            ),
          ),
        )
      );
    
  }
}


class WelcomeCard extends StatelessWidget {
  const WelcomeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue.shade600,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome, Citizen",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
              ),
            SizedBox(height: 5,),
            Text(
              "Your voice matters. Review your submitted issues or report a new concern to help us build a better city together.",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white
              ),
              ),
              
            ],
        ),
      ),
    );
  }
}

