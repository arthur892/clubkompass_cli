import '../../lib/colorPicker.dart';
import '../../lib/helper_functions.dart';

class blogPost {
  String title;
  String text;
  String picture;
  bool readed = false;

  blogPost(this.title, this.text, this.picture);

  void printAll() {
    printTitle();
    printPicture();
    printText();
    print("");
    readed = true;
  }

  void printTitle() {
    printHeadline(title, color.cyan);
  }

  void printText() {
    printLabel(text, color.blue);
  }

  void printPicture([var color = color.black]) {
    //print a headline with a color

    //Check if color is valid
    if (colorPicker[color] == null) {
      print("ColorPicker is null");
      return;
    }
    String dash = "";
    for (int i = 0; i < picture.length; i++) {
      if (picture[i] == "\n") {
        break;
      }
      dash += "-";
    }
    //Add Color to String
    dash = "\x1B[" + colorPicker[color]! + "m" + "+$dash+" + "\x1B[0m";

    print("");
    print(dash);
    print("\x1B[" + colorPicker[color]! + "m" + "$picture" + "\x1B[0m");

    print(dash);
    print("");
  }
}
