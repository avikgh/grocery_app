import 'package:flutter/material.dart';
import 'package:grocery_app/entities/grocery_deals_entity.dart';
import 'package:grocery_app/ui/widgets/product_item_card.dart';

class ViewItemScreen extends StatelessWidget {
  const ViewItemScreen(
      {super.key, required this.groceryList, required this.title});

  final List<GroceryDealsEntity> groceryList;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE6EEF5),
        appBar: AppBar(
          title: Text(title),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  itemCount: groceryList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return ProductItemCard(
                        groceryDealsEntity: groceryList[index]);
                  },
                ),
              ),
            ],
          ),
        ),
    );
  }
}
