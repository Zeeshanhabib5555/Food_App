import 'package:fast_food_order/UI/fav_orders.dart';
import 'package:fast_food_order/UI/home_screen.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            SizedBox(height: 100),
            Center(
              child: Container(
                height: 200,
                width: 200,
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/food1.jpg'),
                ),
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Zeeshan Habib',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Divider(thickness: 5),
            SizedBox(height: 20),
            Text(
              'zeeshanhabib5555@gmail.com',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Divider(thickness: 5),
            SizedBox(height: 20),
            Text(
              '03151576520',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Divider(thickness: 5),
            SizedBox(height: 20),
            Text(
              'Islamabad',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Divider(thickness: 5),
            SizedBox(height: 20),
            Text(
              '50+ Orders',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 40),
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFFF6F00),
                    Color(0xFFFFA000),
                  ],
                ),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Text('Logout', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
              ),
            ),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 40),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Icon(Icons.home, color: Colors.white),
                ),
                SizedBox(width: 70),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FavOrders()));
                  },
                  child: Icon(Icons.favorite, color: Colors.white),
                ),
                SizedBox(width: 70),
                Icon(Icons.shopping_cart, color: Colors.white),
                SizedBox(width: 70),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfile()));
                  },
                  child: Icon(Icons.account_box, color: Color(0xFFFF6F00)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
