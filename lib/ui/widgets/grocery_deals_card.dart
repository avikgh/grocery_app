import 'package:flutter/material.dart';
import 'package:grocery_app/entities/grocery_deals_entity.dart';

class GroceryDealsCard extends StatelessWidget {
  const GroceryDealsCard({
    super.key, required this.groceryDealsEntity,
  });

  final GroceryDealsEntity groceryDealsEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 180,
        width: 120,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Stack(
          children: [
            Positioned(
              top: 30,
              left: 10,
              child: Image.asset(groceryDealsEntity.groceryImage, height: 100, width: 100,),
            ),
            Positioned(
              top: 5,
              left: 90,
              child: Icon(Icons.favorite_border_rounded, color: Colors.black54,),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                alignment: Alignment.center,
                height: 18,
                width: 32,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Text('${groceryDealsEntity.groceryWeight}KG', style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54
                ),),
              ),
            ),
            Positioned(
              top: 130,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(groceryDealsEntity.groceryName, style: TextStyle(
                      color: Colors.black38,
                      letterSpacing: 1
                  ),),
                  Text('\$${groceryDealsEntity.groceryPrice}', style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500
                  ),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
