import 'package:flutter/material.dart';

class Baitap3 extends StatelessWidget {
  const Baitap3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text('Nguyễn Như Phương'),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text('2251120313'),
            ),
            Image.asset(
              'assets/images/jetpack.png',
            ),
            Text(
              'Jetpack Compose',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
            const SizedBox(height: 10,),
            Text(
              textAlign: TextAlign.center,
              'Jetpack Compose is a modern UI toolkit for building native Android applications using a declarative programming approach.',
              style: TextStyle(
                fontSize: 16
              ),
            ),
            const SizedBox(height: 50,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 40),
                backgroundColor: Colors.blue
              ),
              onPressed: () {}, 
              child: Text('I\'m ready',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}