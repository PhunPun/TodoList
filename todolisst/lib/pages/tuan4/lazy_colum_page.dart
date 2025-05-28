import 'package:baitap1/pages/tuan4/detail_page.dart';
import 'package:flutter/material.dart';

class LazyColumPage extends StatelessWidget {
  const LazyColumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Lazy Colum'),
      ),
      body: ListView.builder(
        itemCount: 1000,
        itemBuilder: (context, index) => content(context, index)
      ),
    );
  }
  Widget content(BuildContext context,int index){
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => DetailPage())
        );
      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.blue[200],
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          children: [
            Expanded(
              flex: 9,
              child: Text('$index The only way to do great work is to love what you do.'),
            ),
            Expanded(
              flex: 1,
              child: Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
      ),
    );
  }
}