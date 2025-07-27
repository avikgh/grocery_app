import 'package:flutter/material.dart';
import 'package:grocery_app/ui/screens/grocery_main_screen.dart';

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF00C979)),
        iconButtonTheme:
            IconButtonThemeData(style: IconButton.styleFrom(iconSize: 20)),
        iconTheme: IconThemeData(
          color: Color(0xFF00C979)
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.grey
          )
        )
      ),
      home: GroceryMainScreen(),
    );
  }
}
