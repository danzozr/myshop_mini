import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  final String name;
  final String image;
  final int price;
  final String description;

  const ProductDetailPage({
    super.key,
    required this.name,
    required this.image,
    required this.price,
    required this.description,
  });

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int quantity = 1;

  // Helper khusus: deteksi mobile
  bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 600;
  }

  @override
  Widget build(BuildContext context) {
    final mobile = isMobile(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: mobile
              ? buildMobileLayout()
              : buildWebLayout(),
        ),
      ),
    );
  }

  // ============================
  //    LAYOUT KHUSUS MOBILE
  // ============================

  Widget buildMobileLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // GAMBAR
        Center(
          child: Image.network(
            widget.image,
            height: 220,
          ),
        ),

        const SizedBox(height: 20),

        // NAMA PRODUK
        Text(
          widget.name,
          style: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 10),

        // HARGA
        Text(
          "Rp ${widget.price}",
          style: const TextStyle(
            fontSize: 22,
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 20),

        detailSection(), // deskripsi, qty, total harga, tombol beli
      ],
    );
  }

  // ============================
  // LAYOUT KHUSUS WEB / TABLET
  // ============================

  Widget buildWebLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // GAMBAR
        Expanded(
          flex: 4,
          child: Image.network(
            widget.image,
            height: 350,
          ),
        ),

        const SizedBox(width: 40),

        // DETAIL PRODUK
        Expanded(
          flex: 5,
          child: detailSection(),
        ),
      ],
    );
  }

  // ============================
  //   BAGIAN DETAIL PRODUK
  // ============================

  Widget detailSection() {
    int totalPrice = widget.price * quantity;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Judul deskripsi
        const Text(
          "Deskripsi Produk",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 8),

        // ISI DESKRIPSI
        Text(
          widget.description,
          style: const TextStyle(
            fontSize: 16,
            height: 1.4,
          ),
        ),

        const SizedBox(height: 25),

        // JUDUL JUMLAH
        const Text(
          "Jumlah Pembelian",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 10),

        // ROW JUMLAH
        Row(
          children: [
            // TOMBOL MIN
            IconButton(
              onPressed: () {
                if (quantity > 1) {
                  setState(() => quantity--);
                }
              },
              icon: const Icon(Icons.remove_circle_outline),
              iconSize: 32,
            ),

            Text(
              quantity.toString(),
              style: const TextStyle(fontSize: 22),
            ),

            // TOMBOL PLUS
            IconButton(
              onPressed: () {
                setState(() => quantity++);
              },
              icon: const Icon(Icons.add_circle_outline),
              iconSize: 32,
            ),
          ],
        ),

        const SizedBox(height: 25),

        // TOTAL HARGA
        Text(
          "Total Harga: Rp $totalPrice",
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),

        const SizedBox(height: 30),

        // TOMBOL BELI
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            child: const Text(
              "Beli Sekarang",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}
