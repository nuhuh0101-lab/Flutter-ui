
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                complaint
              ),
              Text(id)
            ],
          ),
          StatusBadge(status: status)
        ],
      ),
    );
  }
}

class StatusBadge extends StatelessWidget{
  final String status;
  const StatusBadge({
    super.key,
    required this.status
    });
  @override
  Widget build(BuildContext context){
    Color backgroundColor;
    Color textColor;
    switch(status){
      case "Resolved":
        backgroundColor = Colors.green.shade50;
        textColor = Colors.green.shade700;
        break;

      case "In Progress":
        backgroundColor = Colors.blue.shade50;
        textColor = Colors.blue.shade700;
        break;

      case "Pending":
        backgroundColor = Colors.orange.shade50;
        textColor = Colors.orange.shade700;
        break;

      default:
        backgroundColor = Colors.grey.shade100;
        textColor = Colors.grey.shade700;
    }

    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        status,
        style: TextStyle(
          color: textColor,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}