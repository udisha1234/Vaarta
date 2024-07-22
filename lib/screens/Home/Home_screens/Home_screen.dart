import 'package:flutter/material.dart';
import 'package:vaarta/screens/Home/Home_local_widgets/CarDetails.dart';
import 'package:vaarta/screens/Home/Home_screens/Details_screen.dart';
import 'package:vaarta/screens/Home/Home_screens/List_screen.dart';
import 'package:vaarta/screens/Home/Home_screens/Profile_screen.dart';
import 'package:vaarta/utils/colors.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  Widget block() {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w * 0.02, vertical: h * 0.01),
      child: Container(
        height: h * 0.15,
        width: h * 0.15,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient:
                LinearGradient(colors: [Color(0xFF252A37), Color(0xFF21283B)])),
        child: Column(
          children: [
            Spacer(),
            Container(
                height: h * 0.1,
                width: h * 0.1,
                child: Image.asset("assets/logo/logo_1_tesla.png")),
            // Spacer(),
            Text(
              "Tesla",
              style: TextStyle(
                color: color.base,
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  Widget filter(String text) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w * 0.01),
      child: Container(
        // height: ,
        child: Center(
            child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: w * 0.04, vertical: h * 0.01),
          child: Text(
            text,
            style: TextStyle(color: color.base, fontWeight: FontWeight.w500),
          ),
        )),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient:
                LinearGradient(colors: [Color(0xFF252A37), Color(0xFF21283B)])),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: color.prim,
        body: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: w * 0.06, vertical: h * 0.01),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: h * 0.01,
                ),
                Row(
                  children: [
                    Text(
                      "Explore new \ndestinations with ease!!",
                      style: TextStyle(
                          color: color.base,
                          fontSize: 25,
                          fontWeight: FontWeight.w200),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Profile_screen()),
                        );
                      },
                      child: CircleAvatar(
                        backgroundColor: color.text,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: h * 0.02),
                  child: SearchBar(
                    backgroundColor: MaterialStatePropertyAll(color.prim),
                    hintText: "Search your dream car...",
                    hintStyle: MaterialStatePropertyAll(TextStyle(
                        color: color.text, fontWeight: FontWeight.w200)),
                    leading: Padding(
                      padding: EdgeInsets.only(
                        left: w * 0.03,
                      ),
                      child: Icon(
                        Icons.search_rounded,
                        color: color.text,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Browse by Brands",
                      style: TextStyle(
                          color: color.base,
                          fontSize: 18,
                          fontWeight: FontWeight.w300),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: color.base,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: h * 0.015),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => List_screen(),));
                          },
                          child: block()), 
                        block(), 
                        block(), 
                        block()],
                    ),
                  ),
                ),
                Text(
                  "Select by transmission",
                  style: TextStyle(
                      color: color.base,
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: h * 0.02),
                  child: Row(
                    children: [
                      filter("All"),
                      filter("Automatic"),
                      filter("Electric"),
                      filter("Manual")
                    ],
                  ),
                ),
                SizedBox(
                  height: h * 0.01,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => Details_screen(),)
                    );
                  },
                  child: Car_Details_Widget())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
