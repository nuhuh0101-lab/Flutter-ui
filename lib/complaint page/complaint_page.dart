import 'package:final_year_project/complaint%20page/image_upload.dart';
import 'package:final_year_project/complaint%20page/select_location.dart';
import 'package:final_year_project/widgets/custom_textfield.dart';
import 'package:final_year_project/widgets/typical_text.dart';
import 'package:flutter/material.dart';

class ComplaintPage extends StatelessWidget{
  const ComplaintPage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        shadowColor: Colors.grey.shade100,
        leading: IconButton(
          onPressed:() {
            Navigator.pop(context);
          },
        icon : Icon(Icons.arrow_back)),
        title: Text(
          "Report Issue",
          style: TextStyle(
            color: Colors.blue.shade700
          ),
          ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
        child:  Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Submit A Compliaint",
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold
                ),
                ),

              SizedBox(height: 5,),

              Text(
                "Provide details about the infrastructure issue you've encountered",
                style: TextStyle(
                fontSize: 15
                ),),

                SizedBox(height: 10,),

                IssueCard(),

                SizedBox(height: 10,),

                ImageUpload(),

                SizedBox(height: 15,),

                TypicalText(text: "Location"),

                SizedBox(height: 5,),

                SelectLocation(),

                SizedBox(height: 10,),

                InfoText(),

                SizedBox(height: 25,),

                SubmitButton()
            ],
          ),
        ),
        )),
    );
  }
}
class IssueCard extends StatelessWidget {
  const IssueCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TypicalText(text: "Complaint Title"),
        
                  SizedBox(height: 5,),
        
                  CustomTextField(
                    text: "e.g., Broken Streetlight", 
                    obscureText: false, 
                    numberKeyboard: false
                    ),
        
                  SizedBox(height: 10,),
                  
                  TypicalText(text: "Description"),
        
                  SizedBox(height: 5,),
        
                  DescriptionField(),
          ],
        ),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageUpload(),
          ],
        ),
      ),
    );
  }
}
class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
    
    }, 
    style: ElevatedButton.styleFrom(
     elevation: 0,
     backgroundColor: Colors.blue.shade600,
     foregroundColor: Colors.white,
     shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(10)
     )
    ),
    child: Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Text("Submit Compllaint"),
       SizedBox(width: 5,),
       Icon(Icons.arrow_forward)
     ],
    ));
  }
}

class InfoText extends StatelessWidget {
  const InfoText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(10),
       border: Border.all(
         color: Colors.grey.shade300,
         width: 1.3
       )
     ),
     padding: EdgeInsets.symmetric(vertical: 18, horizontal: 18),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Row(
           children: [
             Text(
               "AI Smart Assistant",
               style: TextStyle(
                 color: Colors.blue.shade700,
                 fontSize: 15,
                 fontWeight: FontWeight.bold
               ),),
               SizedBox(width: 10,),
             Icon(
               Icons.auto_awesome_outlined,
               color: Colors.blue.shade700,)
           ],
         ),
         SizedBox(height: 5,),
         Text("Our AI will automatically categorize your report and estimate resolution time based on historical data once submitted")
       ],
     ),
    );
  }
}


class DescriptionField extends StatefulWidget {
  const DescriptionField({
    super.key,
  });

  @override
  State<DescriptionField> createState() => _DescriptionFieldState();
}

class _DescriptionFieldState extends State<DescriptionField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: TextFormField(
        maxLines: null,
        expands: true,
        textAlignVertical: TextAlignVertical.top,
        keyboardType: TextInputType.multiline,
        decoration: InputDecoration(
          hintText: "Describe the Problem in Detail...",
          filled: true,
          fillColor: const Color.fromARGB(115, 243, 242, 242),
          enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(
            width: 1,
            color: const Color.fromARGB(115, 158, 158, 158),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(
            width: 1,
            color: const Color.fromARGB(115, 158, 158, 158),
          ),
        ),
        ),
      ),
    );
  }
}