import 'package:flutter/material.dart';
import 'package:foodhub/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  bool burger = false, pizza = false, icecream = false, salad = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFE0B2),
      body: Container(
        margin: EdgeInsets.only(
          top: 10.0,
          left: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello Dipsan",
                  style: AppWidget.boldTextFieldStlye(),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Text(
              "Delicious Food",
              style: AppWidget.HeadLineTextFieldStlye(),
            ),
            Text(
              "Discover and get Great Food",
              style: AppWidget.LightTextFieldStlye(),
            ),
            SizedBox(height: 20.0),
            Container(margin: EdgeInsets.only(right: 20), child: showItem()),
            SizedBox(
              height: 20.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipOval(
                              child: Image.asset(
                                "images/salad.jpg",
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text("Veggie Taco  Mash",
                                style: AppWidget.HeadLineTextFieldStlye()),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Fresh and Healthy",
                              style: AppWidget.SemiBoldTextFieldStlye(),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "\$25",
                              style: AppWidget.SemiBoldTextFieldStlye(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    margin: EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipOval(
                              child: Image.asset(
                                "images/salad.jpg",
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text("Veggie Taco  Mash",
                                style: AppWidget.HeadLineTextFieldStlye()),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Fresh and Healthy",
                              style: AppWidget.SemiBoldTextFieldStlye(),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "\$25",
                              style: AppWidget.SemiBoldTextFieldStlye(),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                margin: EdgeInsets.only(right: 20.0),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipOval(
                          child: Image.asset(
                            "images/salad.jpg",
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                "Chicken salad",
                                style: AppWidget.HeadLineTextFieldStlye(),
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                "Fresh salad with cheese and healthy toppings",
                                style: AppWidget.SemiBoldTextFieldStlye(),
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                "\$15",
                                style: AppWidget.SemiBoldTextFieldStlye(),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              icecream = true;
              pizza = false;
              burger = false;
              salad = false;
            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: icecream
                    ? Color.fromARGB(255, 187, 168, 168)
                    : Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.all(5),
              child: Image.asset(
                "images/icecream.jpg",
                height: 70,
                width: 70,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              icecream = false;
              pizza = true;
              burger = false;
              salad = false;
            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color:
                    pizza ? Color.fromARGB(255, 187, 168, 168) : Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.all(5),
              child: Image.asset(
                "images/pizza.jpg",
                height: 70,
                width: 70,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              icecream = false;
              pizza = false;
              burger = false;
              salad = true;
            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color:
                    salad ? Color.fromARGB(255, 187, 168, 168) : Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.all(5),
              child: Image.asset(
                "images/salad.jpg",
                height: 70,
                width: 70,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              icecream = false;
              pizza = false;
              burger = true;
              salad = false;
            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color:
                    burger ? Color.fromARGB(255, 187, 168, 168) : Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.all(5),
              child: Image.asset(
                "images/burger.jpg",
                height: 70,
                width: 70,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
