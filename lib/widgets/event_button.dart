import 'package:church_history/models/church_model.dart';
import 'package:church_history/widgets/single_event_widget.dart';
import 'package:flutter/material.dart';

class EventButton extends StatelessWidget {
  final ChurchModel churchModel;
  const EventButton({super.key, required this.churchModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(churchModel.title),
        subtitle: Text(churchModel.date),
        trailing: ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .pushNamed(SingleEventWidget.routeName, arguments: churchModel);
          },
          child: Text(
            "Mehr Info",
          ),
        ),
      ),
    );
  }
}

/* ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .pushNamed(SingleEventWidget.routeName, arguments: churchModel);
          },
          child: Text(churchModel.date)) */
