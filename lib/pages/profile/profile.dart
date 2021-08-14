import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          title: Text(
            "_aguskhaer",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.plusSquare,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.bars,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 25),
                    width: 90,
                    height: 90,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://avatars.githubusercontent.com/u/35357971?v=4"),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "46",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Posts",
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "366",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Followers",
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "857",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Following",
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Agus Kurniadin Khaer",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Hanc quoque iucunditatem,",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Text(
                                "Edit Profile",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              padding: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.black26)),
                            ),
                          ),
                          Container(
                            child: Icon(FontAwesomeIcons.angleDown),
                            padding:
                                EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                            margin: EdgeInsets.only(left: 7, right: 14),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.black26)),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        width: double.infinity,
                        height: 130,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 15,
                          itemBuilder: (context, index) {
                            return ConstrainedBox(
                              constraints: BoxConstraints(maxWidth: 100),
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0, 5, 10, 10),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: 80,
                                      height: 80,
                                      child: Container(
                                        padding: EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            border:
                                                Border.all(color: Colors.black38)),
                                        child: CircleAvatar(
                                          backgroundImage: NetworkImage(
                                            "https://avatars.githubusercontent.com/u/35357971?v=4",
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Flexible(
                                      child: Text(
                                        "Yogyakarta",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: TabBar(
                          indicatorColor: Colors.black,
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.black38,
                          tabs: [
                            Tab(
                              icon: Icon(
                                FontAwesomeIcons.th,
                              ),
                            ),
                            Tab(
                              icon: Icon(
                                FontAwesomeIcons.userTag,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(right: 15),
                          child: TabBarView(
                            children: [
                              GridView.builder(
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

                              GridView.builder(
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
                            ],

                          ),
                        ),
                      )
                      
                      
                      // CustomNavigationProfile(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}