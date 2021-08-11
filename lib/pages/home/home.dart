import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // EdgeInsets.fromLTRB(0, 5, 10, 10)
  Widget yourStories() {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 100),
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 5, 10, 10),
        child: Column(
          children: [
            SizedBox(
              width: 60,
              height: 60,
              child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/35357971?v=4"),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(
                            FontAwesomeIcons.plus,
                            color: Colors.white,
                            size: 10,
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 8,
            ),
            Flexible(
              child: Text(
                "Your Story",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget otherStories() {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 100),
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 5, 10, 10),
        child: Column(
          children: [
            SizedBox(
              width: 65,
              height: 65,
              child: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(50)),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/35357971?v=4"),
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Flexible(
              child: Text(
                "_aguskkhaer",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: double.infinity,
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              if (index == 0) {
                return yourStories();
              } else {
                return otherStories();
              }
            },
          ),
        ),
        Flexible(
          flex: 2,
          child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // post name, more button
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 50,
                            height: 50,
                            child: Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/35357971?v=4",
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "_aguskkhaer",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text("Agus Kurniadin Khaer")
                                ],
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_vert),
                          )
                        ],
                      ),
                    ),

                    // image
                    SizedBox(
                      height: 250,
                      width: double.infinity,
                      child: Image.network(
                        "https://www.pesisir.net/wp-content/uploads/2020/06/Alamat-Rute-Menuju-Lokasi-Pantai-Teluk-Penyu.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),

                    // like, comment, dm, save
                    Container(
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(FontAwesomeIcons.heart),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(FontAwesomeIcons.comment),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(FontAwesomeIcons.paperPlane),
                          ),
                          Expanded(
                            child: SizedBox(),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(FontAwesomeIcons.bookmark),
                          ),
                        ],
                      ),
                    ),

                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 15, right: 10),
                          child: SizedBox(
                            width: 25,
                            height: 25,
                            child: CircleAvatar(
                              backgroundColor: Colors.black12,
                              backgroundImage: NetworkImage(
                                "https://cdn4.iconfinder.com/data/icons/small-n-flat/24/user-alt-512.png",
                              ),
                            ),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: const <TextSpan>[
                              TextSpan(
                                  text: 'Liked by ',
                                  style: TextStyle(fontSize: 14)),
                              TextSpan(
                                  text: ' Dhika Risky ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14)),
                              TextSpan(
                                  text: 'and ', style: TextStyle(fontSize: 14)),
                              TextSpan(
                                  text: '5 others',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14)),
                            ],
                          ),
                        )
                      ],
                    ),

                    Container(
                      margin: const EdgeInsets.only(left: 15),
                      padding: EdgeInsets.only(right: 40),
                      child: RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: const <TextSpan>[
                            TextSpan(
                              text: '_aguskkhaer ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text:
                                  'di pantai enaknya makan siomay, yuk lah kesini ke pantai teluk penyu',
                            ),
                          ],
                        ),
                      ),
                    ),

                    // comments
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://avatars.githubusercontent.com/u/35357971?v=4",
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextField(
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Add a comment...",
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        "2 Hours ago. See Translation",
                        style: TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
