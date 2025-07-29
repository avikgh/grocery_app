import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  final List<Map<String, dynamic>> _listOfOption = [
    {
      'icon': Icon(Icons.account_circle_outlined, color: Colors.white,),
      'title': 'Recipient Details',
      'color': Color(0xFF775CE6)
    },
    {
      'icon': Icon(Icons.local_shipping_outlined, color: Colors.white,),
      'title': 'Delivery Address',
      'color': Color(0xFFf29f18)
    },
    {
      'icon': Icon(Icons.monetization_on_outlined, color: Colors.white,),
      'title': 'Payment Method',
      'color': Color(0xFFf27653)
    },
    {
      'icon': Icon(Icons.lock_open_outlined, color: Colors.white,),
      'title': 'Change Password',
      'color': Color(0xFFf23f63)
    },
    {
      'icon': Icon(Icons.logout, color: Colors.white,),
      'title': 'Logout',
      'color': Color(0xFFf02648)
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE6EEF5),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: 125,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Stack(
                children: [
                  Positioned(
                      top: 20,
                      left: 20,
                      child: CircleAvatar(
                        radius: 42,
                        backgroundImage: AssetImage('assets/images/avik.jpg'),
                      )),
                  Positioned(
                    top: 35,
                    left: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Avik Ghosh',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'avikgh21@gmail.com',
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '01776336277',
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              height: 380,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
                child: ListView.separated(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                          radius: 22,
                          backgroundColor: _listOfOption[index]['color'],
                          child: _listOfOption[index]['icon']),
                      title: Text(_listOfOption[index]['title'], style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500
                      ),),
                      trailing: Icon(Icons.chevron_right, color: Colors.black54,),
                    );
                  },
                  separatorBuilder: (_, __) {
                    return Divider();
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
