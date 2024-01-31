import 'package:flutter/material.dart';
import 'package:navigation_flutter/pages/details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Future openDetailsPage() async {
    var name = "Dart";
    var version = "3.2.0";
    Map map = await Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return DetailsPage(
        name: name,
        version: version,
      );
    }));

    if (map != null) {
      String name = map["name"];
      String version = map["version"];
      print(name);
      print(version);
    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text("Open"),
          onPressed: () {
            openDetailsPage();
          },
        ),
      ),
    );
  }
}
