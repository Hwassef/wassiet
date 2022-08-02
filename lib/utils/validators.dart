class Validators {
  Validators._();
  static String? validatePhoneNumber({required String? phoneNumber}) {
    if (phoneNumber != null && phoneNumber.length != 8) {
      return 'Wrong phone number';
    } else {
      return null;
    }
  }

  static String? validateEmail(final String? value) {
    if (value == null || value.isEmpty) return 'This field is required';
    final regExp = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

    if (!regExp.hasMatch(value)) {
      return 'Email invalide';
    } else {
      return null;
    }
  }

  static String? validateFullName(final String? fullName) {
    if (fullName == null || fullName.isEmpty) {
      return 'This field is required';
    }
    if (fullName.length < 3) {
      return 'Too short';
    }
    return null;
  }
}
