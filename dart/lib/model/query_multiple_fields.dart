//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class QueryMultipleFields {
  /// Returns a new [QueryMultipleFields] instance.
  QueryMultipleFields({
    this.queryFields = const [],
    this.queryValue,
  });

  /// Multiple fields to be included in search for the given value.
  List<String> queryFields;

  /// The value to search for across given fields.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? queryValue;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QueryMultipleFields &&
    _deepEquality.equals(other.queryFields, queryFields) &&
    other.queryValue == queryValue;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (queryFields.hashCode) +
    (queryValue == null ? 0 : queryValue!.hashCode);

  @override
  String toString() => 'QueryMultipleFields[queryFields=$queryFields, queryValue=$queryValue]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'queryFields'] = this.queryFields;
    if (this.queryValue != null) {
      json[r'queryValue'] = this.queryValue;
    } else {
      json[r'queryValue'] = null;
    }
    return json;
  }

  /// Returns a new [QueryMultipleFields] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QueryMultipleFields? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QueryMultipleFields[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QueryMultipleFields[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QueryMultipleFields(
        queryFields: json[r'queryFields'] is Iterable
            ? (json[r'queryFields'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        queryValue: mapValueOfType<String>(json, r'queryValue'),
      );
    }
    return null;
  }

  static List<QueryMultipleFields> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QueryMultipleFields>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QueryMultipleFields.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QueryMultipleFields> mapFromJson(dynamic json) {
    final map = <String, QueryMultipleFields>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QueryMultipleFields.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QueryMultipleFields-objects as value to a dart map
  static Map<String, List<QueryMultipleFields>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QueryMultipleFields>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QueryMultipleFields.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

