import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFE8FAEF),
      child: ListTile(
        title: Text('Order Update'),
        subtitle: Text('Your order is on the way.'),
        trailing: GestureDetector(
          onTap: (){},
          child: Chip(
            label: Text('View'),
            labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 12,
            ),
            backgroundColor: Color(0xFF00C980),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            labelPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
          ),
        ),
      ),
    );
  }
}
