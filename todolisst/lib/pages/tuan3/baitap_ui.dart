import 'package:flutter/material.dart';

class BaitapUi extends StatefulWidget {
  const BaitapUi({super.key});

  @override
  State<BaitapUi> createState() => _BaitapUiState();
}

class _BaitapUiState extends State<BaitapUi> {
  String label = "Hello";

  void onClick(){
    setState(() {
      label = "Nguyen Như Phương";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('My First App'),
            const SizedBox(height: 20,),
            Text(label),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                onClick();
              }, 
              child: Text('Say Hi')
            )
          ],
        ),
      ),
    );
  }
}