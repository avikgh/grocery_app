import 'package:flutter/material.dart';

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
                Text('Grocery Member Deals', style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                ),),
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
                Padding(
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
                          left: 5,
                          child: Image.asset('assets/images/carrot.jpg', height: 100, width: 100,),
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
                            child: Text('1KG', style: TextStyle(
                              fontSize: 12,
                              color: Colors.black54
                            ),),
                          ),
                        ),
                        Positioned(
                          top: 120,
                          left: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Carrots', style: TextStyle(
                                color: Colors.black38,
                                letterSpacing: 1
                              ),),
                              Text('\$200.0', style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w500
                              ),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
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
                          left: 5,
                          child: Image.asset('assets/images/carrot.jpg', height: 100, width: 100,),
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
                            child: Text('1KG', style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54
                            ),),
                          ),
                        ),
                        Positioned(
                          top: 120,
                          left: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Carrots', style: TextStyle(
                                  color: Colors.black38,
                                  letterSpacing: 1
                              ),),
                              Text('\$200.0', style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500
                              ),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
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
                          left: 5,
                          child: Image.asset('assets/images/carrot.jpg', height: 100, width: 100,),
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
                            child: Text('1KG', style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54
                            ),),
                          ),
                        ),
                        Positioned(
                          top: 120,
                          left: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Carrots', style: TextStyle(
                                  color: Colors.black38,
                                  letterSpacing: 1
                              ),),
                              Text('\$200.0', style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500
                              ),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
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
                          left: 5,
                          child: Image.asset('assets/images/carrot.jpg', height: 100, width: 100,),
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
                            child: Text('1KG', style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54
                            ),),
                          ),
                        ),
                        Positioned(
                          top: 120,
                          left: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Carrots', style: TextStyle(
                                  color: Colors.black38,
                                  letterSpacing: 1
                              ),),
                              Text('\$200.0', style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500
                              ),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
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
