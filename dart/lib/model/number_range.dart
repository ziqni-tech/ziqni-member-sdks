//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class NumberRange {
  /// Returns a new [NumberRange] instance.
  NumberRange({
    this.moreThan,
    this.lessThan,
  });

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? moreThan;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lessThan;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NumberRange &&
    other.moreThan == moreThan &&
    other.lessThan == lessThan;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (moreThan == null ? 0 : moreThan!.hashCode) +
    (lessThan == null ? 0 : lessThan!.hashCode);

  @override
  String toString() => 'NumberRange[moreThan=$moreThan, lessThan=$lessThan]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.moreThan != null) {
      json[r'moreThan'] = this.moreThan;
    } else {
      json[r'moreThan'] = null;
    }
    if (this.lessThan != null) {
      json[r'lessThan'] = this.lessThan;
    } else {
      json[r'lessThan'] = null;
    }
    return json;
  }

  /// Returns a new [NumberRange] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NumberRange? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NumberRange[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NumberRange[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NumberRange(
        moreThan: mapValueOfType<int>(json, r'moreThan'),
        lessThan: mapValueOfType<int>(json, r'lessThan'),
      );
    }
    return null;
  }

  static List<NumberRange> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NumberRange>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NumberRange.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NumberRange> mapFromJson(dynamic json) {
    final map = <String, NumberRange>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NumberRange.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NumberRange-objects as value to a dart map
  static Map<String, List<NumberRange>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NumberRange>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NumberRange.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

