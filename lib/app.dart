import 'package:flutter/material.dart';
import 'package:grocery_app/ui/screens/grocery_main_screen.dart';

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery',
      debugShowCheckedModeBanner: false,
      theme: _buildLightThemeData(),
      home: GroceryMainScreen(),
    );
  }

  ThemeData _buildLightThemeData() {
    return ThemeData(
        appBarTheme: AppBarTheme(
            backgroundColor: Color(0xFF00C979),
            titleTextStyle: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
            titleSpacing: 0,
            iconTheme: IconThemeData(color: Colors.white)),
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(iconSize: 20),
        ),
        iconTheme: IconThemeData(color: Color(0xFF00C979)),
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(foregroundColor: Colors.grey)));
  }
}
