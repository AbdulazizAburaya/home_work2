import 'package:flutter/material.dart';

class MealsWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MealsWidgetState();
  }
}




class MealsWidgetState extends State<StatefulWidget> {
  int quantity = 1;

  void incrementQuantity() {
    if (quantity < 10) {
      setState(() {
        quantity++;
      });
    }
  }

  void decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0)),
              child: Image.network(
                  "https://images.unsplash.com/photo-1604382354936-07c5d9983bd3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
                  width: double.infinity),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "بيتزا بالخضار",
              style: TextStyle(
                  decorationColor: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            Text("بيتزا بالخضار مميزة"),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "21.00" + " " + " د.ا",
                    style: TextStyle(
                        decorationColor: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  Container(
                    height: 40,
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              incrementQuantity();
                            },
                            icon: Text("+",
                                style: TextStyle(
                                    color: Colors.lightBlue, fontSize: 20))),
                        Text("$quantity",
                            style: TextStyle(
                                decorationColor: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                        IconButton(
                            onPressed: () {
                              decrementQuantity();
                            },
                            icon: Text("-",
                                style: TextStyle(
                                    color: Colors.lightBlue, fontSize: 20)))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.grey,
              height: 5,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text("اختيارك من الحجم:",
                        style: TextStyle(
                            decorationColor: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    Text("(اختياري)",
                        style: TextStyle(
                            decorationColor: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15))
                  ],
                ),
                Text("اختر من القائمة",
                    style: TextStyle(
                        decorationColor: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                Row(
                  children: [
                    Text("صنف 1",
                        style: TextStyle(
                            decorationColor: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                            
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
