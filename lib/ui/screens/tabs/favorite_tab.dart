import 'package:flutter/material.dart';
import 'package:grocery_app/entities/grocery_deals_entity.dart';

import '../../widgets/product_item_card.dart';

class FavoriteTab extends StatefulWidget {
  const FavoriteTab(
      {super.key, required this.groceryList, required this.liquorList});

  final List<GroceryDealsEntity> groceryList;
  final List<GroceryDealsEntity> liquorList;

  @override
  State<FavoriteTab> createState() => _FavoriteTabState();
}

class _FavoriteTabState extends State<FavoriteTab> {
  List<GroceryDealsEntity> listOfItems = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: widget.groceryList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return ProductItemCard(
                      groceryDealsEntity: listOfItems[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    _mergeAllList();
    super.initState();
  }

  void _mergeAllList() {
    for (int i = 0; i < widget.groceryList.length; i++) {
      listOfItems.add(widget.groceryList[i]);
    }
    for (int i = 0; i < widget.liquorList.length; i++) {
      listOfItems.add(widget.liquorList[i]);
    }
  }
}
