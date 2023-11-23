import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final String? percent;
  final String mealName;
  // final String mealDetail;
  final String imagePath;
  final String price;
  final String? price2;
  final String ProductName;
  final String priceA1;
  final String priceA2;

  // Another menue

  final String? imagePath2;

  const DetailScreen(
      {super.key,
       this.percent,
      required this.mealName,
      // required this.mealDetail,
      required this.imagePath, required this.price, required this.price2, required this.ProductName, required this.imagePath2, required this.priceA1, required this.priceA2});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        // appBar: AppBar(
        //   backgroundColor: Color(0xFFFF6F00),
        //   title: Center(child: Text("Burger",)),
        // ),
        body: Column(
          children: [
            Container(
              height: 280,
              width: 400,
              decoration: const BoxDecoration(
                  // color: Colors.orangeAccent
                  ),
              child:  Image(
                // height: 100,
                // width: 200,
                image: AssetImage(widget.imagePath),
              ),
            ),
            Container(
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.vertical(top: Radius.circular(20),),color: Colors.yellow
              // ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      widget.mealName,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                     Row(
                      children: [
                        Text(
                          "Rs ${widget.price}",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.lineThrough,
                              decorationColor: Colors.red),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Rs ${widget.price2}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        Text(
                          "4.4",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                     Text(
                      "${widget.ProductName}",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Indulge in the Kabab Chicken Deluxe Burger – a savory fusion of grilled chicken,"
                      " flavorful kababs, and melted cheddar on a soft sesame bun. Paired with golden fries and a chilled drink,"
                      " this combo promises a delightful feast delivered to your doorstep for just Rs 600. Elevate your burger experience "
                      "with optional add-ons like extra cheese or a complete meal upgrade. a savory fusion of grilled chicken,"
                      " flavorful kababs, and melted cheddar on a soft sesame bun. Paired with golden fries and a chilled drink,"
                      " this combo promises a delightful feast delivered to your doorstep for just 10.99. Elevate your burger experience "
                      "with optional add-ons like extra cheese or a complete meal upgrade.",
                      maxLines: 5,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (count > 0) {
                                print(count--);
                              } else {
                                print("0");
                              }
                              // count--;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 30, horizontal: 10),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white54,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Image(
                                      image: AssetImage("images/minus1.png")),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 10),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.white54,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.all(6),
                                child: Text(
                                  count.toString(),
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              count++;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 30, horizontal: 10),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Padding(
                                    padding: const EdgeInsets.all(6),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.black,
                                      size: 40,
                                    )),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 10),
                          child: Container(
                            height: 50,
                            width: 120,
                            decoration: BoxDecoration(
                              // color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFFFF6F00),
                                  Color(0xFFFFA000),
                                ],
                              ),
                            ),
                            child: Center(
                              child: Padding(
                                  padding: const EdgeInsets.all(6),
                                  child: Text(
                                    "Buy Now",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
