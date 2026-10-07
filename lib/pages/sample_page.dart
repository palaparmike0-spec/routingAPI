import 'package:flutter/material.dart';

class SamplePage extends StatefulWidget {
  const SamplePage({super.key});

  @override
  State<SamplePage> createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage> {
  final List<Map<String, dynamic>> fruits = [
    {'id': 1, 'name': 'Apple', 'description': 'Crisp and sweet, a classic fruit.'},
    {'id': 2, 'name': 'Banana', 'description': 'Soft, tropical, and rich in potassium.'},
    {'id': 3, 'name': 'Mango', 'description': 'Juicy and fragrant with a smooth texture.'},
    {'id': 4, 'name': 'Orange', 'description': 'Bright and citrusy with a refreshing taste.'},
  ];

  void deleteItem(int index) {
    setState(() {
      fruits.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fruit List'),
      ),
      body: fruits.isEmpty
          ? const Center(child: Text('No fruits available'))
          : ListView.builder(
              itemCount: fruits.length,
              itemBuilder: (context, index) {
                final fruit = fruits[index];

                return Card(
                  margin: const EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ID: ${fruit['id']}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          fruit['name'],
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(fruit['description']),
                        const SizedBox(height: 12),
                        ElevatedButton.icon(
                          onPressed: () => deleteItem(index),
                          icon: const Icon(Icons.delete),
                          label: const Text('Remove'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
