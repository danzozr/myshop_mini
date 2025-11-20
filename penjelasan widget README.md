1. HOME PAGE WIDGETS

➤ Scaffold

Kerangka dasar halaman (punya appBar, body, dll).

➤ AppBar

Menampilkan judul halaman di bagian atas.

➤ Padding

Memberikan jarak (margin di dalam halaman).

➤ Column

Menata widget secara vertikal dari atas ke bawah.

➤ GridView.count

Menampilkan daftar kategori dalam bentuk kotak/grid.

➤ GestureDetector atau InkWell

Supaya kategori bisa diklik.

➤ Card

Menampilkan kotak kategori yang rapi dengan shadow.

➤ Center

Untuk menempatkan teks kategori di tengah kartu.

➤ Text

Menampilkan nama kategori.

2. PRODUCT LIST PAGE WIDGETS

➤ Scaffold

Kerangka dasar halaman.

➤ AppBar

Judul halaman berdasarkan kategori.

➤ GridView.builder

Menampilkan produk dalam bentuk grid dinamis (bisa banyak).

➤ Card

Kotak tampilan produk.

➤ Column

Mengatur posisi gambar dan nama produk.

➤ Image.network

Menampilkan gambar produk dari internet.

➤ SizedBox

Memberi jarak antar-elemen.

➤ InkWell

Agar card bisa diklik & membuka ProductDetail.

➤ Text

Menampilkan nama produk dan harga.

3. PRODUCT DETAIL PAGE WIDGETS

➤ StatefulWidget

Digunakan karena halaman membutuhkan perubahan data (jumlah pembelian + total harga).

▸ Struktur Layout

➤ Scaffold

Kerangka halaman detail.

➤ AppBar

Menampilkan nama produk.

➤ SingleChildScrollView

Agar halaman bisa digeser (scroll) kalau kontennya panjang.

➤ Padding

Memberikan ruang di sekitar konten.

➤ Column

Menata seluruh elemen detail produk secara vertikal.

▸ Konten Produk

➤ Image.network

Menampilkan gambar produk.

➤ Text

Untuk nama produk, harga, deskripsi.

➤ SizedBox

Untuk jarak antar-seksi.

▸ Bagian Jumlah Pembelian (Quantity)

➤ Row

Mengatur tampilan "button minus – jumlah – button plus" secara horizontal.

➤ IconButton

Tombol untuk mengurangi/menambah jumlah produk.

➤ Container

Membuat kotak jumlah belanja (quantity) terlihat rapi.

➤ Text

Menampilkan jumlah yang dipilih.
