//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

/// The type of schedule
class ScheduleType {
  /// Instantiate a new enum with the provided [value].
  const ScheduleType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const once = ScheduleType._(r'Once');
  static const repeatedly = ScheduleType._(r'Repeatedly');
  static const daily = ScheduleType._(r'Daily');
  static const weekly = ScheduleType._(r'Weekly');
  static const monthly = ScheduleType._(r'Monthly');

  /// List of all possible values in this [enum][ScheduleType].
  static const values = <ScheduleType>[
    once,
    repeatedly,
    daily,
    weekly,
    monthly,
  ];

  static ScheduleType? fromJson(dynamic value) => ScheduleTypeTypeTransformer().decode(value);

  static List<ScheduleType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScheduleType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScheduleType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ScheduleType] to String,
/// and [decode] dynamic data back to [ScheduleType].
class ScheduleTypeTypeTransformer {
  factory ScheduleTypeTypeTransformer() => _instance ??= const ScheduleTypeTypeTransformer._();

  const ScheduleTypeTypeTransformer._();

  String encode(ScheduleType data) => data.value;

  /// Decodes a [dynamic value][data] to a ScheduleType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ScheduleType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Once': return ScheduleType.once;
        case r'Repeatedly': return ScheduleType.repeatedly;
        case r'Daily': return ScheduleType.daily;
        case r'Weekly': return ScheduleType.weekly;
        case r'Monthly': return ScheduleType.monthly;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ScheduleTypeTypeTransformer] instance.
  static ScheduleTypeTypeTransformer? _instance;
}

