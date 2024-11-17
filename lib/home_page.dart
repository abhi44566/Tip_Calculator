import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});
  @override
  State<Home_Page> createState() => _Home_PageState();
}
class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F3F4),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            SafeArea(
              child: Expanded(flex: 4, child: TextTipField1()),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(flex: 5, child: TotalPersonField2()),
            SizedBox(
              height: 25,
            ),
            Expanded(flex: 2, child: TextFiedl3()),
            SizedBox(
              height: 25,
            ),
            Expanded(
                flex: 3,
                child: Button4()),
            SizedBox(
              height: 25,
            ),

            Expanded(
                flex: 3,
                child: Container(
                  child: Button5()
                )),
          ],
        ),
      ),
    );
  }

  Widget TextTipField1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/icon/hat.png",
          height: 65,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(TextSpan(
                text: "Mr",
                style: TextStyle(fontWeight: FontWeight.w600),
                children: [
                  TextSpan(
                      text: "TIP",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 18))
                ])),
            Text(
              "Calculator",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            )
          ],
        )
      ],
    );
  }

  Widget TotalPersonField2() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text.rich(TextSpan(
                text: "Total p/Person",
                style: TextStyle(fontWeight: FontWeight.w600),
                children: [])),
            Text(
              "\$OOO",
              style: TextStyle(fontSize: 29, fontWeight: FontWeight.w900),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total bill",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
                Text(
                  "Total Tip",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$000",
                  style: TextStyle(
                      color: Color(0xff03C9B0),
                      fontWeight: FontWeight.w800,
                      fontSize: 21),
                ),
                Text(
                  "\$000",
                  style: TextStyle(
                      color: Color(0xff03C9B0),
                      fontWeight: FontWeight.w800,
                      fontSize: 21),
                )
              ],
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(21)),
    );
  }

  Widget TextFiedl3() {
    return Container(
      //color: Colors.blue.shade200,
      child: Row(
        children: [
          Text(
            "Enter \nYour Bill",
            style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w800), // Optional styling
          ),
          SizedBox(
            width: 90,
          ),
          // Right-aligned TextField
          SizedBox(
            width: 170,
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6))),
            ),
          ),
        ],
      ),
    );
  }

  Widget  Button4(){
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Choose \nYour Tip",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                width: 70,
              ),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "-",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff03C9B0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)))),
                ),
              ),
              SizedBox(
                height: 50,
                width: 74,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "2",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder()),
                ),
              ),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "+",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff03C9B0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)))),
                ),
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 130),
                child: SizedBox(
                  height: 45,

                  width:190,
                  child: ElevatedButton(
                    onPressed: () {}, child: Text("Custom tip"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff03C9B0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),),

                ),
              )
            ],
          )
        ],
      ),

    );
  }

  Widget Button5(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Split\n the total",
              style: TextStyle(

                  color: Colors.black,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              width: 70,
            ),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "-",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff03C9B0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)))),
              ),
            ),
            SizedBox(
              height: 50,
              width: 74,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "2",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder()),
              ),
            ),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "+",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff03C9B0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)))),
              ),
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ],
    );
}
}
