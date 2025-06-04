import 'package:flutter/material.dart';

class ConfirmPage extends StatelessWidget {
  final String email;
  final String code;
  final String password;

  const ConfirmPage({
    super.key,
    required this.email,
    required this.code,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/uth.png',
              width: 100,
              height: 68,
              fit: BoxFit.cover,
            ),
            const Text('SmartTasks', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const Text('Confirm'),
            const SizedBox(height: 20),
            TextField(
              readOnly: true,
              decoration: InputDecoration(
                hintText: 'Email: $email',
                border: OutlineInputBorder()
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              readOnly: true,
              decoration: InputDecoration(hintText: 'Code: $code', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            TextField(
              readOnly: true,
              decoration: InputDecoration(hintText: 'Password: $password', border: OutlineInputBorder()),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 60),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              child: const Text('Submit', style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
