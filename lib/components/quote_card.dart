import 'package:flutter/material.dart';
import '../helpers/quote.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({Key? key, required this.quote, required this.delete})
      : super(key: key);

  final Quote quote;
  final Function delete;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quote.text,
                style: TextStyle(fontSize: 18.0, color: Colors.grey[600])),
            const SizedBox(
              height: 6.0,
            ),
            Text(quote.author,
                style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber)),
            const SizedBox(
              height: 8.0,
            ),
            TextButton.icon(
                onPressed: () => delete(),
                icon: const Icon(Icons.delete),
                label: const Text('delete'))
          ],
        ),
      ),
    );
  }
}
