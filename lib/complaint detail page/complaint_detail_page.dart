import 'package:final_year_project/complaint%20detail%20page/time_line.dart';
import 'package:final_year_project/widgets/status_badge.dart';
import 'package:final_year_project/widgets/typical_text.dart';
import 'package:flutter/material.dart';

class ComplaintDetailPage extends StatelessWidget {
  const ComplaintDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        shadowColor: Colors.grey.shade100,
        leading: IconButton(
          onPressed:() {
            Navigator.pop(context);
          },
        icon : Icon(Icons.arrow_back)),
        title: Text(
          "Complaint Details",
          style: TextStyle(
            color: Colors.blue.shade700
          ),
          ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("#cs-3734"),
                    StatusBadge(status: "Resolved")
                  ],
                ),
                SizedBox(height: 10,),
                Text(
                  "Severe Pothole Cluster on Main St",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold
                  ),
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
                    padding: const EdgeInsets.all(10.0),
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
                            "Automated visual analysis comfirms deep structural degradation consistent with severe winter weathering. Risk of vehicle damage is high",
                            style: TextStyle(
                              fontSize: 15
                            ),
                          ),

                          SizedBox(height: 5,),

                          LayoutBuilder(
                            builder: (context, constraint) {
                              int column = constraint.maxWidth > 600 ? 4 : 2;
                              return GridView.count(
                              crossAxisCount: column,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              crossAxisSpacing: 0,
                              mainAxisSpacing: 0,
                              childAspectRatio: 3.0,
                              children: const [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Category"),
                                    Text("Infrastructure")
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Priority"),
                                    Text("High")
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Department"),
                                    Text("Public Works")
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Category"),
                                    Text("Infrastructure")
                                  ],
                                )
                              ],
                            );
                            },
                            
                          ),
                      ],
                    ),
                  ),
                ),
                
                SizedBox(height: 10,),

                SizedBox(height: 10,),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1.3,
                      color: Colors.grey.shade400
                    ),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined),
                            SizedBox(width: 5),
                          Text("1200 Block, Main street \nNear intersection with 4th Ave")
                          ],
                        ),
                        
                        SizedBox(height: 8,),

                        Image.asset(
                          "assets/place_holder_image.png",
                          height: 180,
                          width: double.infinity,
                          fit: BoxFit.cover,)
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 10),

                TypicalText(text: "Submitted Evidence"),

                SizedBox(height: 5),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1.3,
                      color: Colors.grey.shade400
                    ),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                              "assets/place_holder_image.png",
                              height: 180,
                              width: double.infinity,
                              fit: BoxFit.cover
                              ),
                  ),
                ),
                SizedBox(height: 10),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    TypicalText(text: "Resoultion Timeline"),

                    SizedBox(height: 16),

                    Timeline(
                      title: "Issue Resolved",
                      description:
                          "Issue has been resolved successfully with no complications",
                      date: "Oct 14, 2:30 PM",
                      isCompleted: false,
                      isLast: false,
                    ),

                    Timeline(
                      title: "Crew Dispatched",
                      description:
                          "Maintenance team assigned and en route to location.",
                      date: "Oct 13, 9:15 AM",
                      isCompleted: true,
                      isLast: false,
                    ),

                    Timeline(
                      title: "Under Review",
                      description:
                          "AI assessment confirmed. Forwarded to Public Works for scheduling.",
                      date: "Oct 12, 11:05 AM",
                      isCompleted: true,
                      isLast: false,
                    ),

                    Timeline(
                      title: "Complaint Submitted",
                      description:
                          "Report filed by citizen via CivicSense App.",
                      date: "Oct 12, 10:42 AM",
                      isCompleted: true,
                      isLast: true,
                    ),
                  ],
                )
              ],
            ),
          ),
      )
      ),

       bottomNavigationBar: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {
                      
                    },
                    icon: Icon(
                      Icons.share,
                      color: Colors.blue),
                    label: Text(
                      "Share",
                      style: TextStyle(
                        color: Colors.blue
                      ),),
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),                                            
                      ),
                      side: BorderSide(
                        width: 1.3,
                        color: Colors.blue.shade600
                      )
                    ),
                  ),
                ),

                SizedBox(width: 16),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: const Size(double.infinity, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Leave Feedback",
                    style: TextStyle(
                        color: Colors.white
                      ),),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    
  }
}

