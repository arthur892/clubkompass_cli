import 'dart:io';

/// Shows a small text and waits for user input.
/// To send user input, Enter should be pressed.
String getUserMenuSelection([String Value = "Eingabe: "]) {
  String selection = "";

  stdout.write("$Value");
  selection = stdin.readLineSync() ?? "";

  return selection;
}

bool checkUserpasswort(String password, [int minLength = 6]) {
  //Controll if userpasswort has: uppercase, digits, Lowercase, SpecialCharacters, minLength
  if (password == null || password.isEmpty) {
    return false;
  }

  bool hasUppercase = password.contains(new RegExp(r'[A-Z]'));
  bool hasDigits = password.contains(new RegExp(r'[0-9]'));
  bool hasLowercase = password.contains(new RegExp(r'[a-z]'));
  bool hasSpecialCharacters =
      password.contains(new RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
  bool hasMinLength = password.length >= minLength;

  return hasDigits &
      hasUppercase &
      hasLowercase &
      hasSpecialCharacters &
      hasMinLength;
}

bool checkUsername(String username, [int minLength = 4]) {
  if (username == null || username.isEmpty) {
    return false;
  }
  bool hasAlphabets = username.contains(new RegExp(r'[a-zA-Z]'));

  bool hasDigits = username.contains(new RegExp(r'[0-9]'));
  bool hasSpecialCharacters =
      username.contains(new RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
  bool hasMinLength = username.length >= minLength;

  return hasAlphabets && hasMinLength && !hasDigits && !hasSpecialCharacters;
}
