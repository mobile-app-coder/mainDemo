import 'package:flutter/material.dart';
import 'package:navigation_flutter/pages/DetailsPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? getName;
  String? getVersion;

  Future goNext() async {
    var name = "Dart";
    var version = "3.2.0";
    Map map = await Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return DetailsPage(
        name: name,
        version: version,
      );
    }));

    if (map != null && map.containsKey("name")) {
      getName = map["name"];
      getVersion = map["version"];
    }
  }
  var text = "Got To Next";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(text),
          onPressed: () {
            setState(() {
              text = getName ?? "No result";
            });
            print(getName);
            print(getVersion);
            goNext();
          },
        ),
      ),
    );
  }
}
