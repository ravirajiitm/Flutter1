// ignore: file_names
// ignore: file_names
// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_project_1/video_call.dart';
import 'package:get/route_manager.dart';

// ignore: camel_case_types
class JoinWithCode extends StatelessWidget {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_literals_to_create_immutables
      body: SafeArea(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: InkWell(
                // ignore: sort_child_properties_last
                child: Icon(
                  Icons.arrow_back_ios_new_sharp,
                  size: 35,
                ),
                onTap: Get.back,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              "Enter Meeting Code below",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
              child: Card(
                color: Colors.grey[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  controller: _controller,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Example : abc-efg-ghi "),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(VideoCall(channelName: _controller.text.trim()));
                },
                child: const Text("Join"),
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(50, 30),
                    primary: Colors.indigo,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ))),
          ],
        ),
      ),
    );
  }
}
