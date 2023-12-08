import 'package:church_history/models/person_model.dart';
import 'package:flutter/material.dart';

class PersonDetail extends StatelessWidget {
  static String routeName = "/person-detail";

  const PersonDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as PersonModel;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          args.personName,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF322751),
      ),
      body: Center(
          child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
            args.personImage,
            width: 350,
            height: 200,
          ),
        ),
        Text(
          args.personName,
          style: const TextStyle(fontSize: 25),
        ),
        Text(args.personLifeSpan),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 350,
            height: 200,
            child: Text(
              args.personWork,
              style: const TextStyle(fontSize: 20),
            ),
          ),
        )
      ])),
    ));
  }
}
