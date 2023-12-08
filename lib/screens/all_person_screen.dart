import 'package:church_history/data/people_data_set.dart';
import 'package:church_history/widgets/all_person_widget.dart';
import 'package:flutter/material.dart';

class AllPersonScreen extends StatelessWidget {
  static String routeName = "/persons";

  const AllPersonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView.builder(
        itemBuilder: (context, index) =>
            AllPersonWidget(personModel: personModelList[index]),
        itemCount: personModelList.length,
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
      )),
    );
  }
}
