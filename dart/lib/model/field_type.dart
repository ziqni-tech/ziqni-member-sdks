//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

/// The data type of custom field
class FieldType {
  /// Instantiate a new enum with the provided [value].
  const FieldType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const Text = FieldType._(r'Text');
  static const TextArray = FieldType._(r'TextArray');
  static const Number = FieldType._(r'Number');
  static const NumberArray = FieldType._(r'NumberArray');

  /// List of all possible values in this [enum][FieldType].
  static const values = <FieldType>[
    Text,
    TextArray,
    Number,
    NumberArray,
  ];

  static FieldType? fromJson(dynamic value) => FieldTypeTypeTransformer().decode(value);

  static List<FieldType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FieldType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FieldType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FieldType] to String,
/// and [decode] dynamic data back to [FieldType].
class FieldTypeTypeTransformer {
  factory FieldTypeTypeTransformer() => _instance ??= const FieldTypeTypeTransformer._();

  const FieldTypeTypeTransformer._();

  String encode(FieldType data) => data.value;

  /// Decodes a [dynamic value][data] to a FieldType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FieldType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Text': return FieldType.Text;
        case r'TextArray': return FieldType.TextArray;
        case r'Number': return FieldType.Number;
        case r'NumberArray': return FieldType.NumberArray;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FieldTypeTypeTransformer] instance.
  static FieldTypeTypeTransformer? _instance;
}

