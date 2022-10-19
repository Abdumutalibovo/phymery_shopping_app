import 'package:flutter/material.dart';
import 'package:shopping_app/models/drugs_model.dart';
import 'package:shopping_app/screens/menu_page.dart';
import 'package:shopping_app/screens/your_card_page.dart';

class InfoPage extends StatelessWidget {
  Drugs? drugs;
  InfoPage({Key? key, required this.drugs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>MenuPage()));
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: 5,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sugar Free Gold Low Calories",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                "Etiam mollis metus non purus",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              height: 200,
              width: double.infinity,
              child: Image.network(
                drugs?.imageUrl??"", fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              drugs?.price.toString()??"",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Etiam mollis",
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.add_box_outlined,
                      color: Colors.blueAccent,
                      size: 18,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => YourCardPage()),
                        );
                      },
                      child: Text(
                        "Add to cart",
                        style:
                            TextStyle(color: Colors.blueAccent, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(
              height: 36,
              thickness: 1,
              endIndent: 0,
              color: Colors.grey,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "Package size",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              children: [
                Button("106", "500 pellets"),
                SizedBox(
                  width: 10,
                ),
                Button("166", "110 pellets"),
                SizedBox(
                  width: 10,
                ),
                Button("252", "300 pellets"),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Product Details",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
            SizedBox(
              height: 6,
            ),
            Expanded(
                child: Text(
                   drugs?.description??"",
                style: TextStyle(color: Colors.grey, fontSize: 18),
                )),
          ],
        ),
      ),
    );
  }

  Widget Button(String price, String text) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 90,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.only(left: 12, top: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "\$$price",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: TextStyle(
                    fontSize: 16, color: Colors.black.withOpacity(0.6)),
              )
            ]),
          ),
        )
      ],
    );
  }
}
