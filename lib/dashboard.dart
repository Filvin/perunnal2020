import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

Material MyTiles(IconData icon, String heading, int color) {
  return Material(
    color: Colors.white,
    elevation: 15.0,
    shadowColor: Color(0xFFD7CCC8),
    borderRadius: BorderRadius.circular(24.0),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Text
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    heading,
                    style: TextStyle(
                        color: new Color(color),
                        fontSize: 20,
                        fontFamily: 'Lobster'),
                  ),
                ),
                Material(
                  color: new Color(color),
                  borderRadius: BorderRadius.circular(24.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(
                      icon,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                )
                //Icon
              ],
            )
          ],
        ),
      ),
    ),
  );
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Perunnal 2020',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
//      body: Container(
//          child: FlutterYoutubeView(
//              onViewCreated: _onYoutubeCreated,
//              listener: this,
//              scaleMode: YoutubeScaleMode.none, // <option> fitWidth, fitHeight
//              params: YoutubeParam(
//                  videoId: 'gcj2RUWQZ60',
//                  showUI: false,
//                  startSeconds: 0.0, // <option>
//                  autoPlay: false) // <option>
//              )),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        children: <Widget>[
          MyTiles(Icons.live_tv, "Watch Live!", 0xFFFF5722),
          MyTiles(Icons.content_paste, "Schedule", 0xFFFF9800),
          MyTiles(Icons.people, "Presudenthi", 0xFF2979FF),
          MyTiles(Icons.camera, "Media", 0xFF009688),
          MyTiles(Icons.add_alert, "Alerts!", 0xFF40C4FF),
          MyTiles(Icons.call, "Contact Us", 0xFF4CAF50)
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 120),
          StaggeredTile.extent(1, 150),
          StaggeredTile.extent(1, 150),
          StaggeredTile.extent(1, 150),
          StaggeredTile.extent(1, 150),
          StaggeredTile.extent(2, 120),
        ],
      ),
    );
  }
}
