import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String? text;
  const DetailsPage({super.key, this.text});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.text!),
      ),
    );
  }
}
