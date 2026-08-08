import 'package:final_year_project/complaint%20page/complaint_page.dart';
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
    
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        shadowColor: Colors.grey.shade100,
        title: Text(
          "CitySolve",
          style: TextStyle(color: Colors.blue.shade700),
          ),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.notifications)),
          
          CircleAvatar(
            radius: 18,
            backgroundColor: Colors.white,
            child: Icon(Icons.person),
            
          ),
          SizedBox(width: 15,)
        ],
          
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => ComplaintPage()));
        },
        elevation: 1,
        icon: Icon(Icons.add),
        label: Text(
          "New Complaint",
          style: TextStyle(
            fontSize: 15
          ),
        ),
        backgroundColor: Colors.blue.shade500,
        foregroundColor: Colors.white,
        ),
        
        bottomNavigationBar: NavigationBar(
           height: 65,
           backgroundColor: Colors.white,
           elevation: 3,
           indicatorColor: Colors.transparent,

        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.receipt_long_outlined),
            selectedIcon: Icon(Icons.receipt_long),
            label: "Complaints",
          ),
          NavigationDestination(
            icon: Icon(Icons.analytics_outlined),
            selectedIcon: Icon(Icons.analytics),
            label: "Analysis",
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),

      body: SafeArea(
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
      ),
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

