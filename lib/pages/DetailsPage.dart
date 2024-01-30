import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String? name;
  final String? version;

  const DetailsPage({super.key, this.name, this.version});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  back(){
    Map map = {"name":"Flutter", "version":"3.16.9"};
    Navigator.of(context).pop(map);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          child: Text("ButtonBack"),
          textColor: Colors.white,
          color: Colors.blue,
          onPressed: (){
            back();
          },
        )

      ),
    );
  }
}
