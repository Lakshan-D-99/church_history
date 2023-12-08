import 'package:church_history/models/person_model.dart';
import 'package:church_history/widgets/person_detail.dart';
import 'package:flutter/material.dart';

class AllPersonWidget extends StatelessWidget {
  final PersonModel personModel;

  const AllPersonWidget({super.key, required this.personModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(personModel.personImage),
            //backgroundColor: Colors.transparent,
          ),
          title: Text(personModel.personName),
          trailing: ElevatedButton(
            child: const Text("View more"),
            onPressed: () {
            Navigator.of(context)
                .pushNamed(PersonDetail.routeName, arguments: personModel);
            },
          ),
        ),
      ),
    );
  }
}

/* const CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage("assets/martin-luther.jpg"),
        ), */
