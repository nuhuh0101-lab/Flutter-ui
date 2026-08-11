
import 'package:final_year_project/widgets/status_badge.dart';
import 'package:flutter/material.dart';

class ComplaintsList extends StatelessWidget {
  final Icon icon;
  final String complaint;
  final String id;
  final String status;
  const ComplaintsList({
    super.key,
    required this.icon,
    required this.complaint,
    required this.id,
    required this.status
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          icon,
          SizedBox(width: 30,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  maxLines: 2,
                  complaint,
                  style: TextStyle(
                    fontSize: 15
                  ),
                ),
                Text("ID: $id")
              ],
            ),
          ),
          StatusBadge(status: status)
        ],
      ),
    );
  }
}
