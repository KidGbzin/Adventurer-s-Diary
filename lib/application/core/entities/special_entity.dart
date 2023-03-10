import 'object_interface.dart';

class Special extends IObject {
  String? description;

  Special({
    required super.identifier,
    required super.name,
    required super.tradeable,
    required super.type,
    this.description,
  });

  factory Special.fromJson(dynamic string) {
    return Special(
      description: string['description'] as String?,
      identifier: string['identifier'] as String,
      name: string['name'] as String,
      tradeable: string['tradeable'] as bool,
      type: string['type'] as String,
    );
  }
}