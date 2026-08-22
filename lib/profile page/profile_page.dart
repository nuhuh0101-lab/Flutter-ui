import 'package:final_year_project/profile%20page/profile_info_containers.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              ProfilePicture(),
              SizedBox(height: 10,),
              Text(
                "Char Blaze",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 5,),
              Text(
                "example@gmail.com",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey.shade500
                ),),
              SizedBox(height: 10,),
              ProfileInfoContainers(icon: Icon(Icons.phone_outlined), infoTitle: "MOBILE NUMBER", info: "+91 6380 4783 25"),
              SizedBox(height: 10,),
              ProfileInfoContainers(icon: Icon(Icons.apartment), infoTitle: "MUNICIPALITY", info: "Central District Metro"),
              SizedBox(height: 10,),
              ProfileInfoContainers(icon: Icon(Icons.home_outlined), infoTitle: "ADDRESS", info: "742, Evergreen Terrace, Appleville"),
              
              SizedBox(height: 25),
        
              TextButton.icon(
                onPressed: (){
        
              }, 
              label: Text("Edit Profile"),
              icon: Icon(Icons.edit_outlined),
              style: TextButton.styleFrom(
                minimumSize: Size(double.infinity, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                backgroundColor: Colors.blue.shade500,
                foregroundColor: Colors.white,
              ),
              ),
              SizedBox(height: 10,),
        
                              TextButton.icon(
                onPressed: (){
        
              }, 
              label: Text("Change Password"),
              icon: Icon(Icons.lock_reset),
              style: TextButton.styleFrom(
                minimumSize: Size(double.infinity, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    color: Colors.blue.shade500,
                    width: 1.3
                  )
                ),
                backgroundColor: Colors.white,
                foregroundColor: Colors.blue.shade500,
              ),
              ),
              SizedBox(height: 18,),
              
                              TextButton.icon(
                onPressed: (){
        
              }, 
              label: Text("Logout"),
              icon: Icon(Icons.logout),
              style: TextButton.styleFrom(
                minimumSize: Size(double.infinity, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                backgroundColor: Colors.red.shade600,
                foregroundColor: Colors.white,
              ),
              ),
              SizedBox(height: 10,),
              
            ],
          ),
        ),
      ));
  }
}

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            shape: BoxShape.circle
          ),
          child: ClipOval(
            child: Image.asset(
              "assets/place_holder_image.png",
              fit: BoxFit.cover,),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: Colors.blue.shade700,
          shape: BoxShape.circle,
        ),
        child: IconButton(
          onPressed: () {
            
          },
          icon: const Icon(
            Icons.camera_alt_outlined,
            color: Colors.white,
            size: 15,
          ),
        ),
      ),)
      ],
    );
  }
}

