class PaymentService {
  Future<bool> payWithUpi(double amount) async {
    return amount >= 49;
  }

  Future<bool> markCashOnPickup(double amount) async {
    return amount >= 49;
  }
}
