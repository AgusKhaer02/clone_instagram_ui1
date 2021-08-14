import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
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
        body: StaggeredGridView.countBuilder(
          crossAxisCount: 3,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Image.network(
              "http://neeba.agency/wp-content/uploads/2016/09/mountains-300x300.jpeg",
            );
          },
          staggeredTileBuilder: (index) {
            return StaggeredTile.count(
                (index % 7 == 0) ? 2 : 1, (index % 7 == 0) ? 2 : 1);
          },
          mainAxisSpacing: 3.0,
          crossAxisSpacing: 3.0,
        ),
      ),
    );
  }
}
