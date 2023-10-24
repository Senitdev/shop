
import 'package:flutter/material.dart';
import 'package:shop/Categorie.dart';
void main(){
  runApp(const Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:Colors.red
      ),
      home: homePage(),
    );
  }
}
class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Drawer(
        child:ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Pape"),
              accountEmail:Text('Toure@senitdev.com'),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                child:Icon(Icons.person,color: Colors.white),
                backgroundColor: Colors.grey,
              ),
            ),
              decoration: BoxDecoration(
                color: Colors.red
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home,color: Colors.red,),
              onTap: (){},
            ),
            ListTile(
              title: Text("My account"),
              leading: Icon(Icons.person,color: Colors.red,),
              onTap: (){},
            ),
            ListTile(
              title: Text("My Orders"),
              leading: Icon(Icons.shop,color: Colors.red,),
           onTap: (){},
            ),
            ListTile(
              title: Text("Catégories"),
              leading: Icon(Icons.dashboard,color: Colors.red,),
           onTap: (){},
            ),
          ListTile(
        title: Text("Favorites"),
         leading: Icon(Icons.favorite,color: Colors.red,),
          onTap: (){},
          ),
           ListTile(
           title: Text("Setting"),
           leading: Icon(Icons.settings,color: Colors.red,),
           onTap: (){},
            ),
          ListTile(
              title: Text("Help"),
             leading: Icon(Icons.help,color: Colors.blue,),
               onTap: (){},
               )
          ],
      ),
      ),
      appBar: AppBar(title: Text("My Shopp"),
        actions: [
        IconButton(onPressed: (){}, icon:Icon(Icons.shopping_cart_outlined,color: Colors.white,)),
          IconButton(onPressed: (){}, icon:Icon(Icons.search,color: Colors.white,))
        ],
      ),
      body: Center(
        child:ListView(
          children: [
            Container(
              height: 200,
              color: Colors.blue,
              child: Image.asset("images/carousel/im1.jpg",fit:BoxFit.cover,),
            ),
            
            Divider(height: 10.0,),
            Text('Catégorie',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
            Divider(height: 10.0,),
            Container(
              height: 80.8,
              child:ListView(
                scrollDirection: Axis.horizontal,
                children: [
                Categorie(
                  imageCaption:("Blouse"),
                  imageLocation:("images/categories/c2.png"),
                ),
                  Categorie(
                    imageCaption:("chaussure"),
                    imageLocation:("images/categories/c1.png"),
                  ),
                  Categorie(
                    imageCaption:("Puma"),
                    imageLocation:("images/categories/c2.png"),
                  ),
                  Categorie(
                    imageCaption:("Snaker"),
                    imageLocation:("images/categories/c3.png"),
                  ),
                  Categorie(
                    imageCaption:("Chemise"),
                    imageLocation:("images/categories/c4.png"),
                  ),
                ],
              )
            ),
            Divider(height: 20.0,),
            Text('Product',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
            Divider(height: 10.0,),
            Container(
              height: 320,
              color: Colors.green,
            )
          ],
        )
      ),
    );

  }
}

