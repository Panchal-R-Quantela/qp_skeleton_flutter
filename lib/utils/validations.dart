mixin InputValidationMixin {
  bool isPasswordValid(String password) => password.length > 6;

  bool isEmailValid(String email) {
    RegExp regex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

    return regex.hasMatch(email);
  }
}