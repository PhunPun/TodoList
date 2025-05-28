import 'package:flutter/material.dart';

class BaiTh1 extends StatefulWidget {
  const BaiTh1({super.key});

  @override
  State<BaiTh1> createState() => _BaiTh1State();
}

class _BaiTh1State extends State<BaiTh1> {
  final TextEditingController _emailController = TextEditingController();
  String ketqua = '';

  void kiemtra(String? dulieu) {
    setState(() {
      if (dulieu == null || dulieu.trim().isEmpty) {
        ketqua = 'Email không hợp lệ';
      } else if (!dulieu.contains('@')) {
        ketqua = 'Email không đúng định dạng';
      } else {
        ketqua = 'Bạn đã nhập email hợp lệ';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Thực hành 02'),
              Container(
                padding: const EdgeInsets.all(30),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Text(
                ketqua,
                style: const TextStyle(fontSize: 16, color: Colors.blue),
              ),
              Container(
                padding: const EdgeInsets.all(60),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    kiemtra(_emailController.text);
                  },
                  child: const Text('Kiểm tra'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
