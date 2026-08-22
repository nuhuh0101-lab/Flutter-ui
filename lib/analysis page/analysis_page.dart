import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class AnalysisPage extends StatefulWidget {
  final List<String> dropItems = const [
    "Last 7 Days",
    "1 Month",
    "1 Year",
  ];

  
  const AnalysisPage({
    super.key,
  });

  @override
  State<AnalysisPage> createState() => _AnalysisPageState();
}

class _AnalysisPageState extends State<AnalysisPage> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Understand complaint trends and system performance.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: DropdownButton<String>(
                      value: selectedValue,
                      hint: const Text("Select"),
                      underline: const SizedBox(),
                      isDense: true,
                      items: widget.dropItems.map((String item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: TextStyle(
                              fontSize: 12
                            ),),
                        );
                      }).toList(),

                      onChanged: (value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                    ),
                  ),
                  Spacer(),
                  UpdatedOn(),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Divider(),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    AnalysisStatCard(title: "Complaints", icon: Icon(Icons.library_books_rounded, color: Colors.blue,), value: 6767),
                    SizedBox(width: 15,),
                    AnalysisStatCard(title: "Resolved", icon: Icon(Icons.check_circle_outline, color: Colors.green,), value: 4165),
                    SizedBox(width: 15,),
                    AnalysisStatCard(title: "Pending", icon: Icon(Icons.timer_outlined, color: Colors.grey,), value: 9325),
                  ],
                ),
              ),

              SizedBox(height: 15,),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1.3),
                        borderRadius: BorderRadius.circular(5),
                      ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Complaint Volume over the past 7 days",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(Icons.circle,
                        size: 8,
                        color: Colors.blue,),
                        SizedBox(width: 3,),
                        Text("Complaint"),

                        SizedBox(width: 15,),
                        Icon(Icons.circle,
                        size: 8,
                        color: Colors.green,),
                        SizedBox(width: 3,),
                        Text("resolved"),

                        SizedBox(width: 15,),
                        Icon(Icons.circle,
                        size: 8,
                        color: Colors.red,),
                        SizedBox(width: 3,),
                        Text("Critical")
                      ],
                    ),

                    SizedBox(height: 15,),

                    LineGraph(),
                  ],
                ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}

class LineGraph extends StatelessWidget {
  const LineGraph({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        height: 200,
        child: LineChart(
          duration: Duration(milliseconds: 500),
          curve: Curves.decelerate,
          LineChartData(
            gridData: FlGridData(
              show: false
            ),
            borderData: FlBorderData(
              show: false
            ),
            titlesData: FlTitlesData(
      
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 30,
                  getTitlesWidget: (value, meta) {
                    switch (value.toInt()) {
                    case 0:
                      return SideTitleWidget(
                        meta: meta,
                        space: 8,
                        child: Text("Mon",
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),));
      
                    case 1:
                      return SideTitleWidget(
                        meta: meta,
                        space: 8,
                        child: Text("Tue",
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),));
    
                    case 2:
                      return SideTitleWidget(
                        meta: meta,
                        space: 8,
                        child: Text("Wed",
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),));
      
                    case 3:
                      return SideTitleWidget(
                        meta: meta,
                        space: 8,
                        child: Text("Thu",
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),));
      
                    case 4:
                      return SideTitleWidget(
                        meta: meta,
                        space: 8,
                        child: Text("Fri",
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),));
      
                    case 5:
                      return SideTitleWidget(
                        meta: meta,
                        space: 8,
                        child: Text("Sat",
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),));
      
                    case 6:
                      return SideTitleWidget(
                        meta: meta,
                        space: 8,
                        child: Text("Sun",
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),));
      
                    default:
                      return const Text("");
                  } 
                  },
                )
              ),
      
              topTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false)
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false)
              ),
              rightTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false)
              ),
            ),
            lineBarsData: [

              // Complaint graph(Blue)
              LineChartBarData(
                spots: [
                  FlSpot(0, 0,),
                  FlSpot(1, 5),
                  FlSpot(2, 15),
                  FlSpot(3, 20),
                  FlSpot(4, 75),
                  FlSpot(5, 60),
                  FlSpot(6, 40)
                ],
              ),

              // Resolved Graph(Green)
              LineChartBarData(
                spots: [
                  FlSpot(0, 0),
                  FlSpot(1, 10),
                  FlSpot(2, 18),
                  FlSpot(3, 50),
                  FlSpot(4, 30),
                  FlSpot(5, 7),
                  FlSpot(6, 40)
                ],
                color: Colors.green
              ),

              // Critical Graph(Red)
              LineChartBarData(
                spots: [
                  FlSpot(0, 0),
                  FlSpot(1, 5),
                  FlSpot(2, 3),
                  FlSpot(3, 10),
                  FlSpot(4, 6),
                  FlSpot(5, 7),
                  FlSpot(6, 9)
                ],
                color: Colors.red
              ),
            ]
          )
        ),
      ),
    );
  }
}

class AnalysisStatCard extends StatelessWidget {
  final String title;
  final Icon icon;
  final int value;
  const AnalysisStatCard({
    super.key,
    required this.title,
    required this.icon,
    required this.value
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 1.3,
          color: Colors.grey.shade300)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                icon,
                SizedBox(width: 8,),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),),
              ],
            ),
            SizedBox(height: 10,),
            Text(value.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),)
          ],
        ),
      ),
    );
  }
}

class UpdatedOn extends StatelessWidget {
  const UpdatedOn({
    super.key,
  });

  final String updatedOn = "Oct 7";


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          size: 7,
          color: Colors.green.shade700,),
        SizedBox(width: 3),
        Text("Updated on $updatedOn"),
      ],
    );
  }
}