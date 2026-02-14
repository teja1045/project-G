class AuthService {
  Future<bool> sendOtp(String phoneNumber) async {
    return phoneNumber.trim().length >= 10;
  }

  Future<bool> verifyOtp(String otp) async {
    return otp.length == 6;
  }
}
