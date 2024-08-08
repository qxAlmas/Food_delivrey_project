// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FoodDetails extends StatelessWidget {
  final String foodItem;
  final String imagePath;
  FoodDetails({required this.foodItem, required this.imagePath});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
        ),
        body: PageView.builder(
            itemCount: foodItem.length,
            itemBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.all(8),
                  child: SingleChildScrollView(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      imagePath, // Get the correct image
                                      fit: BoxFit.cover,
                                      height: 250,
                                      width:
                                          400, // Adjusted height for better display
                                    ),
                                  ),
                                  SizedBox(height: 60),
                                  Text(
                                    foodItem,
                                    // Get the correct food item name
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(height: 10.0),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            height: 35.0,
                                            child: Center(
                                                child: Text(
                                              "\SAR 30",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Color(0xFF5E6166),
                                                  fontWeight: FontWeight.w500),
                                            ))),
                                        Container(
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: <Widget>[
                                                Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        100),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        100),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        100),
                                                                topRight: Radius
                                                                    .circular(
                                                                        100)),
                                                        color: Colors.red),
                                                    child: Row(
                                                      children: <Widget>[
                                                        IconButton(
                                                            iconSize: 14,
                                                            icon: Icon(
                                                              Icons.remove,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            onPressed: () {}),
                                                        Text(
                                                          "0",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        ),
                                                        IconButton(
                                                            iconSize: 14,
                                                            icon: Icon(
                                                                Icons.add,
                                                                color: Colors
                                                                    .white),
                                                            onPressed: () {}),
                                                      ],
                                                    )),
                                                Text(
                                                  'Add',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ))
                                      ]),
                                ]))
                      ])));
            }));
  }
}
