import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Garbage Pickup MVP')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Core Features', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('1. Mobile OTP login'),
            Text('2. Add multiple addresses'),
            Text('3. Book pickup with waste type'),
            Text('4. Show pickup price and scrap estimate'),
            Text('5. UPI or cash on pickup'),
            Text('6. Track booking status'),
          ],
        ),
      ),
    );
  }
}
