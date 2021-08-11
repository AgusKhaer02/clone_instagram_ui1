import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui1/pages/home/home.dart';
import 'package:instagram_ui1/pages/profile/profile.dart';
import 'package:instagram_ui1/pages/reel/reel.dart';
import 'package:instagram_ui1/pages/search/search.dart';
import 'package:instagram_ui1/pages/shop/shop.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Your title app",
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    setState(() {
      this._tabController = new TabController(length: 5, vsync: this);
    });
  }

  @override
  void dispose() {
    this._tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/images/instagram_text.png",
          width: 110,
          height: 50,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.plusSquare,
              color: Colors.black87,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.heart,
              color: Colors.black87,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.paperPlane,
              color: Colors.black87,
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: TabBarView(
          controller: _tabController,
          children: [Home(), Search(), Reel(), Shop(), Profile()],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 1.5)]),
        child: TabBar(
          indicator: BoxDecoration(),
          controller: this._tabController,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black38,
          tabs: [
            Tab(
              icon: FaIcon(FontAwesomeIcons.home),
            ),
            Tab(
              icon: FaIcon(FontAwesomeIcons.search),
            ),
            Tab(
              icon: FaIcon(FontAwesomeIcons.video),
            ),
            Tab(
              icon: FaIcon(FontAwesomeIcons.shoppingBag),
            ),
            Tab(
              icon: FaIcon(FontAwesomeIcons.user),
            ),
          ],
        ),
      ),
    );
  }
}
