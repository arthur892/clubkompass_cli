import 'package:args/args.dart';
import 'package:clubkompass/users.dart';

const String version = '0.0.1';

void main(List<String> arguments) {
  final bool isProgramRunning = true;
  while (isProgramRunning) {
    String inputUsername = "Anton";
    String inputPasswort = "123!";

    String username;
    String password;

    if (accounts[inputUsername] == inputPasswort) {
      username = inputUsername;
      password = inputPasswort;
    }
  }
}
