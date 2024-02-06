//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class MetaBasic {
  /// Returns a new [MetaBasic] instance.
  MetaBasic({
    required this.objectType,
    this.totalRecords,
    required this.resultCount,
    required this.errorCount,
  });

  String objectType;

  /// The count of all results
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalRecords;

  /// The count of successful results
  int resultCount;

  /// The count of errors
  int errorCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MetaBasic &&
    other.objectType == objectType &&
    other.totalRecords == totalRecords &&
    other.resultCount == resultCount &&
    other.errorCount == errorCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (objectType.hashCode) +
    (totalRecords == null ? 0 : totalRecords!.hashCode) +
    (resultCount.hashCode) +
    (errorCount.hashCode);

  @override
  String toString() => 'MetaBasic[objectType=$objectType, totalRecords=$totalRecords, resultCount=$resultCount, errorCount=$errorCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'objectType'] = this.objectType;
    if (this.totalRecords != null) {
      json[r'totalRecords'] = this.totalRecords;
    } else {
      json[r'totalRecords'] = null;
    }
      json[r'resultCount'] = this.resultCount;
      json[r'errorCount'] = this.errorCount;
    return json;
  }

  /// Returns a new [MetaBasic] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MetaBasic? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MetaBasic[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MetaBasic[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MetaBasic(
        objectType: mapValueOfType<String>(json, r'objectType')!,
        totalRecords: mapValueOfType<int>(json, r'totalRecords'),
        resultCount: mapValueOfType<int>(json, r'resultCount')!,
        errorCount: mapValueOfType<int>(json, r'errorCount')!,
      );
    }
    return null;
  }

  static List<MetaBasic> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MetaBasic>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MetaBasic.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MetaBasic> mapFromJson(dynamic json) {
    final map = <String, MetaBasic>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MetaBasic.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MetaBasic-objects as value to a dart map
  static Map<String, List<MetaBasic>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MetaBasic>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MetaBasic.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'objectType',
    'resultCount',
    'errorCount',
  };
}

