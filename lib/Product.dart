
import 'package:flutter/material.dart';
class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
   var product_list=[
     {
       "name":"Blazer",
       "picture":"images/product/p1.png",
       "price":150,
       "oldprice":200
     },
     {
       "name":"Blazer",
       "picture":"images/product/p1.png",
       "price":150,
       "oldprice":200
     },
   ];

  @override
  Widget build(BuildContext context) {
    return SingleProdut(

    );
  }
}

class SingleProdut extends StatelessWidget {
  final prodname;
  final prodprice;
  final prodoldPrice;
  final prodpicture;
  SingleProdut({this.prodname,this.prodprice,this.prodoldPrice,this.prodpicture});
  @override
  Widget build(BuildContext context) {
   return Card(
     child: Hero(
       tag:this.prodname,
       child: Material(
         child: InkWell(
           onTap: (){},
           child:GridTile(
             footer: Container(
               color: Colors.white,
               child: Row(
                 children: [
                   Expanded(
                     child: Text(this.prodname,style: TextStyle(fontWeight:FontWeight.bold),),
                   ),
                   new Text("${this.prodprice}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                 ],
               )

             ),
             child: Image.asset(this.prodpicture,fit:BoxFit.cover,),
           ),
         ),
       ),
     ),
   );
  }
}
