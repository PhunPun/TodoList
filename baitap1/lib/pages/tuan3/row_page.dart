import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Row Layout'),
      ),
      body: Center(
        child: Column(
          children: [
            rowLayout(),
            rowLayout(),
            rowLayout()
          ],
        ),
      ),
    );
  }
  Widget rowLayout(){
    return
    Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          content(Colors.blueGrey),
          content(Colors.blue),
          content(Colors.blueGrey),
        ],
      ),
    );
  }
  Widget content(Color color){
    return Expanded(
      flex: 1,
      child: Container(
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }
}