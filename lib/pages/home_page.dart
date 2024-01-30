import 'package:flutter/material.dart';
import 'package:navigation_flutter/pages/DetailsPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Future goNext() async {
    var name = "Dart";
    var version = "3.2.0";
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return DetailsPage(name: name, version: version,);
    }));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text("Go to next page"),
          onPressed: () {
            goNext();
          },
        ),
      ),
    );
  }
}
