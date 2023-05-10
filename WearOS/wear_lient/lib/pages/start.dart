import 'package:wear_lient/pages/Ins_Bluetooth.dart';
import 'package:wear_lient/pages/bluetooth.dart';
import 'package:flutter/material.dart';
import 'package:wear_lient/pages/home/home.dart';
import 'package:wear_lient/pages/widgets.dart';
import 'package:wear_lient/pages/instructions.dart';

class Start_Page extends StatefulWidget {
  const Start_Page({Key? key}) : super(key: key);

  @override
  State<Start_Page> createState() => _Start_PageState();
}

class _Start_PageState extends State<Start_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/logo1.jpg"),
                const Text(
                  "GyroCAD",
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                const Text(
                  "Get Gyroscopic & Accelerometer Data",
                  style: const TextStyle(color: Colors.black54, fontSize: 15),
                ),
                firebaseUIButton(context, "Using WebSocket IP", () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeView()));
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
