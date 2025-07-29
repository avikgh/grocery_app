import 'package:flutter/material.dart';

class ColdDrinkScreen extends StatelessWidget {
  ColdDrinkScreen({super.key});

  final List<String> _coldDrinkList = [
    'Chocolate Drink',
    'Coffee',
    'Concentrated Fruit Drinks',
    'Juices & Carbonates',
    'Malt Drink',
    'Milks & Creamers',
    'RTD & Beverages',
    'Sport & Energy Drinks',
    'Tea',
    'Waters'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE6EEF5),
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: [
            Container(
              height: 250,
              width: double.maxFinite,
              child: Image.asset('assets/images/cold_drink.jpg', fit: BoxFit.fill,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 180, left: 25, right: 25),
              child: Container(
                height: 600,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: ListView.separated(
                    itemCount: _coldDrinkList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        isThreeLine: false,
                        minTileHeight: 40,
                        title: Text(_coldDrinkList[index], style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                        ),),
                        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black54,),
                      );
                    },
                    separatorBuilder: (_, __) {
                      return Divider(
                        indent: 15,
                        endIndent: 15,
                      );
                    },
                  ),
                ),
              ),
            ),
            Positioned(
              top: 64,
              left: 18,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back, color: Colors.black, size: 25),
              ),
            ),
            Positioned(
              top: 73,
              left: 66,
              child: Text('Cold Drinks', style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w600
              ),),
            )
          ],
        )
      ),
    );
  }
}
