class Validators {
  Validators._();
  static String? validatePhoneNumber({required String? phoneNumber}) {
    if (phoneNumber != null && phoneNumber.length != 8) {
      return 'Wrong phone number';
    } else {
      return null;
    }
  }
}
