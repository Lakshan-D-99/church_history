import "package:flutter/material.dart";

import "../data/data_set.dart";
import "../widgets/event_button.dart";

class AllPostsScreen extends StatelessWidget {
  const AllPostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Expanded(
        child: ListView.builder(
          itemBuilder: (context, index) =>
              EventButton(churchModel: churchModelList[index]),
          itemCount: churchModelList.length,
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
