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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            const Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/shaniupdate.png'),
              ),

            ),
            const SizedBox(height: 20),
            const Text(
              'Zeeshan Habib',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const Divider(thickness: 5),
            const SizedBox(height: 20),
            const Text(
              'zeeshanhabib5555@gmail.com',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const Divider(thickness: 5),
            const SizedBox(height: 20),
            const Text(
              '03151576520',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const Divider(thickness: 5),
            const SizedBox(height: 20),
            const Text(
              'Islamabad',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const Divider(thickness: 5),
            const SizedBox(height: 20),
            const Text(
              '50+ Orders',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 20),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                },
                child: const Text('Logout', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 40),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                  },
                  child: const Icon(Icons.home, color: Colors.white),
                ),
                const SizedBox(width: 70),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const FavOrders()));
                  },
                  child: const Icon(Icons.favorite, color: Colors.white),
                ),
                const SizedBox(width: 70),
                const Icon(Icons.shopping_cart, color: Colors.white),
                const SizedBox(width: 70),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MyProfile()));
                  },
                  child: const Icon(Icons.account_box, color: Color(0xFFFF6F00)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
