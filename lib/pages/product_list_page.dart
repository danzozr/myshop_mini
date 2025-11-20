import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_detail_page.dart';

class ProductListPage extends StatelessWidget {
  ProductListPage({super.key});

  final List<Product> products = [
    Product(
      name: "Keyboard Gaming RGB",
      image: "https://i.imgur.com/BoN9kdC.png",
      price: 350000,
      description:
          "Keyboard mekanikal dengan lampu RGB, switch tactile, dan build metal yang nyaman untuk mengetik atau bermain game.",
    ),
    Product(
      name: "Mouse Wireless",
      image: "https://i.imgur.com/Qn8fF9t.png",
      price: 120000,
      description:
          "Mouse wireless dengan sensor presisi tinggi dan baterai tahan hingga 3 bulan.",
    ),
    Product(
      name: "Headset Bass Boost",
      image: "https://i.imgur.com/ZbK1Twp.png",
      price: 280000,
      description:
          "Headset dengan bass kuat, mikrofon jernih, dan bantalan empuk cocok untuk gaming dan musik.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Produk"),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return Card(
            child: ListTile(
              leading: Image.network(product.image, width: 50),
              title: Text(product.name),
              subtitle: Text("Rp ${product.price}"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailPage(
                      name: product.name,
                      image: product.image,
                      price: product.price,
                      description: product.description,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
