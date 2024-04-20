import 'dart:io';

import 'package:aromelia/constant/color_is.dart';
import 'package:aromelia/pages/hair_servey.dart';
import 'package:aromelia/pages/loading_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  File? _imageFile;
  bool _imageSelected = false;

  Future<void> _getImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
        _imageSelected = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20.h,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                "Start to explore your \n hair",
                style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10.h),
            const Text("Tap to start",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w200,
                )),
            SizedBox(height: 20.h),
            GestureDetector(
              onTap: () {
                _getImage(ImageSource.camera);
              },
              child: _imageFile == null
                  ? Image.asset("assets/capture.png", height: 300.h)
                  : Container(
                      height: 300.h,
                      width: 350.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: FileImage(_imageFile!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
            ),
            SizedBox(height: 20.h),
            Text(
              "Ensure that your natural curls are showcased under good lighting.",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w200,
                fontSize: 16.sp,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Container(
              height: 50.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorIs.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                onPressed: _imageSelected
                    ? _submit
                    : () {
                        _getImage(ImageSource.camera);
                      },
                child: Text(
                  _imageSelected ? "Submit" : "Take a photo",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 50.h),
          ],
        ),
      ),
    );
  }

  void _submit() {
    // Implement your submit functionality here
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HairSurveyBody(
            selectImage: _imageFile,
          ),
        ));
  }
}
