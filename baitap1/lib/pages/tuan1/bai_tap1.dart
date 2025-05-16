import 'package:flutter/material.dart';

class BaiTap1 extends StatelessWidget {
  const BaiTap1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Icon(Icons.arrow_back, size: 18, color: Colors.black),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Icon(Icons.edit_document, size: 18, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SizedBox.expand(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/images/avt.jpg'),
                ),
                const SizedBox(height: 20),
                Text(
                  'Nguyễn Như Phương',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Quận 12 thành phố Hồ Chính Minh',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
