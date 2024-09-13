import 'dart:io';

import 'log in function.dart';
import 'sign up function.dart';

Map<String, Map<String, dynamic>> users = {};

// Function to display the main menu
void showMenu() {
  print("\n--- Welcome to HobbyConnect ---");
  print("1. Sign Up");
  print("2. Log In");
  print("3. Exit");

  stdout.write("Choose an option (1/2/3): ");
  String? choice = stdin.readLineSync();

  switch (choice) {
    case '1':
      signUp();
      break;
    case '2':
      logIn();
      break;
    case '3':
      exit(0);
      break;
    default:
      print("Invalid option, please try again.");
      showMenu();
  }
}
