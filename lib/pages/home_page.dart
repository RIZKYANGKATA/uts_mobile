import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart'; // Import kelas Item
import 'package:belanja/pages/item_page.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Gula', price: 10000, image: 'gula.jpg', stock: 100, rating: 4.5),
    Item(
        name: 'Garam', price: 2000, image: 'garam.jpeg', stock: 50, rating: 3.9),
    Item(
        name: 'Minyak',
        price: 17000,
        image: 'minyak.png',
        stock: 10,
        rating: 4.8),
    Item(name: 'Kopi', price: 1000, image: 'kopi.png', stock: 5, rating: 4.9),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemPage(item: item),
                  ),
                );
              },
              child: Card(
                elevation: 4,
                child: Column(
                  children: [
                    Hero(
                      tag: 'itemImage${item.name}',
                      child: Image.asset(
                        'assets/${item.image}',
                        height: 100,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        item.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.attach_money),
                              Text('Price: \ ${item.price.toString()}'),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.inventory),
                              Text('Stock: ${item.stock.toString()}'),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.star),
                              Text('Rating: ${item.rating.toString()}'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Rizky Angkata Putra S. - NIM: 2141720223',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}