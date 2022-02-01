import 'package:flui_components/categories.dart';
import 'package:flutter/material.dart';

class TemplateCategoriesList extends StatelessWidget {
  const TemplateCategoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final category = kCategories[index];
        return ListTile(
          onTap: () {
            Navigator.of(context).pushNamed("/cat/${category[0]}");
          },
          title: Text(category[1]),
        );
      },
      itemCount: kCategories.length,
    );
  }
}
