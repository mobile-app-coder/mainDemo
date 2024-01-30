import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String? name;
  final String? version;
  const DetailsPage({super.key, this.name, this.version});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("name: ${widget.name}\nversion:${widget.version}"),
      ),
    );
  }
}
