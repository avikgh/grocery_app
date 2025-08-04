import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/data/product_data.dart';
import 'package:grocery_app/entities/grocery_deals_entity.dart';
import 'package:grocery_app/ui/screens/cold_drink_screen.dart';
import 'package:grocery_app/ui/screens/view_items_screen.dart';
import '../../widgets/grocery_deals_card.dart';

class StoreTab extends StatefulWidget {
  const StoreTab({super.key});

  @override
  State<StoreTab> createState() => _StoreTabState();
}

class _StoreTabState extends State<StoreTab> {
  final ProductData _productData = ProductData();

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE6EEF5),
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
          _buildTitleOfDeals(
              'Grocery Member Deals',
              ViewItemScreen(
                groceryList: _productData.groceryList,
                title: 'Grocery',
              )),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (GroceryDealsEntity grocery in _productData.groceryList)
                  GroceryDealsCard(groceryDealsEntity: grocery)
              ],
            ),
          ),
          _buildTitleOfDeals(
              'Liquor Member Deals',
              ViewItemScreen(
                groceryList: _productData.liquorList,
                title: 'Liquor',
              )),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (GroceryDealsEntity liquor in _productData.liquorList)
                  GroceryDealsCard(groceryDealsEntity: liquor)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildTitleOfDeals(String title, Widget screen) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.w500),
          ),
          TextButton(
            onPressed: () {
              Get.to(() => screen);
            },
            child: Text('View All >'),
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
            onPressed: () {
              Get.to(() => ColdDrinkScreen());
            },
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
