class AddressModel {
  AddressModel({
    required this.id,
    required this.label,
    required this.fullAddress,
  });

  final String id;
  final String label;
  final String fullAddress;
}

class UserModel {
  UserModel({
    required this.id,
    required this.phoneNumber,
    required this.name,
    required this.addresses,
  });

  final String id;
  final String phoneNumber;
  final String name;
  final List<AddressModel> addresses;
}
