import 'package:baitap1/pages/tuan4/baitap_4.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Detail'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text('\"The only way to do great work is to love what you do\"',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20
            ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.blueAccent,
                  width: 2
                )
              ),
              child: Text(
                '\"The only way to do great work is to love what you do.\"',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 50
            ),
              ),
            ),
            const SizedBox(height: 50,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(315, 50),
                backgroundColor: Colors.blue
              ),
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (_) => Baitap4())
                );
              }, 
              child: Text('BACK TO ROOF')
            )
          ],
        ),
      ),
    );
  }
}