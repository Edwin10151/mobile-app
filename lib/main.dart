import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  SpeedDial buildSpeedDial() {
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 28.0),
      backgroundColor: Colors.blue,
      visible: true,
      curve: Curves.bounceInOut,
      children: [
        SpeedDialChild(
          child: Icon(Icons.smart_toy, color: Colors.white),
          backgroundColor: Colors.blue,
          onTap: () => print('PeachAI Call'),
          label: 'PeachAI Call',
          labelStyle:
              TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
        SpeedDialChild(
          child: Icon(Icons.person, color: Colors.white),
          backgroundColor: Colors.blue,
          onTap: () => print('Select Tenant'),
          label: 'Select Tenant',
          labelStyle:
              TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
        floatingActionButton: buildSpeedDial(),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                Hero(
                  tag: "zoom",
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: const Image(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/roompicture/room1pic.jpg"),
                      )),
                ),
                SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 3,
                      child: Text(
                        "Anyaman Residence",
                        style: textTheme.headline4!.apply(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "\$${1000}",
                              style: textTheme.headline5,
                            ),
                            Text(
                              "/ Month",
                              style: textTheme.bodyText1,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.bed,
                              size: 16,
                            ),
                            Text("3")
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.shower,
                              size: 16,
                            ),
                            Text("2")
                          ],
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    //   child: Container(
                    //     height: 30,
                    //     width: 60,
                    //     decoration: BoxDecoration(
                    //       color: Colors.grey[200],
                    //       borderRadius: BorderRadius.circular(8),
                    //     ),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //       children: [
                    //         Icon(
                    //           size: 16,
                    //         ),
                    //         Text("2")
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 12,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Image(
                            width: 65,
                            fit: BoxFit.cover,
                            image: AssetImage('assets/profile.png'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Owner",
                              style: textTheme.caption,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "GoSleep",
                              style: textTheme.subtitle1,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "About",
                  style: textTheme.headline5,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Just a 7 minutes walk from the University of ABCDEFG, this is a private apartment offers everything you need to enjoy your study journey in college or university. The living room is the perfect place to unwind after a day of studying, with two soft and high quality couches, a giant stuffed bean bag, and a wall mounted with flat-screen with access to hundreds of channels. The apartment has a spacious, fully equipped kitchen with artistic touches that'll make you feel right at home and plenty of stainless cookware to help you prepare mouth watering food. ",
                  style: textTheme.subtitle1!.apply(
                    color: Colors.black45,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "More Photos",
                  style: textTheme.headline5,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: RoomData.photoCollections.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Image(
                            height: 220,
                            width: 120,
                            fit: BoxFit.cover,
                            image: AssetImage(RoomData.photoCollections[index]),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ]),
            ),
          ),
        ));
  }
}

class RoomData {
  static List<String> photoCollections = [
    "assets/roompicture/sample1.jpg",
    "assets/roompicture/sample2.jpg",
    "assets/roompicture/sample3.jpg",
    "assets/roompicture/sample4.jpg",
  ];
}
