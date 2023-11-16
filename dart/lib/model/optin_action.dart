//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

/// 
class OptinAction {
  /// Instantiate a new enum with the provided [value].
  const OptinAction._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const join = OptinAction._(r'join');
  static const leave = OptinAction._(r'leave');

  /// List of all possible values in this [enum][OptinAction].
  static const values = <OptinAction>[
    join,
    leave,
  ];

  static OptinAction? fromJson(dynamic value) => OptinActionTypeTransformer().decode(value);

  static List<OptinAction> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OptinAction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OptinAction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OptinAction] to String,
/// and [decode] dynamic data back to [OptinAction].
class OptinActionTypeTransformer {
  factory OptinActionTypeTransformer() => _instance ??= const OptinActionTypeTransformer._();

  const OptinActionTypeTransformer._();

  String encode(OptinAction data) => data.value;

  /// Decodes a [dynamic value][data] to a OptinAction.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OptinAction? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'join': return OptinAction.join;
        case r'leave': return OptinAction.leave;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OptinActionTypeTransformer] instance.
  static OptinActionTypeTransformer? _instance;
}

