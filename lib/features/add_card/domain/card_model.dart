class CardModel {
  final String? id;
  final String holder;
  final String number;
  final String expiryMonth;
  final String expiryYear;
  final String cvv;
  final String countryIssuer;

  CardModel({
    this.id,
    required this.holder,
    required this.number,
    required this.expiryMonth,
    required this.expiryYear,
    required this.cvv,
    required this.countryIssuer,
  });

  factory CardModel.fromJson(Map<String, dynamic> json) {
    return CardModel(
      id: json['id'] ?? '',
      holder: json['holder'] ?? '',
      number: CardModel.toCardNumber(json["number"] ?? ""),
      expiryMonth: json["expiry_month"] ?? "",
      expiryYear: json["expiry_year"] ?? "",
      cvv: json["cvv"],
      countryIssuer: json['country_issuer'],
    );
  }

  Map<String, dynamic> toJsonMap(CardModel model) {
    return {
      "id": model.id ?? '',
      "holder": model.holder,
      "number": model.number,
      "expiry_month": model.expiryMonth,
      "expiry_year": model.expiryYear,
      "cvv": model.cvv,
      "country_issuer": model.countryIssuer,
    };
  }

  factory CardModel.empty() => CardModel(
        cvv: "***",
        expiryMonth: "",
        holder: "Card holder",
        number: "0000 0000 0000 0000",
        expiryYear: '',
        countryIssuer: '',
      );

  static String cardBrand(String cardNumber) {
    if (cardNumber.isEmpty) {
      return "";
    }
    final s = cardNumber[0];
    String firstTwoDigits = "";
    if (cardNumber.length >= 2) {
      firstTwoDigits = cardNumber.substring(0, 2);
    }

    switch (s) {
      case "3":
        if (firstTwoDigits == '34' || firstTwoDigits == '37') {
          return "AMERICAN EXPRESS";
        }
        break;
      case "4":
        return "VISA";
      case "5":
        return "MASTER";
      case "6":
        if (firstTwoDigits == '65' || firstTwoDigits == '60') {
          return "DISCOVER";
        }
        break;
      default:
        return "";
    }
    return "";
  }

  static String toCardNumber(String val) {
    const String sh = "****************";
    if (val.length < 16) {
      val = sh.substring(0, 16 - (val.length - 1)) + val;
    }

    val =
        "${val.substring(0, 4)} ${val.substring(4, 8)} ${val.substring(8, 12)} ${val.substring(12, 16)}";
    return val;
  }

  CardModel copyWith({
    String? id,
    String? holder,
    String? brand,
    String? number,
    String? expiryMonth,
    String? expiryYear,
    String? cvv,
    String? countryIssuer,
  }) {
    return CardModel(
      id: id ?? this.id,
      holder: holder ?? this.holder,
      number: number ?? this.number,
      expiryMonth: expiryMonth ?? this.expiryMonth,
      expiryYear: expiryYear ?? this.expiryYear,
      cvv: cvv ?? this.cvv,
      countryIssuer: countryIssuer ?? this.countryIssuer,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CardModel &&
        other.id == id &&
        other.holder == holder &&
        other.number == number &&
        other.expiryMonth == expiryMonth &&
        other.expiryYear == expiryYear &&
        other.cvv == cvv &&
        other.countryIssuer == countryIssuer;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        holder.hashCode ^
        number.hashCode ^
        expiryMonth.hashCode ^
        expiryYear.hashCode ^
        cvv.hashCode ^
        countryIssuer.hashCode;
  }
}
