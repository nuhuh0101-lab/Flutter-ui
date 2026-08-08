import 'package:final_year_project/homepage/complaint_list.dart';
import 'package:final_year_project/homepage/overview_widget.dart';
import 'package:final_year_project/widgets/overview_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          style: TextStyle(color: Colors.blue),
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
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
                ),
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
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ComplaintsList(
                          icon: Icon(Icons.water_drop_outlined),
                          complaint: "Water Leakage",
                          id: "546697687698fkja",
                          status: "Resolved",
                        ),
                        Divider(),
                        ComplaintsList(
                          icon: Icon(Icons.lightbulb_circle), 
                          complaint: "Power Shortage", 
                          id: "9p82t9734", 
                          status: "In Progress"),
                          Divider(),
                          ComplaintsList(
                            icon: Icon(Icons.recycling), 
                            complaint: "Missed Trash Collection", 
                            id: "95974959", 
                            status: "Pending")
                      ],
                    ),
                  )
              ],
            ),
          ),
        )
      ),
    );
  }
}
