import 'dart:convert';

import '../entities/additional_entity.dart';
import '../entities/armor_entity.dart';
import '../entities/bow_entity.dart';
import '../entities/cane_entity.dart';
import '../entities/claw_entity.dart';
import '../entities/special_entity.dart';
import '../entities/sword_entity.dart';
import '../entities/throwing_entity.dart';
import '../services/github.dart';

// A repository class manages the API strings and converts them into a Dart-readable list of objects.
class Repository {
  Repository._();

  static final Repository _instance = Repository._();

  factory Repository() {
    return _instance;
  }

  // Used on list views, returns a list of additionals.
  static Future<List<Additional>> additionals() async {
    List<dynamic> temporary;
    try {
      // Decodes the string into a list of objects.
      temporary = jsonDecode(await GitHub().table('additionals.json'));
      return temporary.map(Additional.fromJson).toList();
    }
    catch (_) {
      // If an error occurred, check that you are receiving a JSON format string or if the JSON string matches the entity.
      throw Exception('Unable to convert JSON to Additional object.');
    }
  }

  // Used on list views, returns a list of armors.
  static Future<List<Armor>> armors() async {
    List<dynamic> temporary;
    try {
      // Decodes the string into a list of objects.
      temporary = jsonDecode(await GitHub().table('armors.json'));
      return temporary.map(Armor.fromJson).toList();
    }
    catch (_) {
      // If an error occurred, check that you are receiving a JSON format string or if the JSON string matches the entity.
      throw Exception('Unable to convert JSON to Armor object.');
    }
  }

  // Used on list views, returns a list of bows.
  static Future<List<Bow>> bows() async {
    List<dynamic> temporary;
    try {
      // Decodes the string into a list of objects.
      temporary = jsonDecode(await GitHub().table('bows.json'));
      return temporary.map(Bow.fromJson).toList();
    }
    catch (_) {
      // If an error occurred, check that you are receiving a JSON format string or if the JSON string matches the entity.
      throw Exception('Unable to convert JSON to Bow object.');
    }
  }

  // Used on list views, returns a list of canes.
  static Future<List<Cane>> canes() async {
    List<dynamic> temporary;
    try {
      // Decodes the string into a list of objects.
      temporary = jsonDecode(await GitHub().table('canes.json'));
      return temporary.map(Cane.fromJson).toList();
    }
    catch (_) {
      // If an error occurred, check that you are receiving a JSON format string or if the JSON string matches the entity.
      throw Exception('Unable to convert JSON to Cane object.');
    }
  }

  // Used on list views, returns a list of claws.
  static Future<List<Claw>> claws() async {
    List<dynamic> temporary;
    try {
      // Decodes the string into a list of objects.
      temporary = jsonDecode(await GitHub().table('claws.json'));
      return temporary.map(Claw.fromJson).toList();
    }
    catch (_) {
      // If an error occurred, check that you are receiving a JSON format string or if the JSON string matches the entity.
      throw Exception('Unable to convert JSON to Claw object.');
    }
  }

  // Used on list views, returns a list of specials.
  static Future<List<Special>> specials() async {
    List<dynamic> temporary;
    try {
      // Decodes the string into a list of objects.
      temporary = jsonDecode(await GitHub().table('specials.json'));
      return temporary.map(Special.fromJson).toList();
    }
    catch (_) {
      // If an error occurred, check that you are receiving a JSON format string or if the JSON string matches the entity.
      throw Exception('Unable to convert JSON to Special object.');
    }
  }

  // Used on list views, returns a list of swords.
  static Future<List<Sword>> swords() async {
    List<dynamic> temporary;
    try {
      // Decodes the string into a list of objects.
      temporary = jsonDecode(await GitHub().table('swords.json'));
      return temporary.map(Sword.fromJson).toList();
    }
    catch (_) {
      // If an error occurred, check that you are receiving a JSON format string or if the JSON string matches the entity.
      throw Exception('Unable to convert JSON to Sword object.');
    }
  }

  // Used on list views, returns a list of throwings.
  static Future<List<Throwing>> throwings() async {
    List<dynamic> temporary;
    try {
      // Decodes the string into a list of objects.
      temporary = jsonDecode(await GitHub().table('throwings.json'));
      return temporary.map(Throwing.fromJson).toList();
    }
    catch (_) {
      // If an error occurred, check that you are receiving a JSON format string or if the JSON string matches the entity.
      throw Exception('Unable to convert JSON to Throwing object.');
    }
  }
}