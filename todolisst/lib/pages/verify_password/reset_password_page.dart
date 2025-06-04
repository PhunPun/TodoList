import 'package:baitap1/pages/verify_password/confirm_page.dart';
import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {
  final String email;
  final String code;
  final TextEditingController passController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();

  ResetPasswordPage({super.key, required this.email, required this.code});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 70),
              Image.asset(
                'assets/images/uth.png',
                width: 100,
                height: 68,
                fit: BoxFit.cover,
              ),
              const Text('SmartTasks', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const Text('Create new password'),
              const Text('New password must differ from old one'),
              const SizedBox(height: 20),
              TextField(
                controller: passController,
                decoration: const InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 10),
              TextField(
                controller: confirmController,
                decoration: const InputDecoration(
                  hintText: 'Confirm password',
                  border: OutlineInputBorder(
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  final pass = passController.text;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ConfirmPage(email: email, code: code, password: pass),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 60),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
                child: const Text('Next', style: TextStyle(color: Colors.white),),
              )
            ],
          ),
        ],
      ),
    );
  }
}
