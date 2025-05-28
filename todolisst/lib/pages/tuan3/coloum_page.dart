import 'package:flutter/material.dart';

class ColumPage extends StatelessWidget {
  const ColumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Colum Layout'),
      ),
      body: Container(
        child: columLayout()
      ),
    );
  }
  Widget columLayout(){
    return
    Container(
      height: 300,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          content(Colors.blueGrey),
          content(Colors.blue),
          content(Colors.blueGrey),
        ],
      ),
    );
  }
  Widget content(Color color){
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}