import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    // List contoh item
    final List<Map<String, String>> items = [
      {'name': 'Orange', 'price': '\$10'},
      {'name': 'Apple', 'price': '\$20'},
      {'name': 'Banana', 'price': '\$5'},
      {'name': 'Mango', 'price': '\$15'},
      {'name': 'Grapes', 'price': '\$8'},
      {'name': 'Pineapple', 'price': '\$12'},
      {'name': 'Strawberry', 'price': '\$25'},
      {'name': 'Watermelon', 'price': '\$7'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('List of Items'),
        backgroundColor: const Color(0xFF6CBF3F),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: Text(item['name']!),
            subtitle: Text('Price: ${item['price']}'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text(item['name']!),
                    content: Text('This is a ${item['name']}. Price: ${item['price']}'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}