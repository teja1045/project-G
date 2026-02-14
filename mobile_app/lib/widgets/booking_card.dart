import 'package:flutter/material.dart';

class BookingCard extends StatelessWidget {
  const BookingCard({
    super.key,
    required this.title,
    required this.status,
    required this.subtitle,
  });

  final String title;
  final String status;
  final String subtitle;

  Color _statusColor() {
    switch (status) {
      case 'Completed':
        return Colors.green;
      case 'Picked up':
        return Colors.blue;
      case 'Assigned':
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Chip(
          label: Text(status),
          backgroundColor: _statusColor().withOpacity(0.15),
        ),
      ),
    );
  }
}
