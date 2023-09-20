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
## How To run the App
