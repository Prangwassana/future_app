import 'package:flutter/material.dart';

void main()=>runApp(MyListPage());

class Product{
  int id;
  String name;
  double price;
  String picture;

  Product(int id, String name, double price, String picture){
    this.id = id;
    this.name = name;
    this.price = price;
    this.picture = picture;

  }
}

class MyListPage extends StatefulWidget {
  @override
  _MyListPageState createState() => _MyListPageState();
}

class _MyListPageState extends State<MyListPage> {
  // List<String> myProducts = ['Chocolate', 'Strawberry', 'Kiwi', 'Apple',];
  List<Product> product = [
    Product(1, "Chocolate cake", 250,"https://cooking.teenee.com/cake/img0/1802.jpg"),
    Product(2, "strawberry cake", 300,"https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/Strawberry_layer_cake.jpg/1200px-Strawberry_layer_cake.jpg"),
    Product(3, "Vanilla cake", 290,"https://kingbakeryhouse.com/upload-img/vanilla-4.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('All Products'),
        ),
        body: Column(
          //  children: myProducts.map((prd) => Text(prd)).toList()
          children: product.map((p) {
            return ListTile(
              leading: Image.network(p.picture),
              title: Text(p.name),
              subtitle: Text("Price : ฿"+ p.price.toString()),
            );
          }).toList(),
        ),
      ),
    );
  }
}