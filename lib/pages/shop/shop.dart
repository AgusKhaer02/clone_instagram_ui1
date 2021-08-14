import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          title: Text(
            "Shop",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          actions: [
            IconButton(
              icon: Icon(
                FontAwesomeIcons.bookmark,
                color: Colors.black87,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.bars,
                color: Colors.black87,
              ),
              onPressed: () {},
            ),
          ],
          bottom: AppBar(
            backgroundColor: Colors.white,
            shadowColor: Colors.transparent,
            flexibleSpace: Container(
              width: double.infinity,
              height: 45,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xFFEFEFEF),
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    FontAwesomeIcons.search,
                    size: 18,
                    color: Colors.black,
                  ),
                  hintText: "Search",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 10),
              height: 45,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                    margin: (index == 0)
                        ? EdgeInsets.only(left: 20)
                        : EdgeInsets.only(left: 7),
                    child: Text(
                      "Shops",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black12, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 4
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Image.network(
                    "https://i.pinimg.com/originals/d1/9f/9b/d19f9b027ac5261ebe468ef122d0b86a.jpg",
                    width: 100,
                    height: 100,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
