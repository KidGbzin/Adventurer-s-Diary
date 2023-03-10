import 'object_interface.dart';

class Bow extends IObject {
  int attack;
  int defense;
  String? description;
  String? downgrade;
  int? strengthened;
  String? upgrade;

  Bow({
    required super.identifier,
    required super.name,
    required super.tradeable,
    required super.type,
    required this.attack,
    required this.defense,
    this.description,
    this.downgrade,
    this.strengthened,
    this.upgrade,
  });

  factory Bow.fromJson(dynamic string) {
    return Bow(
      attack: string['attack'] as int,
      defense: string['defense'] as int,
      description: string['description'] as String?,
      downgrade: string['downgrade'] as String?,
      identifier: string['identifier'] as String,
      name: string['name'] as String,
      strengthened: string['strengthened'] as int?,
      tradeable: string['tradeable'] as bool,
      type: string['type'] as String,
      upgrade: string['upgrade'] as String?,
    );
  }
}