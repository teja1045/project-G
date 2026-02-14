import '../models/booking_model.dart';

class BookingService {
  final List<BookingModel> _bookings = [];

  Future<void> createBooking(BookingModel booking) async {
    _bookings.add(booking);
  }

  Future<List<BookingModel>> getUserBookings() async {
    return List.unmodifiable(_bookings);
  }
}
