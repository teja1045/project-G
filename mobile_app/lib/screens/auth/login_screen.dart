import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login / Signup')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Enter mobile number to receive OTP'),
            SizedBox(height: 12),
            TextField(decoration: InputDecoration(labelText: 'Mobile Number')),
          ],
        ),
      ),
    );
  }
}
