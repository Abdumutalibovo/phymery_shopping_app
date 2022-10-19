import 'package:flutter/material.dart';
import 'package:shopping_app/screens/menu_page.dart';
import 'package:shopping_app/utils/images.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePage> {
  void initState() {
    super.initState();
    onNextPage();
  }

  onNextPage(){
    Future.delayed(Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>MenuPage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Padding(
        padding: const EdgeInsets.only(left: 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                    width: 90,
                    height: 90,
                    child: Center(child: Image.asset(myImages.logo_image))),
                Positioned(
                    width: 25,
                    height: 40,
                    left: 32,
                    top: 12,
                    child: Image.asset(myImages.chaqmoq_image)),
              ],
            ),
            Text("Medtech", style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.w500),)
          ],
        ),
      ),
    );
  }
}
