import 'package:flutter/material.dart';
import 'package:frapper/screens/offers_page.dart';
import 'package:frapper/screens/profile_page.dart';
import 'package:frapper/widgets/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.2),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white54,
                isDense: true,
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.purple,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: "Search products",
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, val) {
                return const ProductsPage();
              },
            ),
          ),
        ],
      ),
    );
  }
}
