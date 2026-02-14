import 'package:flutter/material.dart';
import 'screens/home/home_screen.dart';
import 'screens/booking/book_pickup_screen.dart';
import 'screens/booking/booking_history_screen.dart';
import 'screens/worker/worker_dashboard.dart';

void main() {
  runApp(const GarbagePickupApp());
}

class GarbagePickupApp extends StatelessWidget {
  const GarbagePickupApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Garbage Pickup MVP',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const _MvpNavigator(),
    );
  }
}

class _MvpNavigator extends StatefulWidget {
  const _MvpNavigator();

  @override
  State<_MvpNavigator> createState() => _MvpNavigatorState();
}

class _MvpNavigatorState extends State<_MvpNavigator> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    BookPickupScreen(),
    BookingHistoryScreen(),
    WorkerDashboard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: 'Book'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'Track'),
          BottomNavigationBarItem(icon: Icon(Icons.delivery_dining), label: 'Partner'),
        ],
      ),
    );
  }
}
