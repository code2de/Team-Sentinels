import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      'Restaurants',
      'Hotels',
      'Fashion',
      'Electronics',
      'Entertainment',
      'Crafts',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore Categories'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(categories[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          );
        },
      ),
    );
  }
}
