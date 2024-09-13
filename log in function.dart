import 'dart:io';

import 'show menue.dart';

void logIn() {
  stdout.write("Enter your username: ");
  String? username = stdin.readLineSync();

  // Check if the user exists
  if (!users.containsKey(username)) {
    print("User does not exist. Please sign up first.");
    showMenu();
    return;
  }

  stdout.write("Enter your password: ");
  String? password = stdin.readLineSync();

  // Verify the password
  if (users[username]!['password'] == password) {
    print("\nLogin successful! Welcome, $username.");
  } else {
    print("Incorrect password. Please try again.");
  }
// Return to main menu after login
  showMenu();
}

void main() {
  logIn();
}
