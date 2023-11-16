//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

/// The status of award
class EntityGraphTraversal {
  /// Instantiate a new enum with the provided [value].
  const EntityGraphTraversal._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DEPTH_FIRST = EntityGraphTraversal._(r'DEPTH_FIRST');
  static const BREADTH_FIRST = EntityGraphTraversal._(r'BREADTH_FIRST');

  /// List of all possible values in this [enum][EntityGraphTraversal].
  static const values = <EntityGraphTraversal>[
    DEPTH_FIRST,
    BREADTH_FIRST,
  ];

  static EntityGraphTraversal? fromJson(dynamic value) => EntityGraphTraversalTypeTransformer().decode(value);

  static List<EntityGraphTraversal> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EntityGraphTraversal>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EntityGraphTraversal.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EntityGraphTraversal] to String,
/// and [decode] dynamic data back to [EntityGraphTraversal].
class EntityGraphTraversalTypeTransformer {
  factory EntityGraphTraversalTypeTransformer() => _instance ??= const EntityGraphTraversalTypeTransformer._();

  const EntityGraphTraversalTypeTransformer._();

  String encode(EntityGraphTraversal data) => data.value;

  /// Decodes a [dynamic value][data] to a EntityGraphTraversal.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EntityGraphTraversal? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DEPTH_FIRST': return EntityGraphTraversal.DEPTH_FIRST;
        case r'BREADTH_FIRST': return EntityGraphTraversal.BREADTH_FIRST;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EntityGraphTraversalTypeTransformer] instance.
  static EntityGraphTraversalTypeTransformer? _instance;
}

