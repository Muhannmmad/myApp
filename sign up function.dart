import 'dart:io';

import 'show menue.dart';

void signUp() {
  stdout.write("Enter a username: ");
  String? username = stdin.readLineSync();

  // Check if the username is already taken
  if (users.containsKey(username)) {
    print("Username already taken. Please choose another one.");
    return;
  }

  stdout.write("Enter a password: ");
  String? password = stdin.readLineSync();

  // Store user data
  users[username!] = {'password': password};

  print("\nAccount created successfully! You can now log in.");
  showMenu(); // Return to main menu
}

void main() {
  signUp();
}
