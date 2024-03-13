import 'package:flutter/material.dart';

class Product{
  final String title;
  final String description;
  Product(this.title,this.description);
}

void main(){
  runApp(MaterialApp(
    title: 'ZhaWenting example',
    home: ProductList(
        products:List.generate(20,
                (i) => Product('Product $i', 'This is a product, number is $i')),
    ),
  ));
}

class ProductList extends StatelessWidget {
  late List<Product> products;
  ProductList({Key? key, required this.products}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pass data between two activities')),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context,index){
            return ListTile(
              title: Text(products[index].title),
              onTap:(){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>ProductDetail(product:products[index]))
                );
              },
            );
          }
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  Product product;
  ProductDetail({super.key,required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('$product.title')),
      body: Center(child: Text(product.description))
    );
  }
}
