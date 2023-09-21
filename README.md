# card_app

## Intro
This is a small mobile application system that allows our admins to submit credit card numbers for validation.

## Requirements
Build a Flutter mobile application that can do the following:
- Allow the user to submit credit card details. Details should include:
Card Number, Card Type, CVV, Issuing Country
- The ability to infer Card Type from Credit Card number would be beneficial.
- Check the specified country to make sure it doesn’t exist in a list of banned countries.
- Make the list of banned countries configurable.
- If the card is valid – store it in local storage.
- Display all the credit cards that have been captured during the session.
- Don’t capture the same card twice.
- Please also add the ability to scan a credit card (examples attached), pre-populate the
card number, and infer the cart type.
- Authorization is not necessary for the purposes of this test.

## How to configure a list of banned countries?
A list of banned countries could be configured by adding a country with the type of cards that are banned, see the code below.

Note: on the list of banned countries we do a lock-up to see if the card type you're providing is not banned and if its banned we block you from saving the card.

```
class Configuration {
  final List<Map<String, dynamic>> bannedListOfCountry = [
    {
      "russia": ["visa", "master"],
    },
    {
      "iran": ["visa", "master"],
    },
    {
      "Sudan": ["visa", "master"],
    },
    {
      "sudan": ["visa", "master"],
    },
    {
      "syria": ["visa", "master"],
    },
    {
      "north korea": ["visa", "master"],
    },
  ];
}
```
## How to Run the App

```
 make flutter_build_runner
 make run_mobile
```

## Core Dependency Packages:

- freezed_annotation: A code generation package for immutable data classes in Dart.
- json_annotation: A package to generate JSON serialization and deserialization code.
- flutter_bloc: A state management library that follows the BLoC (Business Logic Component) architecture.
- get_it: A simple service locator for Dart and Flutter projects, providing a convenient way to perform dependency injection.
- path_provider: A plugin for getting commonly used locations on the filesystem.
- flutter_scan_tools: A package for credit card scanning functionality.
- permission_handler: A package for handling runtime permissions in Flutter.
- hive: A lightweight and efficient key-value store for Flutter that can be used for local storage.
- dartz: A functional programming package that provides algebraic data types and functional constructs in Dart


# Dev Dependency Packages

- freezer: A package to generate boilerplate code for immutable data classes.
- json_serializable: A package to generate JSON serialization and deserialization code.
- build_runner: A tool for running code generation and other tasks during the build process.
