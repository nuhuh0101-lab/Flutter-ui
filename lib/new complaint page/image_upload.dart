import 'dart:io';

import 'package:flutter/material.dart';
import 'package:final_year_project/widgets/typical_text.dart';
import 'package:image_picker/image_picker.dart';

class ImageUpload extends StatefulWidget {
  const ImageUpload({
    super.key,
  });

  @override
  State<ImageUpload> createState() => _ImageUploadState();
}

class _ImageUploadState extends State<ImageUpload> {
    File? selectedImage;

  Future<void> pickImage() async {
    final ImagePicker picker = ImagePicker();

    final XFile? image = await picker.pickImage(
      source: ImageSource.gallery,
    );

    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
      });
    }
  }

  Future<void> captureImage() async {
    final ImagePicker picker = ImagePicker();

    final XFile? image = await picker.pickImage(
      source: ImageSource.camera,
    );

    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TypicalText(text: "Evidence"),
                if(selectedImage != null) 
                 IconButton(onPressed: (){
                  setState(() {
                    selectedImage = null;
                  });
                 }, 
                 icon: Icon(Icons.close))
                
              ],
            ),
            SizedBox(height: 10,),
            selectedImage != null 
            ? Image.file(
              selectedImage!, 
              width: double.infinity, 
              height: 180, 
              fit: BoxFit.cover,) 
              
            : Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: pickImage,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.blue, width: 1.3),
                        borderRadius: BorderRadius.circular(6)
                      ),
                      elevation: 0,
                      color: const Color.fromARGB(115, 238, 235, 235),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.upload_file,
                              color: Colors.blue.shade700,
                              size: 28,),
                            SizedBox(height: 10,),
                            Text(
                              "Upload Image",
                              style: TextStyle(
                                color: Colors.blue.shade700,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              ),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: captureImage,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.blue, width: 1.3),
                        borderRadius: BorderRadius.circular(6)
                      ),
                      elevation: 0,
                       color: const Color.fromARGB(115, 238, 235, 235),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.blue.shade700,
                              size: 28,),
                            SizedBox(height: 10,),
                            Text(
                              "Capture Image",
                              style: TextStyle(
                                color: Colors.blue.shade700,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              ),)
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}