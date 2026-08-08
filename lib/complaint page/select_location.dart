import 'package:flutter/material.dart';

class SelectLocation extends StatefulWidget {
  const SelectLocation({
    super.key,
  });

  @override
  State<SelectLocation> createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){},
    
     style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: const Color.fromARGB(115, 238, 235, 235),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: Colors.grey.shade300, width: 1.3),
      )
     ),
     child: Padding(
       padding: const EdgeInsets.symmetric(vertical: 12),
       child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.location_on_outlined,
            color: Colors.blue.shade700,
            size: 28,),
            SizedBox(width: 15,),
          Expanded(
            child: Text(
              "Select Location on Map",
              style: TextStyle(
                color: Colors.black
              ),),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey.shade600,)
        ],
       ),
     ));
  }
}

