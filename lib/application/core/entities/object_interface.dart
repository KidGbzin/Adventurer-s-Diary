// Contract used on all in-game inventory items.
abstract class IObject {
  String identifier;
  String name;
  bool tradeable;
  String type;

  IObject({
    required this.identifier,
    required this.name,
    required this.tradeable,
    required this.type,
  });
}