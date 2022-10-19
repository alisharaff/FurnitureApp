// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
int numCount = 0;
class DetailsScreen extends StatefulWidget {
  final String urlImage;
   final String name;
  final String Price;
  
  const DetailsScreen({Key? key, required this.urlImage, required this.name, required this.Price}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 224, 221, 221),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: SvgPicture.asset("assets/icons/arrow-long-left.svg")),
        actions: <Widget>[
          Stack(
            children: [
              
              IconButton(
                  onPressed: () {}, icon: SvgPicture.asset("assets/icons/bag.svg")),
                   Positioned(
                    top: 23,
                    left: 25,
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 13,
                      child: Center(child: Text("$numCount",style: TextStyle(color: Colors.white,fontSize: 20),)))),
            ],
          ),
             
          SizedBox(
            width: 20.0,
          )
        ],
      ),
      body: BodyProduct(urlImage: "${widget.urlImage}", Price: '${widget.Price}', name: '${widget.name}',),
    );
  }
}

class BodyProduct extends StatefulWidget {
 final String urlImage;
  final String name;
  final String Price;
  const BodyProduct({
    Key? key, required this.urlImage, required this.name, required this.Price,
  }) : super(key: key);

  @override
  State<BodyProduct> createState() => _BodyProductState();
}

class _BodyProductState extends State<BodyProduct> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height: 800,
        child: Stack(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SideBox(Price: '${widget.Price}',name: "${widget.name}",),
            Positioned(top: 370, left: 0, right: 0, child: UnderBox()),
            Positioned(
              top: 60,
              right: -70,
              child: Image.network(
                "${widget.urlImage}",
                height: 378,
                width: 364,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UnderBox extends StatefulWidget {
  const UnderBox({
    Key? key,
  }) : super(key: key);

  @override
  State<UnderBox> createState() => _UnderBoxState();
}

class _UnderBoxState extends State<UnderBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 430),
      padding: EdgeInsets.only(top: 90, left: 20, right: 20),
      height: 500.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "titleaalkls",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work.",
            style:
                TextStyle(color: Color.fromARGB(226, 78, 74, 74), height: 1.5),
          ),
          SizedBox(
            height: 30.0,
          ),
          SizedBox(
            //    borderRadius: BorderRadius.all(Radius.circular(200)
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(166, 75, 27, 114)),
              ),
              onPressed: (() {
                setState(() {
                  numCount++;
                });
              }),
              child: Text(
                "Add to Cart",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SideBox extends StatefulWidget {
  final String name;
  final String Price;
  const SideBox({
    Key? key, required this.name, required this.Price,
  }) : super(key: key);

  @override
  State<SideBox> createState() => _SideBoxState();
}

class _SideBoxState extends State<SideBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 375,
      width: 150,
      color: Color.fromARGB(255, 224, 221, 221),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "CHAIR",
            style: TextStyle(
              color: Color.fromARGB(255, 139, 137, 137),
            ),
          ),
          Text(
            "${widget.name}".toUpperCase(),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 68, 67, 67),
            ),
          ),
          Text(
            "Tieton Armchair",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 68, 67, 67),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Form",
            style: TextStyle(
              color: Color.fromARGB(255, 68, 67, 67),
            ),
          ),
          Text(
            "\$${widget.Price}",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 68, 67, 67),
              height: 1.4,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Available Colors",
            style: TextStyle(
              color: Color.fromARGB(255, 68, 67, 67),
            ),
          ),
          Row(
            children: [
              CheckBox(
                color: Color(0xFF7BA275),
                isActive: true,
              ),
              CheckBox(
                color:Colors.grey,
                isActive: false,
              ),
              CheckBox(
                color: Color.fromARGB(255, 45, 53, 43),
                isActive: false,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CheckBox extends StatelessWidget {
  Color color;
  bool isActive;
  CheckBox({
    Key? key,
    required this.color,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        margin: EdgeInsets.only(top: 10),
        padding: const EdgeInsets.all(5),
        height: 24.0,
        width: 24.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(6.0),
        ),
        child:
            isActive ? SvgPicture.asset("assets/icons/check.svg") : SizedBox(),
      ),
    );
  }
}
