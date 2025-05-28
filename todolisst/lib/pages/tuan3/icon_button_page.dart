import 'package:flutter/material.dart';

class IconButtonPage extends StatelessWidget {
  const IconButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('IconButton')),
      body: Center(
        child: IconButton(
          icon: Icon(Icons.thumb_up),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('IconButton pressed!')),
            );
          },
        ),
      ),
    );
  }
}
