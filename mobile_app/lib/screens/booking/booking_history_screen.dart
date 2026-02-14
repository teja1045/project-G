import 'package:flutter/material.dart';
import '../../widgets/booking_card.dart';

class BookingHistoryScreen extends StatelessWidget {
  const BookingHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Track Status')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            BookingCard(
              title: 'Household Dry Waste',
              subtitle: 'Tomorrow • 10:00 AM - 12:00 PM',
              status: 'Assigned',
            ),
            BookingCard(
              title: 'E-waste Pickup',
              subtitle: '12 Mar • 2:00 PM - 4:00 PM',
              status: 'Completed',
            ),
          ],
        ),
      ),
    );
  }
}
