import 'package:final_year_project/widgets/status_badge.dart';
import 'package:flutter/material.dart';

class ComplaintOverview extends StatelessWidget {
  final String caseId;
  final String status;
  final String complaintName;
  final String description;
  final String date;
  const ComplaintOverview({
    super.key,
    required this.caseId, 
    required this.status, 
    required this.complaintName, 
    required this.description, 
    required this.date,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.3,
          color: Colors.grey.shade300
        ),
        borderRadius: BorderRadius.circular(8)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(caseId,
                    style: TextStyle(
                    color: Colors.grey.shade600
                    ),),
                StatusBadge(status: status)
              ],
            ),

            SizedBox(height: 5,),

            Text(
              complaintName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: 5,),
              Text(
                description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                ),
              SizedBox(height: 10,),
              Divider(),
              Row(
                children: [
                  Icon(
                    Icons.calendar_today_outlined,
                    color: Colors.grey.shade600,),
                  SizedBox(width: 5,),
                  Text(
                    date,
                    style: TextStyle(
                      color: Colors.grey.shade600
                    ),
                  ),
                  Spacer(),
                  TextButton.icon(
                    onPressed: (){

                    }, 
                    label: Text("View Details"),
                    iconAlignment: IconAlignment.end,
                    icon: Icon(Icons.arrow_forward),
                    )
                ],
              )
          ],
        ),
      ),
    );
  }
}