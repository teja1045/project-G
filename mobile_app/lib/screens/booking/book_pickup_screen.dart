import 'package:flutter/material.dart';
import '../../core/constants/app_constants.dart';

class BookPickupScreen extends StatelessWidget {
  const BookPickupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Book Pickup')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Waste Type'),
            const SizedBox(height: 6),
            DropdownButtonFormField<String>(
              items: AppConstants.wasteTypes
                  .map((type) => DropdownMenuItem(value: type, child: Text(type)))
                  .toList(),
              onChanged: (_) {},
            ),
            const SizedBox(height: 12),
            const Text('Pickup Charge: ₹49 - ₹99'),
            const Text('Estimated Scrap Value: based on waste quality'),
            const SizedBox(height: 12),
            DropdownButtonFormField<String>(
              items: AppConstants.timeSlots
                  .map((slot) => DropdownMenuItem(value: slot, child: Text(slot)))
                  .toList(),
              onChanged: (_) {},
              decoration: const InputDecoration(labelText: 'Select Time Slot'),
            ),
          ],
        ),
      ),
    );
  }
}
