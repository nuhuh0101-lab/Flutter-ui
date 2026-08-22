import 'package:final_year_project/analysis%20page/analysis_page.dart';
import 'package:final_year_project/complaints%20page/complaints_page.dart';
import 'package:final_year_project/new%20complaint%20page/new_complaint_page.dart';
import 'package:final_year_project/homepage/home_page.dart';
import 'package:final_year_project/profile%20page/profile_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  final List<Widget> pages = [
    HomePage(),
    ComplaintsPage(),
    AnalysisPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: selectedIndex,
        children: pages,
      ),
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        shadowColor: Colors.grey.shade100,
        title: Text(
          switch (selectedIndex) {
            0 => "CitySolve",
            1 => "Complaints",
            2 => "Analysis",
            3 => "Profile",
            _ => "CitySolve",
          },
          style: TextStyle(color: Colors.blue.shade700),
          ),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.notifications)),
          
          CircleAvatar(
            radius: 18,
            backgroundColor: Colors.white,
            child: Icon(Icons.person),
            
          ),
          SizedBox(width: 15,)
        ],
          
      ),

      floatingActionButton: selectedIndex == 0 
      ? NewComplaintButton()
        : null,
        
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
            ),
          child: NavigationBar(
             height: 55,
             backgroundColor: Colors.white,
             elevation: 3,
             indicatorColor: Colors.transparent,
          
          selectedIndex: selectedIndex,
          onDestinationSelected: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(Icons.receipt_long_outlined),
              selectedIcon: Icon(Icons.receipt_long),
              label: "Complaints",
            ),
            NavigationDestination(
              icon: Icon(Icons.analytics_outlined),
              selectedIcon: Icon(Icons.analytics),
              label: "Analysis",
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outline),
              selectedIcon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
                ),
        )
        );

      
  }
}

class NewComplaintButton extends StatelessWidget {
  const NewComplaintButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => NewComplaintPage()));
      },
      elevation: 1,
      icon: Icon(Icons.add),
      label: Text(
        "New Complaint",
        style: TextStyle(
          fontSize: 15
        ),
      ),
      backgroundColor: Colors.blue.shade500,
      foregroundColor: Colors.white,
      );
  }
}

