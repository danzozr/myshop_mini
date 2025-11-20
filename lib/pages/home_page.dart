import 'package:flutter/material.dart';
import 'product_list_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Beranda Masdanar"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProductListPage()),
            );
          },
          child: const Text("Lihat Daftar Produk"),
        ),
      ),
    );
  }
}
