import 'package:flutter/material.dart';

class AiSmartAnalysisCard extends StatelessWidget {
  const AiSmartAnalysisCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                border: BoxBorder.all(
                  color: Colors.grey.shade300,
                  width: 1.5,
                )
                ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Current Sentiment"),
                  SizedBox(height: 5,),
                  Text(
                    "Community Supportive",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                    ),)
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                border: BoxBorder.all(
                  color: Colors.grey.shade300,
                  width: 1.5,
                )
                ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Top Category"),
                  SizedBox(height: 5,),
                  Text(
                    "Infrastructure(64%)",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400)
                      )
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                border: BoxBorder.all(
                  color: Colors.grey.shade300,
                  width: 1.5,
                )
                ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Resolution Pacing"),
                  SizedBox(height: 5,),
                  Text(
                    "Faster Than Average(+12%)",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                    )
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}