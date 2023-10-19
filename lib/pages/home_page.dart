import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart'; // Import kelas Item

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000),
    Item(name: 'Salt', price: 2000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Card(
              child: Row(
                children: [
                  Expanded(child: Text(item.name)),
                  Expanded(
                    child: Text(
                      item.price.toString(),
                      textAlign: TextAlign.end,
                    ),
                  )
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}
