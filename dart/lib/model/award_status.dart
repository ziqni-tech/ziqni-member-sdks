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
class AwardStatus {
  /// Instantiate a new enum with the provided [value].
  const AwardStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unknown = AwardStatus._(r'Unknown');
  static const preparing = AwardStatus._(r'Preparing');
  static const notClaimed = AwardStatus._(r'NotClaimed');
  static const claimed = AwardStatus._(r'Claimed');
  static const expired = AwardStatus._(r'Expired');

  /// List of all possible values in this [enum][AwardStatus].
  static const values = <AwardStatus>[
    unknown,
    preparing,
    notClaimed,
    claimed,
    expired,
  ];

  static AwardStatus? fromJson(dynamic value) => AwardStatusTypeTransformer().decode(value);

  static List<AwardStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AwardStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AwardStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AwardStatus] to String,
/// and [decode] dynamic data back to [AwardStatus].
class AwardStatusTypeTransformer {
  factory AwardStatusTypeTransformer() => _instance ??= const AwardStatusTypeTransformer._();

  const AwardStatusTypeTransformer._();

  String encode(AwardStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a AwardStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AwardStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Unknown': return AwardStatus.unknown;
        case r'Preparing': return AwardStatus.preparing;
        case r'NotClaimed': return AwardStatus.notClaimed;
        case r'Claimed': return AwardStatus.claimed;
        case r'Expired': return AwardStatus.expired;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AwardStatusTypeTransformer] instance.
  static AwardStatusTypeTransformer? _instance;
}

