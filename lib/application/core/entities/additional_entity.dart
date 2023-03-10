import 'object_interface.dart';

class Additional extends IObject {
  int attack;
  String? downgrade;
  String? description;
  int defense;
  int? strengthened;
  String? upgrade;

  Additional({
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

  factory Additional.fromJson(dynamic string) {
    return Additional(
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