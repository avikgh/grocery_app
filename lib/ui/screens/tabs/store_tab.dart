import 'package:flutter/material.dart';
import 'package:grocery_app/entities/grocery_deals_entity.dart';

import '../../widgets/grocery_deals_card.dart';

class StoreTab extends StatefulWidget {
  const StoreTab({super.key});

  @override
  State<StoreTab> createState() => _StoreTabState();
}

class _StoreTabState extends State<StoreTab> {
  final List<Map<String, dynamic>> _categories = [
    {'icon': Icon(Icons.house_rounded), 'label': 'HouseHold'},
    {'icon': Icon(Icons.local_grocery_store), 'label': 'Grocery'},
    {'icon': Icon(Icons.local_bar_rounded), 'label': 'Liquor'},
    {'icon': Icon(Icons.fastfood_rounded), 'label': 'Chilled'},
    {'icon': Icon(Icons.bakery_dining_rounded), 'label': 'Bakery'},
    {'icon': Icon(Icons.toys_rounded), 'label': 'Toy'},
    {'icon': Icon(Icons.school_rounded), 'label': 'Education'},
    {'icon': Icon(Icons.devices), 'label': 'Electronics'},
  ];

  final List<GroceryDealsEntity> groceryList = [
    GroceryDealsEntity(
        groceryName: 'Carrots',
        groceryPrice: 200,
        groceryWeight: 1,
        groceryImage: 'assets/images/carrot.jpg'),
    GroceryDealsEntity(
        groceryName: 'Apple',
        groceryPrice: 400,
        groceryWeight: 2,
        groceryImage: 'assets/images/apple.jpeg'),
    GroceryDealsEntity(
        groceryName: 'Orange',
        groceryPrice: 300,
        groceryWeight: 1,
        groceryImage: 'assets/images/orange.jpg'),
    GroceryDealsEntity(
        groceryName: 'Broccoli',
        groceryPrice: 200,
        groceryWeight: 1,
        groceryImage: 'assets/images/broccoli.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 230,
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 5),
                  child: Text(
                    'All Categories',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
                      itemCount: _categories.length,
                      itemBuilder: (context, index) {
                        return _buildEachCategory(_categories[index]['icon'],
                            _categories[index]['label'], index);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Grocery Member Deals',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('View All >'),
                )
              ],
            ),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for(GroceryDealsEntity grocery in groceryList)
                    GroceryDealsCard(groceryDealsEntity: grocery)
                ],
              )
          )
        ],
      ),
    );
  }

  Widget _buildEachCategory(Icon icon, String label, int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            color: Color(0xFFE8FAEF),
            borderRadius: BorderRadius.circular(50),
          ),
          child: IconButton(
            onPressed: () {},
            icon: icon,
            style: IconButton.styleFrom(iconSize: 25),
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: Colors.black38,
          ),
        )
      ],
    );
  }
}
