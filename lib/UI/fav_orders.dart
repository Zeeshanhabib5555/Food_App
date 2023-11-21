import 'package:fast_food_order/UI/home_screen.dart';
import 'package:fast_food_order/UI/my_profile.dart';
import 'package:flutter/material.dart';

class FavOrders extends StatefulWidget {
  const FavOrders({Key? key}) : super(key: key);

  @override
  State<FavOrders> createState() => _FavOrdersState();
}

class _FavOrdersState extends State<FavOrders> {
  List<String> fav_images = [
    'images/family1.png',
    'images/family2.png',
    'images/family3.png',
    'images/buger.png',
    'images/family1.png',
    'images/pngwing.com (2).png',
    'images/pngwing.com (1).png',
  ];

  List<String> deal_number = ['Family Deal 1','Family Deal 2','Family Deal 3',
    'Family Deal 4','Family Deal 5','Family Deal 6','Family Deal 7',];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: fav_images.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 40, horizontal: 20),
                    child: Container(
                      height: 100,
                      width: 300,
                      decoration: BoxDecoration(
                        //color: Colors.white54,
                        gradient: const LinearGradient(
                          // Use Gradient color
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFFFF6F00),
                            Color(0xFFFFA000),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            fav_images[index],
                            width: 100, // Adjust the width as needed
                            height: 100, // Adjust the height as needed
                          ),
                          const SizedBox(width: 30),
                           Text(
                            deal_number[index].toString(),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 20),
                          const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:  [
                SizedBox(width: 40,),
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen())
                      );
                    },
                    child: Icon(Icons.home,color: Colors.white,)),
                SizedBox(width: 70,),
                // InkWell(
                //     onTap: (){
                //       Navigator.push(context, MaterialPageRoute(builder: (context)=>FavOrders())
                //       );
                //     },
                    //child:
                    Icon(Icons.heart_broken,color: Color(0xFFFF6F00),),
                SizedBox(width: 70,),
                Icon(Icons.add_shopping_cart,color: Colors.white,),
                SizedBox(width: 70,),
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProfile())
                      );
                    },
                    child: Icon(Icons.account_box,color: Colors.white,)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
