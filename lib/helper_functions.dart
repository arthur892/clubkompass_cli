import 'dart:io';

/// Shows a small text and waits for user input.
/// To send user input, Enter should be pressed.

/*
final Map<String, String> colorPicker = {
  "black": "90",
  "red": "91",
  "green": "92",
  "yellow": "93",
  "blue": "94",
  "magenta": "95",
  "cyan": "96",
  "white": "97",
};*/

enum color {
  black,
  red,
  green,
  yellow,
  blue,
  magenta,
  cyan,
  white,
}

final Map<color, String> colorPicker = {
  color.black: "90",
  color.red: "91",
  color.green: "92",
  color.yellow: "93",
  color.blue: "94",
  color.magenta: "95",
  color.cyan: "96",
  color.white: "97",
};

String getUserInput([String text = "Eingabe: ", var color = color.black]) {
  //Get the input from the user

  //Check if color is valid
  if (colorPicker[color] == null) {
    print("ColorPicker is null");
    return "";
  }
  //Get the userinput
  String selection = "";

  stdout.write("\x1B[" + colorPicker[color]! + "m" + "$text" + "\x1B[0m");
  selection = stdin.readLineSync() ?? "";
  return selection;
}

void printLabel(String text, [var color = color.black]) {
  //Print a Label with a color

  if (colorPicker[color] == null) {
    print("ColorPicker is null");
    return;
  }
  print("\x1B[" + colorPicker[color]! + "m" + "$text" + "\x1B[0m");
}

void printHeadline(String text, [var color = color.black]) {
  //print a headline with a color

  //Check if color is valid
  if (colorPicker[color] == null) {
    print("ColorPicker is null");
    return;
  }

  String dash = "";
  for (int i = 0; i < text.length + 2; i++) {
    dash += "-";
  }
  //Add Color to String
  dash = "\x1B[" + colorPicker[color]! + "m" + "+$dash+" + "\x1B[0m";

  print("");
  print(dash);
  print("\x1B[" + colorPicker[color]! + "m" + "| $text |" + "\x1B[0m");
  print(dash);
  print("");
}

bool checkUserpassword(String password, [int minLength = 6]) {
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
