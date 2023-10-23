import 'package:flutter/material.dart';
class Categorie extends StatelessWidget {
  final imageLocation;
  final imageCaption;
  const Categorie({this.imageLocation,this.imageCaption});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: 100.0,
      child:ListTile(
        title: Image.asset(this.imageLocation,
          width: 100.0,
          height: 80.0,
        ),
        subtitle: Text(this.imageCaption),
      ) ,
    );
  }
}
