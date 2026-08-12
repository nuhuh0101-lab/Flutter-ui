import 'package:final_year_project/complaints%20page/complaint_overview.dart';
import 'package:final_year_project/complaints%20page/filter_buttons.dart';
import 'package:final_year_project/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class ComplaintsPage extends StatefulWidget {
  const ComplaintsPage({super.key});

  @override
  State<ComplaintsPage> createState() => _ComplaintsPageState();
}

class _ComplaintsPageState extends State<ComplaintsPage> {
  String selectedFilter = "All";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My Complaints",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
                Text("Track and manage your submitted complaints"),
                SizedBox(height: 10),
                CustomTextField(text: "Search by Id", obscureText: false, numberKeyboard: false, prefixIcon: Icon(Icons.search),),
                SizedBox(height: 10,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      FilterButtons(
                        text: "All", 
                        isSelected: selectedFilter == "All", 
                        onPressed: (){
                          setState(() {
                            selectedFilter = "All";
                          });
                        }),
                      SizedBox(width: 15,),
                      FilterButtons(
                        text: "Pending", 
                        isSelected: selectedFilter == "Pending", 
                        onPressed: (){
                          setState(() {
                            selectedFilter = "Pending";
                          });
                        }),
                      SizedBox(width: 15,),
                      FilterButtons(
                        text: "In Progress", 
                        isSelected: selectedFilter == "In Progress", 
                        onPressed: (){
                          setState(() {
                            selectedFilter = "In Progress";
                          });
                        }),
                      SizedBox(width: 15,),
                      FilterButtons(
                        text: "Resolved", 
                        isSelected: selectedFilter == "Resolved", 
                        onPressed: (){
                          setState(() {
                            selectedFilter = "Resolved";
                          });
                        }),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                ComplaintOverview(
                  caseId: "#CS-7320", 
                  status: "Resolved", 
                  complaintName: "Broken Steet Light", 
                  description: "kkgdiaweflibvsfjbvaielbfij ema gvj werg  r thwrth  bw er wrdhnthh  wrg rw hb rw th erh rhjw rht gbr n   rtwh wr gb dfh rt ", 
                  date: "Oct 21, 2026"
                  ),
                
                SizedBox(height: 10,),

                ComplaintOverview(
                  caseId: "#CS-7320", 
                  status: "In Progress", 
                  complaintName: "Broken Steet Light", 
                  description: "kkgdiaweflibvsfjbvaielbfij ema gvj werg  r thwrth  bw er wrdhnthh  wrg rw hb rw th erh rhjw rht gbr n   rtwh wr gb dfh rt ", 
                  date: "Oct 21, 2026"
                  ),
                
                SizedBox(height: 10,),

                ComplaintOverview(
                  caseId: "#CS-7320", 
                  status: "Pending", 
                  complaintName: "Broken Steet Light", 
                  description: "kkgdiaweflibvsfjbvaielbfij ema gvj werg  r thwrth  bw er wrdhnthh  wrg rw hb rw th erh rhjw rht gbr n   rtwh wr gb dfh rt ", 
                  date: "Oct 21, 2026"
                  ),
                
                SizedBox(height: 10,),

                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(219, 225, 255, 1),
                    border: Border.all(
                      width: 1.3,
                      color: const Color.fromARGB(255, 200, 205, 233)
                    ),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.auto_awesome_outlined,
                              color: Colors.blue.shade700,),
                              SizedBox(width: 10,),
                            Text(
                              "AI Analysis",
                              style: TextStyle(
                                color: Colors.blue.shade700,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "Your reports have helped resolve 12 community issues this month. The local goverment is currently prioritizing Infrastructure repairs in your district based on recent feedback",
                            style: TextStyle(
                              fontSize: 15
                            ),
                          ),

                      ],
                    ),
                  ),
                ),
                
                SizedBox(height: 10,),

                
            ],
          ),
        ),
      ));
  }
}
