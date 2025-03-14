import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListView Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListViewScreen(),
    );
  }
}

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  _ListViewScreenState createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  // Simulasi data menggunakan list
  final List<Map<String, String>> items = [
    {"title": "Nikon", "image": "https://cdn.shopify.com/s/files/1/0672/3806/8470/files/NikonZ30Kit16-50mm_2.jpg?v=1709784016"},
    {"title": "Sony", "image": "https://admin.focusnusantara.com/media/catalog/product/cache/417d5822b01094047ca5b50bfdc0690a/c/s/csn38470-sony-zv-e10-ii-mirrorless-camera-with-16-50mm-lens-_black_-web_d1_1_1.jpg"},
    {"title": "Fujifilm", "image": "https://admin.focusnusantara.com/media/catalog/product/cache/417d5822b01094047ca5b50bfdc0690a/images/detailed/75/CFJ34568-FUJIFILM-X-T30-II-kit-15-45mm-Black_D1.png"},
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Flutter"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(items[index]['image']!), // Gambar
            title: Text(items[index]['title']!), // Judul
            subtitle: const Text("Klik untuk melihat detail"), // Subtitle
            trailing: const Icon(Icons.arrow_forward), // Ikon
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Anda memilih ${items[index]['title']}")),
              );
            },
          );
        },
      ),
    );
  }
}
