import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_app/screens/info_page.dart';
import 'package:shopping_app/utils/images.dart';

import '../models/drugs_model.dart';

class YourCardPage extends StatefulWidget {
   YourCardPage({Key? key}) : super(key: key);

  @override
  State<YourCardPage> createState() => _YourCardPageState();
}

class _YourCardPageState extends State<YourCardPage> {
  int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
            onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (builder)=>(),));
            },
            child: Icon( Icons.arrow_back,color: Colors.black,)),
        title: Text("Your cart", style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("2 Items in your cart"),
                  Row(
                    children: [
                      Icon(Icons.add, color: Colors.blue,),
                      Text("Add more", style: TextStyle(color: Colors.blue),)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16,),
            ImagePost(),
            const Divider(
              height: 36,
              thickness: 1,
              endIndent: 0,
              color: Colors.black12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey)
                ),
                child: Row(
                  children: [
                    Icon(Icons.launch, color: Colors.black,),
                    SizedBox(width: 15,),
                    Text("1 Coupon applied", style: TextStyle(color: Colors.blueAccent),),
                    SizedBox(width: 200,),
                    Icon(Icons.cancel_outlined, color: Colors.black,),
                    SizedBox(width: 5,)
                  ],
                ),
              ),
            ),
            SizedBox(height: 18,),
            Padding(
              padding: const EdgeInsets.only(left: 12,right: 12),
              child: Text("Payment Summary", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),),
            ),

        ],
        ),
      ),
    );
  }

  Widget ImagePost(){
    return Container(
      child: Row(
        children: [
          Image.asset(myImages.milk_cornation, width: 100,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Sugar free gold"),
                  SizedBox(width: 180,),
                  Icon(Icons.cancel_outlined,size:20 ,color: Colors.black.withOpacity(0.6),)
                ],
              ),
              Text("bottle of 500 pellets"),
              SizedBox(height: 28,),
              Row(
                children: [
                  Text("\$25", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),),
                  SizedBox(width: 180,height: 15,),
                  InkWell(
                      onTap: (){
                        setState(() {
                          index--;
                        });
                      },
                      child: SvgPicture.asset(myImages.minus_icon, width: 18,)),
                  SizedBox(width: 5,),
                  Container(
                    child: Text(index.toString(), style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(9)
                    ),
                    child: InkWell(
                        onTap: (){
                          setState(() {
                            index++;
                          });
                        },
                        child: Icon(Icons.add, size: 18,)),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

}
