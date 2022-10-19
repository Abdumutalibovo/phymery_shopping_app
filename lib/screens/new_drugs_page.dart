import 'package:flutter/material.dart';

import '../models/drugs_model.dart';

class NewDrugsPage extends StatelessWidget {
  Drugs? drugs;
  NewDrugsPage({Key? key, required this.drugs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(drugs?.name ?? "Drugs", style: TextStyle(color: Colors.black),),
      ),
    );
  }
}
