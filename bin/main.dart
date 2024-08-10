import 'package:args/args.dart';
import 'package:clubkompass/users.dart';
import 'package:clubkompass/helper_functions.dart';

const String version = '0.0.1';

void main(List<String> arguments) {
  final bool isProgramRunning = true;
  while (isProgramRunning) {
    print("Welche Aktion möchtest du machen? (Mit \"Enter\" bestätigen)");
    print("(E)inloggen" "(R)egistrieren");
    String userMenuSelection = getUserMenuSelection();
    String inputLogin;
    String inputPassword;

    //Einloggen
    if (userMenuSelection == "E" || userMenuSelection == "e") {
      inputLogin = getUserMenuSelection("Username eingeben: ");
      inputPassword = getUserMenuSelection("Passwort eingeben: ");

      if (accounts[inputLogin] == inputPassword) {
        print("Eingeloggt Willkommen $inputLogin");
        inputPassword = "";
      }
    }
    //Registrieren
    else if (userMenuSelection == "R" || userMenuSelection == "r") {
      inputLogin = getUserMenuSelection("Username eingeben: ");
      bool tempBool = true;

      while (!checkUsername(inputLogin) || accounts.containsKey(inputLogin)) {
        if (!checkUsername(inputLogin) && tempBool) {
          print(
              "Nutzername darf nur Buchstaben (a-z, A-Z) und mindestens 4 Zeichen enthalten, erneut eingeben: ");
          tempBool = false;
        } else if (accounts.containsKey(inputLogin)) {
          print("Benutzername bereits vergeben, erneut eingeben");
        }
        inputLogin = getUserMenuSelection();
      }

      inputPassword = getUserMenuSelection("Passwort eingeben: ");
      tempBool = true;
      while (!checkUserpasswort(inputPassword)) {
        if (tempBool) {
          print(
              "Passwort muss Großschreibung, Zahlen, Sonderzeichen und mindestes 6 Zeichen enthalten: ");
          tempBool = false;
        }
        inputPassword = getUserMenuSelection("Passwort erneut eingeben: ");
      }
      print("Erfolgreich registriert");
      accounts[inputLogin] = inputPassword;
    }
  }
}
