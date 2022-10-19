import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_svg/svg.dart';
import 'package:furnitureapp/screens/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (() {}),
          icon: SvgPicture.asset(
            "assets/icons/menu.svg",
            height: 20,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/scan.svg",
              height: 24,
            ),
          ),
          Center(child: Text("Scan",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),),
          SizedBox(width: 15.0,)
        ],
      ),
      body: Body(),
    );
  }
}
