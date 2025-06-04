import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'reset_password_page.dart';

class VerifyCodePage extends StatefulWidget {
  final String email;

  const VerifyCodePage({Key? key, required this.email}) : super(key: key);

  @override
  State<VerifyCodePage> createState() => _VerifyCodePageState();
}

class _VerifyCodePageState extends State<VerifyCodePage> {
  String currentCode = "";

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
              const SizedBox(height: 10),
              const Text('Verify Code', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 5),
              const Text('Enter the code we sent to your email', textAlign: TextAlign.center),
              const SizedBox(height: 20),
                    
              PinCodeTextField(
                appContext: context,
                length: 6,
                onChanged: (value) {
                  setState(() {
                    currentCode = value;
                  });
                },
                onCompleted: (value) {
                  currentCode = value;
                },
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.white,
                  selectedColor: Colors.blue,
                  inactiveColor: Colors.grey,
                ),
              ),
                    
              const SizedBox(height: 20),
                    
              ElevatedButton(
                onPressed: () {
                  if (currentCode.length == 6) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ResetPasswordPage(
                          email: widget.email,
                          code: currentCode,
                        ),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Please enter the full 6-digit code")),
                    );
                  }
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
