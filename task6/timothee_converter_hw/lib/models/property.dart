import 'unit.dart';

enum PROPERTY {

  length,
  mass,
  numeralSystems,
}

abstract class Property<K, V> {
  /// The name of the [Property]. If it is not a custom [Property] is one of the
  /// values of [PROPERTY].
  late dynamic name;

  /// The size of the [Property], i.e. the number of the [Unit]s that belong to
  /// that [Property].
  late int size;

  /// Convert the [value] of the units with name [name] to all the other units.
  void convert(K name, V? value);

  /// Returns all the units converted with prefixes
  List<Unit> getAll();

  /// Returns the [Unit] with the corresponding name
  Unit getUnit(K name);
}
