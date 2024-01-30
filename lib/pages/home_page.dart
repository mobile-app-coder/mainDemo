import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
    
  Future goNext() async{
    Navigator.of(context).push(route)
  }
  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text("Go to next page"),
          onPressed: (){

          },
        ),
      ),
    );
  }
}
