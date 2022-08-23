import 'package:flutter/material.dart';
class DetailsPage extends StatelessWidget {
  final String imagePath;

  DetailsPage({  required  this.imagePath, });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular (30)),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                )
              )
            )
          ]
        )
      ),
    );
  }
}