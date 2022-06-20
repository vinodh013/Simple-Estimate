import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/totalcontroller.dart';

void main() {
  runApp( MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new MaterialApp(
      home: new ListDisplay(),
    );
  }
}


class ListDisplay extends StatefulWidget {

  @override
  State createState() =>  DyanmicList();
}
class DyanmicList extends State<ListDisplay> {
  List<String> litems = [];
  final TextEditingController eCtrl = new TextEditingController();
  @override
  Widget build (BuildContext ctxt) {
    return  Scaffold(
      appBar:  AppBar(title: new Text("Dynamic Demo"),),
      body:  Column(
        children: <Widget>[
           TextField(
            controller: eCtrl,
            onSubmitted: (text) {
              litems.add(text);
              eCtrl.clear();
              setState(() {});
            },
          ),
           Expanded(
            child:  ListView.builder
              (
                itemCount: litems.length,
                itemBuilder: (BuildContext ctxt, int Index) {
                  return new Text(litems[Index]);
                }
            )
        )
        ],
      )
    );
  }
}