import 'package:final_year_project/widgets/overview_card.dart';
import 'package:flutter/material.dart';

class OverviewWidget extends StatefulWidget {
  const OverviewWidget({
    super.key,
  });

  @override
  State<OverviewWidget> createState() => _OverviewWidgetState();
}

class _OverviewWidgetState extends State<OverviewWidget> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint){
        int column = constraint.maxWidth > 600 ? 4 : 2;
        return GridView.count(
      crossAxisCount: column,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      childAspectRatio: 1.0,
      children: const [
        OverviewCard(
          title: "Total Cases",
          value: "150",
          subtitle: "Life-to-date submissions",
          icon: Icons.bar_chart,
          iconColor: Colors.blue,
          indicatorColor: Colors.transparent,
        ),
    
        OverviewCard(
          title: "Pending",
          value: "45",
          subtitle: "Awaiting initial review",
          icon: Icons.hourglass_empty,
          iconColor: Colors.orange,
          indicatorColor: Colors.orange,
        ),
    
        OverviewCard(
          title: "In Progress",
          value: "30",
          subtitle: "Active field resolution",
          icon: Icons.groups,
          iconColor: Colors.blue,
          indicatorColor: Colors.blue,
        ),
    
        OverviewCard(
          title: "Resolved",
          value: "75",
          subtitle: "Successfully closed",
          icon: Icons.check_circle_outline,
          iconColor: Colors.green,
          indicatorColor: Colors.green,
        ),
      ],
    );
      }
      );
  }
}