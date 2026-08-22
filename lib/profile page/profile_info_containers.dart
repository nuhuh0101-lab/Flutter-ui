import 'package:flutter/material.dart';

class ProfileInfoContainers extends StatelessWidget {
  final Icon icon;
  final String infoTitle;
  final String info;
  const ProfileInfoContainers({
    super.key,
    required this.icon, 
    required this.infoTitle, 
    required this.info
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey.shade400,
          width: 1.3
        ),
        borderRadius: BorderRadius.circular(8)
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color.fromARGB(255, 200, 205, 233),
              ),
             
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: icon,
              )
              ),
            SizedBox(width: 20,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    infoTitle,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500
                    ),),
                  Text(
                    info,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),),
                ],                          
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey.shade500,)
          ],
        ),
      ),
    );
  }
}