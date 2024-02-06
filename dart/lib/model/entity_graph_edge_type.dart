//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

/// The type of link
class EntityGraphEdgeType {
  /// Instantiate a new enum with the provided [value].
  const EntityGraphEdgeType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ROOT = EntityGraphEdgeType._(r'ROOT');
  static const MUST = EntityGraphEdgeType._(r'MUST');
  static const SHOULD = EntityGraphEdgeType._(r'SHOULD');
  static const MUST_NOT = EntityGraphEdgeType._(r'MUST_NOT');
  static const UNKNOWN = EntityGraphEdgeType._(r'UNKNOWN');
  static const BROKEN = EntityGraphEdgeType._(r'BROKEN');

  /// List of all possible values in this [enum][EntityGraphEdgeType].
  static const values = <EntityGraphEdgeType>[
    ROOT,
    MUST,
    SHOULD,
    MUST_NOT,
    UNKNOWN,
    BROKEN,
  ];

  static EntityGraphEdgeType? fromJson(dynamic value) => EntityGraphEdgeTypeTypeTransformer().decode(value);

  static List<EntityGraphEdgeType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EntityGraphEdgeType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EntityGraphEdgeType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EntityGraphEdgeType] to String,
/// and [decode] dynamic data back to [EntityGraphEdgeType].
class EntityGraphEdgeTypeTypeTransformer {
  factory EntityGraphEdgeTypeTypeTransformer() => _instance ??= const EntityGraphEdgeTypeTypeTransformer._();

  const EntityGraphEdgeTypeTypeTransformer._();

  String encode(EntityGraphEdgeType data) => data.value;

  /// Decodes a [dynamic value][data] to a EntityGraphEdgeType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EntityGraphEdgeType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ROOT': return EntityGraphEdgeType.ROOT;
        case r'MUST': return EntityGraphEdgeType.MUST;
        case r'SHOULD': return EntityGraphEdgeType.SHOULD;
        case r'MUST_NOT': return EntityGraphEdgeType.MUST_NOT;
        case r'UNKNOWN': return EntityGraphEdgeType.UNKNOWN;
        case r'BROKEN': return EntityGraphEdgeType.BROKEN;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EntityGraphEdgeTypeTypeTransformer] instance.
  static EntityGraphEdgeTypeTypeTransformer? _instance;
}

