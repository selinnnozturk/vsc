import 'dart:convert';

import 'package:deneme/main.dart';
import 'package:flutter/material.dart';
import 'model/MobilSettingApi.dart';
import 'model/mobilSet.dart';

class JsonExamp extends StatefulWidget {
  @override
  _JsonExampState createState() => _JsonExampState();
}

class _JsonExampState extends State<JsonExamp> {
  List<MobilSettings> listMobil = new List<MobilSettings>.empty(growable: true);
  late Iterable list;
  @override
  void initState() {
    super.initState();
    setState(() {
      buildData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Json Deneme"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              setState(() {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => MyApp()));
              });
            },
          )),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: ListView.builder(
          itemCount: this.listMobil.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(listMobil[index].proxy),
            );
          },
        ),
      ),
    );
  }

  void buildData() {
    List<MobilSettings> listMobil =
        new List<MobilSettings>.empty(growable: true);
    MobilSettingsApi.getMobilSettingsApi().then((response) {
      Iterable list = json.decode(response.data);
      listMobil = list.map((value) => MobilSettings.fromJson(value)).toList();
      for (var item in listMobil) {
        setState(() {
          this.listMobil.add(item);
        });
      }
    });
  }
}
