import 'package:final_year_project/homepage/complaint_list.dart';
import 'package:flutter/material.dart';

class RecentComplaintWidget extends StatelessWidget {
  const RecentComplaintWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
