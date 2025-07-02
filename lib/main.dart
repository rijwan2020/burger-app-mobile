import 'package:flutter/material.dart';
import 'header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.teal, centerTitle: true),
      ),
      home: Burger(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Burger extends StatefulWidget {
  @override
  State<Burger> createState() => _BurgerState();
}

class _BurgerState extends State<Burger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text("Deliver Me", style: TextStyle(color: Colors.white)),
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
              color: Colors.white,
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart),
                color: Colors.white,
              ),
            ],
          ),
          Header(),
          SliverList(
            delegate: SliverChildListDelegate([
              Text("Burger", style: TextStyle(fontSize: 300)),
            ]),
          ),
        ],
      ),
    );
  }
}
