import 'package:flutter/material.dart';
import 'package:foodhub/widget/widget_support.dart';

class Foodetails extends StatefulWidget {
  const Foodetails({super.key});

  @override
  State<Foodetails> createState() => _Foodetails();
}

class _Foodetails extends State<Foodetails> {
  int a = 1;
  @override
  Widget build(BuildContext context) {
    double imageSize =
        MediaQuery.of(context).size.width * 0.7; // Adjust size as needed

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Container(
        margin: const EdgeInsets.only(top: 50, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              ),
            ),
            Center(
              child: Column(
                children: [
                  ClipOval(
                    child: Image.asset(
                      "Images/salad.jpg",
                      width: imageSize,
                      height:
                          imageSize, // Keep height equal to width for a perfect circle
                      fit: BoxFit
                          .cover, // Ensures the image covers the entire circular area
                    ),
                  ),
                  const SizedBox(
                      height: 15.0), // Add space between the image and text
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nepali Style",
                            style: AppWidget.HeadLineTextFieldStlye(),
                          ),
                          Text(
                            "Salad with green veggies",
                            style: AppWidget.boldTextFieldStlye(),
                          ),
                        ],
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          if (a > 1) {
                            --a;
                          }

                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        a.toString(),
                        style: AppWidget.SemiBoldTextFieldStlye(),
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          ++a;
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vehicula libero nec felis ornare, nec interdum sem malesuada. Donec commodo dolor vitae libero lacinia, at vehicula turpis sodales.",
                    maxLines: 5,
                    style: AppWidget.LightTextFieldStlye(),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    children: [
                      Text(
                        "Delivery Time",
                        style: AppWidget.LightTextFieldStlye(),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      const Icon(
                        Icons.alarm,
                        color: Colors.red,
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        "20 Min",
                        style: AppWidget.SemiBoldTextFieldStlye(),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total Price",
                              style: AppWidget.SemiBoldTextFieldStlye(),
                            ),
                            Text(
                              "\$28",
                              style: AppWidget.boldTextFieldStlye(),
                            )
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 50,
                              ),
                              const Text(
                                "Add to cart",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: "Poppins"),
                              ),
                              const SizedBox(
                                width: 40.0,
                              ),
                              Container(
                                padding: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
