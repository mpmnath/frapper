import 'package:flutter/material.dart';
import 'package:frapper/widgets/notification_tile.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
          splashRadius: 20.0,
          padding: const EdgeInsets.all(0),
          iconSize: 18.0,
        ),
        title: const Text(
          "Notifications",
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            children: const [
              NotificationTile(),
              Divider(),
            ],
          );
        },
      ),
    );
  }
}
