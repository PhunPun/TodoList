import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Text detail'),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://iec.ut.edu.vn/wp-content/uploads/2023/04/DH-GTVT-TPHCM-UTH-GTS.jpg',
                  width: double.infinity,
                  height: 189,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10,),
              Text(
                'https://iec.ut.edu.vn/wp-content/uploads/2023/04/DH-GTVT-TPHCM-UTH-GTS.jpg',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10,),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/btvn3.jpg',
                  width: double.infinity,
                  height: 189,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10,),
              Text(
                'In app',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        )
      )
    );
  }
}