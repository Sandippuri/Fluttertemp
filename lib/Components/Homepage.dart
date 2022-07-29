import 'package:flutter/material.dart';
import 'package:old_image_restoration/Components/Carousel.dart';

enum MenuItems { help, smarter, selfStarter, tradingCharter }

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: Container(
          padding: EdgeInsets.all(5),
          child: Image(
            image: AssetImage('../lib/images/logo.png'),
            fit: BoxFit.fitHeight,
          ),
        ),
        actions: [
          // IconButton(
          //   icon: Icon(Icons.more_vert_sharp),
          //   onPressed: () => {print("pressed")},
          // )
          PopupMenuButton<MenuItems>(
            onSelected: (MenuItems result) {
              setState(() {
                // _selection = result;
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<MenuItems>>[
              const PopupMenuItem<MenuItems>(
                value: MenuItems.help,
                child: ListTile(
                  leading: Icon(Icons.help_center),
                  title: Text("Help"),
                ),
              ),
              const PopupMenuItem<MenuItems>(
                value: MenuItems.smarter,
                child: ListTile(
                  leading: Icon(Icons.book_sharp),
                  title: Text("Tutorial"),
                ),
              ),
              const PopupMenuItem<MenuItems>(
                value: MenuItems.selfStarter,
                child: ListTile(
                  leading: Icon(Icons.share),
                  title: Text("Share"),
                ),
              ),
              const PopupMenuItem<MenuItems>(
                value: MenuItems.tradingCharter,
                child: ListTile(
                  leading: Icon(Icons.file_copy),
                  title: Text("Terms & Conditions"),
                ),
              ),
            ],
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: WallpaperCarousel(),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Recent",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 2,
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}
