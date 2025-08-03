import '../entities/grocery_deals_entity.dart';

class ProductData {
  final List<GroceryDealsEntity> groceryList = [
    GroceryDealsEntity(
        groceryName: 'Carrots',
        groceryPrice: 200,
        groceryWeight: '1KG',
        groceryImage: 'assets/images/carrot.jpg'),
    GroceryDealsEntity(
        groceryName: 'Apple',
        groceryPrice: 400,
        groceryWeight: '2KG',
        groceryImage: 'assets/images/apple.jpeg'),
    GroceryDealsEntity(
        groceryName: 'Orange',
        groceryPrice: 300,
        groceryWeight: '2KG',
        groceryImage: 'assets/images/orange.jpg'),
    GroceryDealsEntity(
        groceryName: 'Broccoli',
        groceryPrice: 200,
        groceryWeight: '1KG',
        groceryImage: 'assets/images/broccoli.jpg'),
  ];

  final List<GroceryDealsEntity> liquorList = [
    GroceryDealsEntity(
        groceryName: 'Black Label',
        groceryPrice: 200,
        groceryWeight: '1L',
        groceryImage: 'assets/images/black.jpeg'),
    GroceryDealsEntity(
        groceryName: 'Nemiroff',
        groceryPrice: 400,
        groceryWeight: '1.25L',
        groceryImage: 'assets/images/nemiroff.jpg'),
    GroceryDealsEntity(
        groceryName: 'Teachers',
        groceryPrice: 300,
        groceryWeight: '0.75L',
        groceryImage: 'assets/images/teachers.jpg'),
    GroceryDealsEntity(
        groceryName: 'Chivas Regal',
        groceryPrice: 200,
        groceryWeight: '0.75L',
        groceryImage: 'assets/images/chivas.jpg'),
  ];
}