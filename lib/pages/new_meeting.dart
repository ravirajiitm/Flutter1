import 'package:flutter/material.dart';
import 'package:flutter_project_1/video_call.dart';
import 'package:get/get.dart';
import 'package:share/share.dart';
import 'package:uuid/uuid.dart';

class NewMeeting extends StatefulWidget {
  NewMeeting({Key? key}) : super(key: key);

  @override
  State<NewMeeting> createState() => _NewMeetingState();
}

class _NewMeetingState extends State<NewMeeting> {
  String _meetingcode = "abdgsyda";
  @override
  void initState() {
    var uuid = Uuid();
    _meetingcode = uuid.v1().substring(0, 8);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: InkWell(
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
                padding: const EdgeInsets.fromLTRB(15, 20, 15, 00),
                child: Card(
                    color: Colors.grey[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    // ignore: prefer_const_constructors
                    child: ListTile(
                      leading: Icon(Icons.link),
                      title: SelectableText(
                        _meetingcode,
                        // ignore: prefer_const_constructors
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      trailing: Icon(Icons.copy),
                    )),
              ),
              Divider(
                thickness: 1,
                height: 40,
                indent: 20,
                endIndent: 20,
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    Share.share("Meeting Code : $_meetingcode");
                  },
                  icon: Icon(Icons.arrow_drop_down),
                  label: Text("Share invite"),
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(350, 30),
                      primary: Colors.indigo,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ))),
              SizedBox(height: 20),
              OutlinedButton.icon(
                onPressed: () {
                  Get.to(VideoCall(channelName: _meetingcode.trim()));
                },
                icon: const Icon(Icons.video_call),
                label: const Text("Start call"),
                style: OutlinedButton.styleFrom(
                  primary: Colors.indigo,
                  side: const BorderSide(color: Colors.indigo),
                  fixedSize: const Size(350, 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
