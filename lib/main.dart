import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Disney Sea'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var isPressed = false;

  Color favColor = Colors.white;

  @override
  void initState() {
    super.initState();
    isPressed = false;
    favColor = Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    double smallImages = MediaQuery.of(context).size.width * 0.25;
    double paddingSize = 3.0;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,
            style: GoogleFonts.lato(
                fontStyle: FontStyle.normal, fontWeight: FontWeight.bold)),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [const Color(0xFF00DBff), const Color(0xFFffffff)],
                  begin: new Alignment(1, 1),
                  end: new Alignment(0, 0)),
            ),
            child: Column(children: <Widget>[
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.black,
                  width: double.infinity,
                  height: 200,
                  child: Image(
                    image: NetworkImage(
                        "https://www.japan-guide.com/g3/3016_sea_01.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Flexible(
                child: Row(
                  children: <Widget>[
                    Flexible(
                      child: Container(
                          height: smallImages,
                          width: smallImages,
                          padding: EdgeInsets.all(paddingSize),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://preparetravelplans.com/wp-content/uploads/2019/05/Tokyo-DisneySea-Best-Rides-and-Guide.jpg',
                              fit: BoxFit.cover,
                            ),
                          )),
                    ),
                    Flexible(
                      child: Container(
                          height: smallImages,
                          width: smallImages,
                          padding: EdgeInsets.all(paddingSize),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://thebeatofadventure.com/wp-content/uploads/2018/01/ToyStoryMania_blog.jpg',
                              fit: BoxFit.cover,
                            ),
                          )),
                    ),
                    Flexible(
                      child: Container(
                          height: smallImages,
                          width: smallImages,
                          padding: EdgeInsets.all(paddingSize),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://cdn1.parksmedia.wdprapps.disney.com/media/blog/wp-content/uploads/2011/09/Tokyo3LARGEFINAL.jpg',
                              fit: BoxFit.cover,
                            ),
                          )),
                    ),
                    Flexible(
                      child: Container(
                          height: smallImages,
                          width: smallImages,
                          padding: EdgeInsets.all(paddingSize),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://www.infojepang.net/wp-content/uploads/Tokyo-Disneysea.jpg',
                              fit: BoxFit.cover,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 5,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 5.0),
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        "Where Adventure and Imagination Set Sail",
                        style: GoogleFonts.mouseMemoirs(
                            fontWeight: FontWeight.bold, fontSize: 25.0),
                      ),
                    ),
                    Flexible(
                      flex: 10,
                      child: ListView(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        children: <Widget>[
                          Text(
                            "\n Tokyo DisneySea is a theme park at the Tokyo Disney Resort located in Urayasu, Chiba Prefecture, Japan, just outside Tokyo. It opened on 4 September 2001, at a cost of 335 billion yen. The Oriental Land Company owns the park, and licenses Disney characters and themes from The Walt Disney Company. \n \n Plans for a second Disney park in Tokyo were first conceived in 1987. Initially, these plans included a park similar to Disney's Hollywood Studios (then Disney-MGM Studios), to be called Disney Hollywood Studio Theme Park at Tokyo Disneyland. This idea was later scrapped in 1992. Upon opening, Tokyo DisneySea became the ninth park of the twelve worldwide Disney theme parks to open. It has an overall nautical exploration theme. \n \n While suitable for all ages, Tokyo DisneySea was designed to specifically also appeal to a more grown up audience. The park addresses the Japanese visitors' strong interest in good food by providing a wider selection of table service restaurants than Tokyo Disneyland and by serving alcoholic beverages, which are unavailable at the neighboring park.\n",
                            style:
                                GoogleFonts.lato(fontStyle: FontStyle.normal),
                          ),
                        ],
                        scrollDirection: Axis.vertical,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(top: 70.0, right: 0.0),
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            setState(() {
              if (isPressed) {
                isPressed = false;
                favColor = Colors.grey;
                print("WHAT" + isPressed.toString());
              } else {
                isPressed = true;
                favColor = Colors.red;
                print("WHAT" + isPressed.toString());
              }
            });
          },
          child: Icon(Icons.favorite, color: favColor),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
