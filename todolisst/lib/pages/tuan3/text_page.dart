import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Text detail'),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 30, color: Colors.black),
            children: [
              TextSpan(
                text: 'The ',
              ),
              TextSpan(
                text: 'quick',
                style: TextStyle(decoration: TextDecoration.lineThrough),
              ),
              TextSpan(
                text: ' Brown\n',
                style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: 'fox '
              ),
              TextSpan(
                text: 'jumps',
                style: TextStyle(letterSpacing: 4)
              ),
              TextSpan(
                text: 'over\n',
                style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
              ),
              TextSpan(
                text: 'the',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
              TextSpan(
                text: ' lazy ',
                style: TextStyle(fontStyle: FontStyle.italic, fontFamily: 'Roboto'),
              ),
              TextSpan(
                text: 'dog.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}