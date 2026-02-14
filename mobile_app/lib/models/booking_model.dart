class BookingModel {
  BookingModel({
    required this.id,
    required this.wasteType,
    required this.pickupDate,
    required this.timeSlot,
    required this.status,
    required this.pickupCharge,
    this.estimatedScrapValue,
    required this.paymentMethod,
  });

  final String id;
  final String wasteType;
  final DateTime pickupDate;
  final String timeSlot;
  final String status;
  final double pickupCharge;
  final double? estimatedScrapValue;
  final String paymentMethod;
}
