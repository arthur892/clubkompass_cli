import '../lib/helper_functions.dart';
import '../lib/users.dart';
import 'Blog/blog.dart';
import '../lib/colorPicker.dart';

const String version = '0.0.1';

void main(List<String> arguments) {
  final bool isProgramRunning = true;

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

    //Logins with password control
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
    //register new user
    else if (userMenuSelection == "R" || userMenuSelection == "r") {
      inputLogin = getUserInput("Username eingeben: ");

      //check if user already exists
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

      //check user password for safety
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

      //Blog view
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
        //Blog view undermenu
        printLabel(
            "(N)eusten Blog Eintrag anzeigen (${myBlog.unseenPosts()}) | (A)lte Beiträge anzeigen | (Z)urück zum Hauptmenü");
        userMenuSelection = getUserInput().toLowerCase();

        //Exit blog undermenu view
        if (userMenuSelection == "z") break;

        switch (userMenuSelection) {
          case "n":
            //Show unseend Blog Posts
            if (myBlog.unseenPosts() > 0)
              myBlog.printUnseenPost();
            else {
              printLabel("Keine weiteren Einträge vorhanden!", color.yellow);
            }

          case "a":
            //Show all blog posts ---new undermenu "old Posts"
            int i = -1; //Must be outside the while "menu" loop
            while (true) {
              printLabel(
                  "(N)ächsten Post anzeigen | (V)orherigen Post anzeigen | (Z)urück zum Blog",
                  color.yellow);
              userMenuSelection = getUserInput().toLowerCase();

              //Exit undermenu "old posts" --> go to Blogview undermneu
              if (userMenuSelection == "z") break;

              switch (userMenuSelection) {
                case "n":
                  //Show next Blogpost
                  i++;
                  if (i < myBlog.posts.length) {
                    myBlog.posts[i].printAll();
                  } else {
                    i = myBlog.posts.length - 1;
                  }
                //Show previous Blogpost
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
