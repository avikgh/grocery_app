import 'package:flutter/material.dart';

import '../widgets/notification_card.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE6EEF5),
      appBar: AppBar(
        title: Text('Notifications'),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return Dismissible(
              key: UniqueKey(),
              child: NotificationCard(),
            );
          },
        ),
      ),
    );
  }
}