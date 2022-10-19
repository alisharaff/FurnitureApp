import 'package:flutter/material.dart';

class MyCardTwo extends StatelessWidget {
   final String urlImage;
  final String name;
  final String price;
  VoidCallback onclick;
   MyCardTwo({
    Key? key, required this.urlImage, required this.name, required this.price, required this.onclick
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onclick,
      child: Container(
        width: 145.0,
        decoration: BoxDecoration(
            color: Color.fromARGB(59, 224, 221, 221),
            borderRadius: BorderRadius.circular(30.0)),
        child: AspectRatio(
          aspectRatio: 0.693,
          child: Column(children: <Widget>[
            
            AspectRatio(
              aspectRatio: 1,
              child: FadeInImage.assetNetwork(
                fadeInCurve: Curves.bounceIn,
                placeholder: "assets/spinner.gif",
                image: "$urlImage",
                fit: BoxFit.cover,
              ),
            ),
            Text("$name"),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 25,
              child: Text(
                "\$$price",
                style: TextStyle(color: Color.fromARGB(197, 153, 150, 150)),
              ),
            ),
            Spacer(),
          ]),
        ),
      ),
    );
  }
}
