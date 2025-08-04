import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/ui/screens/notifications_screen.dart';
import 'package:grocery_app/ui/screens/tabs/profile_tab.dart';
import 'package:grocery_app/ui/screens/tabs/store_tab.dart';

class GroceryMainScreen extends StatelessWidget {
  const GroceryMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Store'),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {
                Get.to(() => NotificationsScreen());
              },
              icon: Icon(
                Icons.notifications_none,
                color: Colors.white,
              ),
            ),
          ],
          bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.storefront,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.shopping_basket,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.white,
                  ),
                )
              ]),
        ),
        body: TabBarView(
          children: [StoreTab(), StoreTab(), StoreTab(), ProfileTab()],
        ),
      ),
    );
  }
}
