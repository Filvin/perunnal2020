import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PresudenthiPage extends StatelessWidget {
  static const String routeName = "/presudenthi";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        // Title
        title: Text("Presudenthi"),
        // App Bar background color
        backgroundColor: Colors.indigo,
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        children: <Widget>[
          ContactTile("assets/images/sunny1.jpeg", "Sunny Leone", 0xFFFF5722, context),
          ContactTile("assets/images/sunny2.jpeg", "Sunny Leone", 0xFFFF5722, context),
          ContactTile("assets/images/sunny3.jpeg", "Sunny Leone", 0xFFFF5722, context),
          ContactTile("assets/images/sunny2.jpeg", "Sunny Leone", 0xFFFF5722, context),
          ContactTile("assets/images/sunny4.jpeg", "Sunny Leone", 0xFFFF5722, context),
          ContactTile("assets/images/sunny1.jpeg", "Sunny Leone", 0xFFFF5722, context),
          ContactTile("assets/images/sunny3.jpeg", "Sunny Leone", 0xFFFF5722, context),
          ContactTile("assets/images/Filvin2.jpeg", "Filvin George", 0xFFFF5722, context),
          ContactTile("assets/images/sunny2.jpeg", "Sunny Leone", 0xFFFF5722, context),
          ContactTile("assets/images/sunny1.jpeg", "Sunny Leone", 0xFFFF5722, context),
          ContactTile("assets/images/sunny3.jpeg", "Sunny Leone", 0xFFFF5722, context),
          ContactTile("assets/images/sunny1.jpeg", "Sunny Leone", 0xFFFF5722, context),
        ],
        staggeredTiles: [
          StaggeredTile.extent(1, 100),
          StaggeredTile.extent(1, 100),
          StaggeredTile.extent(1, 100),
          StaggeredTile.extent(1, 100),
          StaggeredTile.extent(1, 100),
          StaggeredTile.extent(1, 100),
          StaggeredTile.extent(1, 100),
          StaggeredTile.extent(1, 100),
          StaggeredTile.extent(1, 100),
          StaggeredTile.extent(1, 100),
          StaggeredTile.extent(1, 100),
          StaggeredTile.extent(1, 100),
          StaggeredTile.extent(1, 100),
          StaggeredTile.extent(1, 100),
          StaggeredTile.extent(1, 100),
          StaggeredTile.extent(1, 100),
          StaggeredTile.extent(1, 100),
          StaggeredTile.extent(1, 100),
          StaggeredTile.extent(1, 100),
          StaggeredTile.extent(1, 100),
          StaggeredTile.extent(1, 100),
          StaggeredTile.extent(1, 100),
        ],
      ),
    );
  }
}

Material ContactTile(String image, String heading, int color, context) {
  Size size = MediaQuery.of(context).size;
  return Material(
      color: Colors.white,
      elevation: 10.0,
      shadowColor: Color(0xFFD7CCC8),
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
          child: Stack(children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.fill,
              width: size.width,
              height: size.height,
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Material(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(5.0),
                  child: Text("  " + heading+ "  ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          fontFamily: 'DancingScript',
                          color: Colors.white)),
                ),
              ],
            ),
          ],
        )
      ])));
}
