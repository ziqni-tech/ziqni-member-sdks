//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

/// The scoring strategy type. SUMMARY: * \"TotalCumulative\": The basic strategy where all the points sum up and are shown in the Leaderboard. Depending on the Rules, all the points are Cumulative. * \"SumBest\": This strategy requires a value to indicate how many highest points will be calculated and shown on the leaderboard * \"LimitedTo\": This strategy requires a value to indicate how many events will be summed up and shown in the leaderboard. * \"FirstTo\": This strategy requires a value to indicate how many points have to be received to complete the mission. 
class StrategyType {
  /// Instantiate a new enum with the provided [value].
  const StrategyType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const totalCumulative = StrategyType._(r'TotalCumulative');
  static const sumBest = StrategyType._(r'SumBest');
  static const limitedTo = StrategyType._(r'LimitedTo');
  static const firstTo = StrategyType._(r'FirstTo');

  /// List of all possible values in this [enum][StrategyType].
  static const values = <StrategyType>[
    totalCumulative,
    sumBest,
    limitedTo,
    firstTo,
  ];

  static StrategyType? fromJson(dynamic value) => StrategyTypeTypeTransformer().decode(value);

  static List<StrategyType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StrategyType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StrategyType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StrategyType] to String,
/// and [decode] dynamic data back to [StrategyType].
class StrategyTypeTypeTransformer {
  factory StrategyTypeTypeTransformer() => _instance ??= const StrategyTypeTypeTransformer._();

  const StrategyTypeTypeTransformer._();

  String encode(StrategyType data) => data.value;

  /// Decodes a [dynamic value][data] to a StrategyType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StrategyType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'TotalCumulative': return StrategyType.totalCumulative;
        case r'SumBest': return StrategyType.sumBest;
        case r'LimitedTo': return StrategyType.limitedTo;
        case r'FirstTo': return StrategyType.firstTo;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StrategyTypeTypeTransformer] instance.
  static StrategyTypeTypeTransformer? _instance;
}

