import 'package:fast_food_order/UI/detail_screen.dart';
import 'package:fast_food_order/UI/fav_orders.dart';
import 'package:fast_food_order/UI/my_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<int> percent = [50, 70, 30,50];
  List<String> meslNames = ['Burger', 'Zinger Burger', 'Wings','Shuarma'];
  List<String> exploreNow = ['Explore Now','Explore Now','Explore Now','Explore Now',];
  List<String> images = [
    'images/buger.png',
    'images/pngwing.com (2).png',
    'images/pngwing.com (1).png',
    'images/pngwing.com.png',
  ];
  List<String> price2 = ['Rs 600', 'Rs 250', 'Rs 800','Rs 1000'];
  List<String> productName = ['Burger Details','Zinger Burger Details','Wings Details','Shuarma Details',];

  List<String> foodNames = ['Burgers','Pizza', 'Desserts', 'Shawarma'];
  List<String> menue = ['Family Deal 1', 'Family Deal 2', 'Family Deal 3','Family Deal 4'];
  List<String> price = ['Rs 800', 'Rs 600', 'Rs 1200','Rs 2000'];
  List<String> familyDeals = ['Family Deal 1','Family Deal 2','Family Deal 3','Family Deal 4',];
  List<String> priceA1 = ['Rs 1500', 'Rs 800', 'Rs 1200','Rs 1000'];
  List<String> priceA2 = ['Rs 2000', 'Rs 1050', 'Rs 1500','Rs 2000'];

  List<String> crashers = [
    'images/family1.png',
    'images/family2.png',
    'images/family3.png',
    'images/family4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: const Color(0xFFFF6F00),
        title: const Center(
          child: Text("Home Screen"),
        ),
        actions: [const Icon(Icons.notification_add_outlined)],
      ),
      // Icon(Icons.notification_add_outlined)
      // drawer: Drawer(
      //   child: ListView(
      //     children: [
      //       UserAccountsDrawerHeader(
      //         decoration: const BoxDecoration(color: Color(0xFFFF6F00)),
      //         currentAccountPictureSize: const Size.square(80),
      //         currentAccountPicture: InkWell(
      //           onTap: () {
      //             // Navigator.push(
      //             //     context,
      //             //     MaterialPageRoute(
      //             //         builder: (context) =>  DetailScreen()));
      //           },
      //           child: const CircleAvatar(
      //             backgroundImage: AssetImage('images/fast-food-logo-emblem.png'),
      //           ),
      //         ),
      //         accountName: const Text('Fast Food'),
      //         accountEmail: const Text('Abbottabad jadoon Plaza'),
      //       ),
      //       ListTile(
      //         title: InkWell(
      //           onTap: () {
      //             // Navigator.push(
      //             //     context,
      //             //     MaterialPageRoute(
      //             //         builder: (context) => const DetailScreen()));
      //           },
      //           child: const Text('Burger'),
      //         ),
      //         leading: const Icon(Icons.calendar_today_outlined),
      //       ),
      //       const ListTile(
      //         title: Text('Shuarma'),
      //         leading: Icon(Icons.wallet),
      //       ),
      //       const ListTile(
      //         title: Text('Paratha Roll'),
      //         leading: Icon(Icons.message_outlined),
      //       ),
      //       const ListTile(
      //         title: Text('Drinks'),
      //         leading: Icon(Icons.monitor_heart),
      //       ),
      //     ],
      //   ),
      // ),


      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Discover Your Best",
          style: TextStyle(
              fontWeight: FontWeight.w600, color: Colors.white, fontSize: 20),
          textAlign: TextAlign.left,
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 50,
          width: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFF303030),
          ),
          child: TextFormField(
            decoration: const InputDecoration(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                hintText: "search meal",
                hintStyle: TextStyle(color: Colors.white54)),
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 200,
          child: ListView.builder(
              itemCount: percent.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                      // width: 300,
                      // height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange,
                        gradient: const LinearGradient(
                          // Use Gradient color
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFFFF6F00),
                            Color(0xFFFFA000),
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisSize: Mi,
                              children: [
                                Text(
                                  '${percent[index].toString()} %',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontSize: 18),
                                ),
                                Text(meslNames[index].toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        fontSize: 14)),
                                //SizedBox(height: 10,),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(
                                      price: price[index].toString(),
                                      imagePath:images[index % images.length].toString() ,
                                 mealName:meslNames[index].toString() ,
                                      percent: percent[index].toString(),
                                      price2: price2[index].toString(),
                                      ProductName: productName[index].toString(), imagePath2: '', priceA1: '', priceA2: '',

                                    )
                                    )
                                    );
                                  },
                                  child: Container(
                                    width: 100,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    child: Center(child: Text(exploreNow[index].toString()
                                    ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                             Container(
                              child:  Image(
                                image: AssetImage(images[index % images.length].toString()),
                                width: 150,
                                height: 150,
                              ),
                            )
                          ],
                        ),
                      )),
                );
              }),
        ),
        SizedBox(height: 25),

        SizedBox(
          height: 58,

          child: ListView.builder(
            itemCount: foodNames.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                     // color: Color(0xFFFF6F00),
                      gradient: const LinearGradient(
                        // Use Gradient color
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFFFF6F00),
                          Color(0xFFFFA000),
                        ],
                      ),
                    ),
                    child: Center(
                        child: Text(
                          '${foodNames[index].toString()}',
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              color: Colors.white),
                        )),
                  ),
                );
              }),
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
            itemCount: menue.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                child: Container(
                  //height: 250,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Color(0xFF424242),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.all(15),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                    "${menue[index].toString()}",
                              style: TextStyle(
                                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500
                            ),
                            ),
                            SizedBox(width: 25,),
                            Icon(Icons.heart_broken,color: Colors.white,)
                          ],
                        ),
                        SizedBox(height: 5,),
                        InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(
                                price: priceA2[index].toString(),
                                imagePath:crashers[index % images.length].toString() ,
                                mealName:familyDeals[index].toString() ,
                                percent: percent[index].toString(),
                                price2: priceA1[index].toString(),
                                ProductName: familyDeals[index].toString(),
                                imagePath2: crashers[index].toString(), priceA1: '', priceA2: '',


                              )
                              )
                              );
                            },
                            child: Image(image: AssetImage(crashers[index % crashers.length].toString() ))),
                        SizedBox(height: 10,),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${priceA2[index].toString()}",
                              style: TextStyle(
                                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold
                            ),
                            ),
                            SizedBox(width: 40,),
                            Icon(Icons.add,color: Colors.white,size: 30,)
                          ],
                        ),
                      ],

                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children:  [
            SizedBox(width: 40,),
            Icon(Icons.home,color: Color(0xFFFF6F00),),
            SizedBox(width: 70,),
            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FavOrders())
                  );
                },
                child: Icon(Icons.heart_broken,color: Colors.white,)),
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
      ]
      ),
    );
  }
}
