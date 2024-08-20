import 'package:clubkompass/users.dart';
import 'package:clubkompass/helper_functions.dart';

const String version = '0.0.1';

void main(List<String> arguments) {
  final bool isProgramRunning = true;

/*
    printLabel("green", "green");
    printLabel("yellow", "yellow");
    printLabel("blue", "blue");
    printLabel("magenta", "magenta");
    printLabel("cyan", "cyan");
    printLabel("white", "white");
*/

  printLabel("");
  printLabel("--------------------------", "cyan");
  printLabel("Willkommen bei Clubkompass", "cyan");
  printLabel("--------------------------", "cyan");
  printLabel("");

  while (isProgramRunning) {
    String userMenuSelection;
    String inputLogin;
    String inputPassword;
    bool tempBool = true;

    printLabel("Welche Aktion möchtest du machen? (Mit \"Enter\" bestätigen)",
        "yellow");
    printLabel("(E)inloggen" "(R)egistrieren");

    userMenuSelection = getUserInput();

    //Einloggen
    if (userMenuSelection == "E" || userMenuSelection == "e") {
      inputLogin = getUserInput("Username eingeben: ");
      inputPassword = getUserInput("Passwort eingeben: ");

      if (accounts[inputLogin] == inputPassword) {
        printLabel("Eingeloggt Willkommen $inputLogin", "cyan");
        inputPassword = "";
      } else {
        printLabel(
            "Account Name oder Passwort falsch bitte kontrollieren", "red");
      }
    }
    //Registrieren
    else if (userMenuSelection == "R" || userMenuSelection == "r") {
      inputLogin = getUserInput("Username eingeben: ");

      while (!checkUsername(inputLogin) || accounts.containsKey(inputLogin)) {
        if (!checkUsername(inputLogin) && tempBool) {
          printLabel(
              "Nutzername darf nur Buchstaben (a-z, A-Z) und mindestens 4 Zeichen enthalten, erneut eingeben: ",
              "red");
          tempBool = false;
        } else if (accounts.containsKey(inputLogin)) {
          printLabel(
              "Benutzername bereits vergeben, erneut eingeben", "yellow");
        }
        inputLogin = getUserInput();
      }

      inputPassword = getUserInput("Passwort eingeben: ");
      tempBool = true;
      while (!checkUserpasswort(inputPassword)) {
        if (tempBool) {
          printLabel(
              "Passwort muss Großschreibung, Zahlen, Sonderzeichen und mindestes 6 Zeichen enthalten: ",
              "red");
          tempBool = false;
        }
        inputPassword = getUserInput("Passwort erneut eingeben: ");
      }
      printLabel("Erfolgreich registriert", "green");
      accounts[inputLogin] = inputPassword;
    }
  }
}
