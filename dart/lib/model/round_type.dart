//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

/// The type of rounds in a contest
class RoundType {
  /// Instantiate a new enum with the provided [value].
  const RoundType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const timeBound = RoundType._(r'TimeBound');
  static const targetBased = RoundType._(r'TargetBased');

  /// List of all possible values in this [enum][RoundType].
  static const values = <RoundType>[
    timeBound,
    targetBased,
  ];

  static RoundType? fromJson(dynamic value) => RoundTypeTypeTransformer().decode(value);

  static List<RoundType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RoundType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RoundType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RoundType] to String,
/// and [decode] dynamic data back to [RoundType].
class RoundTypeTypeTransformer {
  factory RoundTypeTypeTransformer() => _instance ??= const RoundTypeTypeTransformer._();

  const RoundTypeTypeTransformer._();

  String encode(RoundType data) => data.value;

  /// Decodes a [dynamic value][data] to a RoundType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RoundType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'TimeBound': return RoundType.timeBound;
        case r'TargetBased': return RoundType.targetBased;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RoundTypeTypeTransformer] instance.
  static RoundTypeTypeTransformer? _instance;
}

