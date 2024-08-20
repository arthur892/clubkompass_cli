import 'dart:io';

/// Shows a small text and waits for user input.
/// To send user input, Enter should be pressed.
final Map<String, String> colorPicker = {
  "black": "90",
  "red": "91",
  "green": "92",
  "yellow": "93",
  "blue": "94",
  "magenta": "95",
  "cyan": "96",
  "white": "97",
};

String getUserInput([String text = "Eingabe: ", String color = "black"]) {
  //"black": "30",  "red": "31",  "green": "32",  "yellow": "33",  "blue": "34",  "magenta": "35",  "cyan": "36",  "white": "37",
  String selection = "";
  if (colorPicker[color] != null) {
    stdout.write("\x1B[" + colorPicker[color]! + "m" + "$text" + "\x1B[0m");
    selection = stdin.readLineSync() ?? "";
  } else {
    print("ColorPicker is null");
  }

  return selection;
}

void printLabel(String text, [String color = "black"]) {
  //"black": "30",  "red": "31",  "green": "32",  "yellow": "33",  "blue": "34",  "magenta": "35",  "cyan": "36",  "white": "37",

  if (colorPicker[color] != null) {
    print("\x1B[" + colorPicker[color]! + "m" + "$text" + "\x1B[0m");
  } else {
    print("ColorPicker is null");
  }
}

bool checkUserpasswort(String password, [int minLength = 6]) {
  //Control if userpasswort has: uppercase, digits, Lowercase, SpecialCharacters, minLength
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
  //Control if username contains only letters from a-z and A-Z
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
