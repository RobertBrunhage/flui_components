import 'package:flutter/material.dart';

class TemplatesList extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const TemplatesList({
    Key? key,
    required this.title,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: children,
      ),
    );
  }
}
