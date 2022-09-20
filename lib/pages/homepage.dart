import 'package:flutter/material.dart';
import 'package:flutter_project_1/pages/joinWithCode.dart';
import 'package:get/get.dart';

import 'new_meeting.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Video Conference"),
        centerTitle: true,
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
          child: ElevatedButton.icon(
              onPressed: () {
                Get.to(NewMeeting());
              },
              icon: const Icon(Icons.add),
              label: const Text("New Meeting"),
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(350, 30),
                  primary: Colors.indigo,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ))),
        ),
        const Divider(
          thickness: 1,
          height: 40,
          indent: 40,
          endIndent: 20,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
          child: OutlinedButton.icon(
            onPressed: () {
              // ignore: prefer_const_constructors
              Get.to(JoinWithCode());
            },
            icon: const Icon(Icons.margin),
            label: const Text("Join With a Code"),
            style: OutlinedButton.styleFrom(
              primary: Colors.indigo,
              side: const BorderSide(color: Colors.indigo),
              fixedSize: const Size(350, 30),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
