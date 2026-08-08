import 'package:flutter/material.dart';

class ImageUpload extends StatefulWidget {
  const ImageUpload({
    super.key,
  });

  @override
  State<ImageUpload> createState() => _ImageUploadState();
}

class _ImageUploadState extends State<ImageUpload> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              
            },
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey.shade300, width: 1.3),
                borderRadius: BorderRadius.circular(10)
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
            onTap: () {
              
            },
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey.shade300, width: 1.3),
                borderRadius: BorderRadius.circular(10)
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
    );
  }
}