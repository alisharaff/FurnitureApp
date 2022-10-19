import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String urlImage;
  final String name;
  final String info;

  const MyCard({
    Key? key,
    required this.urlImage,
    required this.name,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 205.0,
        child: AspectRatio(
          aspectRatio: 0.83,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1.025,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(59, 224, 221, 221),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100.0),
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0)),
                  ),
                  padding: EdgeInsets.all(25.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("$name"),
                        SizedBox(
                          height: 10.0,
                        ),
                        SizedBox(
                          height: 25,
                          child: Text(
                            "$info",
                            style: TextStyle(
                                color: Color.fromARGB(197, 153, 150, 150)),
                          ),
                        )
                      ]),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: FadeInImage.assetNetwork(
                    placeholder: "assets/spinner.gif", image: "$urlImage"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}