import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dashboard extends StatelessWidget {
  var height, width;

  List imgData = [
    "images/broker.png",
    "images/rent.png",
    "images/room.png",
    "images/house.png",
    "images/payment-method.png",
  ];

  List titles = [
    "Profil Pemilik",
    "Kos",
    "Kamar",
    "Penyewa",
    "Pembayaran",
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.indigo,
          height: ,
          width: ,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.indigo,
                ),            
                height: height * 0.25,
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 35,
                      left: 15,
                      right: 15,
        
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      InkWell(
                        onTap: (){},
                        child: Icon(
                          Icons.sort,
                          color: Colors.white,
                          size: 40),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          image: AssetImage("images/user.png")
                        ),
                      )
                    ],),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 15,
                      right: 15,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dashboard",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),)
                        ],
                      ),
                    ),
                  ),
                ],),
              ),
              SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30)
                      topRight: Radius.circular(30)
                    )
                  ),            
                 // height: height,
                  width: width,
                 padding: EdgeInsets.only(bottom: 10),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.1,
                      mainAxisSpacing: 25,
                    ),
                    crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: imgData.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 1,
                              blurRadius: 6,
                            )
                          ]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(imgData[index]),
                            width: 100,
                            Text(titles[index],
                            style: TextStyle(
                              fontSize: 20,
                              FontWeight: FontWeight.bold,
                            ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}