import '../lib/helper_functions.dart';
import '../lib/users.dart';
import 'Blog/blog.dart';
import '../lib/colorPicker.dart';

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

  printHeadline("Willkommen bei Club Kompass", color.cyan);
  String userMenuSelection;
  String inputLogin;
  String inputPassword;
  bool tempBool = true;
  bool loggedIn = false;
  Blog myBlog = Blog();

  while (isProgramRunning) {
    printLabel("Welche Aktion möchtest du machen? (Mit \"Enter\" bestätigen)",
        color.yellow);
    printLabel("(E)inloggen" + " | " + "(R)egistrieren" + " | " + "(B)log");

    userMenuSelection = getUserInput();

    //Einloggen
    if (userMenuSelection == "E" || userMenuSelection == "e") {
      inputLogin = getUserInput("Username eingeben: ");
      inputPassword = getUserInput("Passwort eingeben: ");

      if (accounts[inputLogin] == inputPassword) {
        printLabel("Eingeloggt Willkommen $inputLogin", color.cyan);
        inputPassword = "";
        loggedIn = true;
      } else {
        printLabel(
            "Account Name oder Passwort falsch bitte kontrollieren", color.red);
      }
    }
    //Registrieren
    else if (userMenuSelection == "R" || userMenuSelection == "r") {
      inputLogin = getUserInput("Username eingeben: ");

      while (!checkUsername(inputLogin) || accounts.containsKey(inputLogin)) {
        if (!checkUsername(inputLogin) && tempBool) {
          printLabel(
              "Nutzername darf nur Buchstaben (a-z, A-Z) und mindestens 4 Zeichen enthalten, erneut eingeben: ",
              color.red);
          tempBool = false;
        } else if (accounts.containsKey(inputLogin)) {
          printLabel(
              "Benutzername bereits vergeben, erneut eingeben", color.yellow);
        }
        inputLogin = getUserInput();
      }

      inputPassword = getUserInput("Passwort eingeben: ");
      tempBool = true;
      while (!checkUserpassword(inputPassword)) {
        if (tempBool) {
          printLabel(
              "Passwort muss Großschreibung, Zahlen, Sonderzeichen und mindestes 6 Zeichen enthalten: ",
              color.red);
          tempBool = false;
        }
        inputPassword = getUserInput("Passwort erneut eingeben: ");
      }
      printLabel("Erfolgreich registriert", color.green);
      accounts[inputLogin] = inputPassword;

      //Blog Ansicht
    } else if (userMenuSelection == "B" || userMenuSelection == "b") {
      if (!loggedIn) {
        printLabel("Nicht eingeloggt", color.red);
        continue;
      }
      printHeadline("Blog", color.magenta);
      printLabel(
          "Anzahl ungelesene Einträge: ${myBlog.unseenPosts()}", color.green);
      printLabel("Welche Aktion möchtest du machen? (Mit \"Enter\" bestätigen)",
          color.yellow);

      while (true) {
        //Auswahl Blog
        printLabel(
            "(N)eusten Blog Eintrag anzeigen (${myBlog.unseenPosts()}) | (A)lte Beiträge anzeigen | (Z)urück zum Hauptmenü");
        userMenuSelection = getUserInput().toLowerCase();

        //Blogansicht verlassen
        if (userMenuSelection == "z") break;

        switch (userMenuSelection) {
          case "n":
            //Neuste Blogeinträge anzeigen
            if (myBlog.unseenPosts() > 0)
              myBlog.printUnseenPost();
            else {
              printLabel("Keine weiteren Einträge vorhanden!", color.yellow);
            }

          case "a":
            //Alte Einträge anschauen
            int i = -1;
            while (true) {
              printLabel(
                  "(N)ächsten Post anzeigen | (V)orherigen Post anzeigen | (Z)urück zum Blog",
                  color.yellow);
              userMenuSelection = getUserInput().toLowerCase();

              //Alte Beiträge verlassen
              if (userMenuSelection == "z") break;

              switch (userMenuSelection) {
                case "n":
                  //Nächsten Blog Eintrag anzeigen
                  i++;
                  if (i < myBlog.posts.length) {
                    myBlog.posts[i].printAll();
                  } else {
                    i = myBlog.posts.length - 1;
                  }
                //Vorherigen Blog Eintrag anzeigen
                case "v":
                  i--;
                  if (i >= 0) {
                    myBlog.posts[i].printAll();
                  } else {
                    i = 0;
                  }
              }
            }
        }
      }
    }
  }
}
