import 'package:church_history/models/church_model.dart';
import 'package:flutter/material.dart';

class SingleEventWidget extends StatelessWidget {
  static String routeName = "/single_event";

  const SingleEventWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // var screenSize = MediaQuery.of(context).size;

    //var screenHeight = screenSize.height;
    //var screenWidth = screenSize.width;

    final args = ModalRoute.of(context)!.settings.arguments as ChurchModel;

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              args.title,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.purple,
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 380,
                    child: Text(
                      "${args.date} - ${args.title}",
                      style: const TextStyle(fontSize: 28),
            
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Divider(
                    height: 1,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 500,
                  width: 300,
                  child: Text(
                    args.event,
                    style: const TextStyle(fontSize: 25),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

/*
Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        args.date + " - " + args.title,
                        style: const TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        args.event,
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ), */
