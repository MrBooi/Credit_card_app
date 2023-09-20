import 'package:card_app/features/add_card/domain/card_model.dart';

class CardNumberValidator {
  static String? validate(String? value) {
    if (value != null) {
      if (value.isEmpty) {
        return 'Please enter your card number';
      }

      final num = value.replaceAll(" ", "").length;
      if (num < 16) {
        return 'Invalid card number';
      }

      if (CardModel.cardBrand(value) == "") {
        return "Invalid card number";
      }
    }

    return null;
  }
}

class CardCvcValidator {
  static String? validate(String? value) {
    if (value != null) {
      final cname = value.replaceAll(' ', '').length;
      if (cname < 3 || int.tryParse(value) == null) {
        return 'Invalid CVC';
      }
    }

    return null;
  }
}

class CardExpiryValidator {
  static String? validate(String? value) {
    if (value != null) {
      final d = value.split("/");
      if (d.length < 2) {
        return "Invalid expiry date";
      }

      final month = int.tryParse(d[0]);
      if (month == null || month < 1 || month > 12) {
        return "Invalid expiry month";
      }

      final sY = DateTime.now().year.toString().substring(0, 2) + d[1];
      final year = int.tryParse(sY);
      if (year == null || year < DateTime.now().year) {
        return "Invalid expiry year";
      }
    }

    return null;
  }
}

class CardNameValidator {
  static String? validate(String? value) {
    if (value != null) {
      if (value.isEmpty) {
        return 'Please enter the name on your card';
      }

      if (value.split(" ").length < 2) {
        return "Please enter the full name on your card";
      }
    }

    return null;
  }
}

class CountryIssuerValidator {
  static String? validate(String? value) {
    if (value != null) {
      if (value.isEmpty) {
        return 'Please enter the name of the country issuer';
      }

      if (value.length < 2) {
        return "Invalid country name";
      }
    }

    return null;
  }
}
