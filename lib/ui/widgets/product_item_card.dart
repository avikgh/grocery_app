import 'package:flutter/material.dart';
import 'package:grocery_app/entities/grocery_deals_entity.dart';

class ProductItemCard extends StatefulWidget {
  const ProductItemCard({
    super.key,
    required this.groceryDealsEntity,
  });

  final GroceryDealsEntity groceryDealsEntity;

  @override
  State<ProductItemCard> createState() => _ProductItemCardState();
}

class _ProductItemCardState extends State<ProductItemCard> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children: [
            Positioned(
              top: 30,
              left: 39,
              child: Image.asset(
                widget.groceryDealsEntity.groceryImage,
                height: 100,
                width: 100,
              ),
            ),
            Positioned(
                top: 6,
                left: 145,
                child: GestureDetector(
                    onTap: () {
                      _isFavorite = !_isFavorite;
                      setState(() {});
                    },
                    child: _isFavorite
                        ? Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                        : Icon(
                      Icons.favorite_border_rounded,
                      color: Colors.black54,
                    ))),
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                alignment: Alignment.center,
                height: 18,
                width: 32,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  widget.groceryDealsEntity.groceryWeight,
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
              ),
            ),
            Positioned(
              top: 130,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.groceryDealsEntity.groceryName,
                    style: TextStyle(color: Colors.black38, letterSpacing: 1),
                  ),
                  Text(
                    '\$${widget.groceryDealsEntity.groceryPrice}',
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
