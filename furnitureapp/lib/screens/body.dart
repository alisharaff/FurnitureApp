import 'package:flutter/material.dart';
import 'package:furnitureapp/general/mysecond_card.dart';
import 'package:furnitureapp/screens/detail_screen.dart';
import '../general/myfirst_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 25),
              child: Text(
                "Browse by Categories",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  MyCard(
                      urlImage: "https://i.imgur.com/JqKDdxj.png",
                      name: "Armchair",
                      info: "100+ product"),
                  MyCard(
                      urlImage: "https://i.imgur.com/Mn7M3YV.png",
                      name: "IKEAchair",
                      info: "90+ product"),
                  MyCard(
                      urlImage: "https://i.imgur.com/JqBDr4s.png",
                      name: "Armchair",
                      info: "50+ product"),
                  MyCard(
                      urlImage: "https://i.imgur.com/WF5PsZj.png",
                      name: "YellowArm",
                      info: "100+ product"),
                  MyCard(
                      urlImage: "https://i.imgur.com/nIHmDvi.png",
                      name: "Armchair",
                      info: "80+ product"),
                ],
              ),
            ),
            Divider(height: 5),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Recommands For You",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.639,
                ),
                children: <Widget>[
                  MyCardTwo(
                    urlImage: "https://i.imgur.com/sI4GvE6.png",
                    name: "Armchair",
                    price: "150",
                    onclick: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                    urlImage: "https://i.imgur.com/sI4GvE6.png",
                                    name: "Armchair",
                                    Price: "150",
                                  )));
                    },
                  ),
                  MyCardTwo(
                    urlImage: "https://i.imgur.com/HUf1kWu.png",
                    name: "Sofa",
                    price: "120",
                    onclick: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                    urlImage: "https://i.imgur.com/HUf1kWu.png",
                                    name: "Sofa",
                                    Price: "120",
                                  )));
                    },
                  ),
                  MyCardTwo(
                    urlImage: "https://i.imgur.com/3eLrKqJ.png",
                    name: "Tietonchair",
                    price: "90",
                    onclick: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                    urlImage: "https://i.imgur.com/3eLrKqJ.png",
                                    name: "Tietonchair",
                                    Price: "90",
                                  )));
                    },
                  ),
                  MyCardTwo(
                    urlImage: "https://i.imgur.com/WF5PsZj.png",
                    name: "Yellowchair",
                    price: "110",
                    onclick: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                    urlImage: "https://i.imgur.com/WF5PsZj.png",
                                    name: "Yellowchair",
                                    Price: "110",
                                  )));
                    },
                  ),
                  MyCardTwo(
                    urlImage: "https://i.imgur.com/nIHmDvi.png",
                    name: "Modernchair",
                    price: "80",
                    onclick: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                    urlImage: "https://i.imgur.com/nIHmDvi.png",
                                    name: "Modernchair",
                                    Price: "80",
                                  )));
                    },
                  ),
                  MyCardTwo(
                    urlImage: "https://i.imgur.com/JqBDr4s.png",
                    name: "YellowTieton",
                    price: "120",
                    onclick: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                    name: "YellowTieton",
                                    Price: "120",
                                    urlImage: "https://i.imgur.com/JqBDr4s.png",
                                  )));
                    },
                  ),
                ],
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
