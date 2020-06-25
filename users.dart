// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    this.greeting,
    this.instructions,
  });

  String greeting;
  List<Instruction> instructions;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    greeting: json["greeting"],
    instructions: List<Instruction>.from(json["instructions"].map((x) => Instruction.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "greeting": greeting,
    "instructions": List<dynamic>.from(instructions.map((x) => x.toJson())),
  };
}

class Instruction {
  Instruction({
    this.global,
    this.countries,
    this.date,
  });

  Wereld global;
  List<Country> countries;
  DateTime date;

  factory Instruction.fromJson(Map<String, dynamic> json) => Instruction(
    global: Wereld.fromJson(json["Global"]),
    countries: List<Country>.from(json["Countries"].map((x) => Country.fromJson(x))),
    date: DateTime.parse(json["Date"]),
  );

  Map<String, dynamic> toJson() => {
    "Global": global.toJson(),
    "Countries": List<dynamic>.from(countries.map((x) => x.toJson())),
    "Date": date.toIso8601String(),
  };
}

class Country {
  Country({
    this.country,
    this.countryCode,
    this.slug,
    this.newConfirmed,
    this.totalConfirmed,
    this.newDeaths,
    this.totalDeaths,
    this.newRecovered,
    this.totalRecovered,
    this.date,
  });

  String country;
  String countryCode;
  String slug;
  int newConfirmed;
  int totalConfirmed;
  int newDeaths;
  int totalDeaths;
  int newRecovered;
  int totalRecovered;
  DateTime date;

  factory Country.fromJson(Map<String, dynamic> json) => Country(
    country: json["Country"],
    countryCode: json["CountryCode"],
    slug: json["Slug"],
    newConfirmed: json["NewConfirmed"],
    totalConfirmed: json["TotalConfirmed"],
    newDeaths: json["NewDeaths"],
    totalDeaths: json["TotalDeaths"],
    newRecovered: json["NewRecovered"],
    totalRecovered: json["TotalRecovered"],
    date: DateTime.parse(json["Date"]),
  );

  Map<String, dynamic> toJson() => {
    "Country": country,
    "CountryCode": countryCode,
    "Slug": slug,
    "NewConfirmed": newConfirmed,
    "TotalConfirmed": totalConfirmed,
    "NewDeaths": newDeaths,
    "TotalDeaths": totalDeaths,
    "NewRecovered": newRecovered,
    "TotalRecovered": totalRecovered,
    "Date": date.toIso8601String(),
  };
}

class Wereld {
  Wereld({
    this.newConfirmed,
    this.totalConfirmed,
    this.newDeaths,
    this.totalDeaths,
    this.newRecovered,
    this.totalRecovered,
  });

  int newConfirmed;
  int totalConfirmed;
  int newDeaths;
  int totalDeaths;
  int newRecovered;
  int totalRecovered;

  factory Wereld.fromJson(Map<String, dynamic> json) => Wereld(
    newConfirmed: json["NewConfirmed"],
    totalConfirmed: json["TotalConfirmed"],
    newDeaths: json["NewDeaths"],
    totalDeaths: json["TotalDeaths"],
    newRecovered: json["NewRecovered"],
    totalRecovered: json["TotalRecovered"],
  );

  Map<String, dynamic> toJson() => {
    "NewConfirmed": newConfirmed,
    "TotalConfirmed": totalConfirmed,
    "NewDeaths": newDeaths,
    "TotalDeaths": totalDeaths,
    "NewRecovered": newRecovered,
    "TotalRecovered": totalRecovered,
  };
}
