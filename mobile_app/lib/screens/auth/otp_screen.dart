import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OTP Verification')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: TextField(decoration: InputDecoration(labelText: '6-digit OTP')),
      ),
    );
  }
}
