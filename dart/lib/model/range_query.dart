//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class RangeQuery {
  /// Returns a new [RangeQuery] instance.
  RangeQuery({
    this.gt,
    this.lt,
    this.constraints = const [],
  });

  /// Greater than value
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gt;

  /// Less than value
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lt;

  /// Additional constraints
  List<String> constraints;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RangeQuery &&
    other.gt == gt &&
    other.lt == lt &&
    _deepEquality.equals(other.constraints, constraints);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (gt == null ? 0 : gt!.hashCode) +
    (lt == null ? 0 : lt!.hashCode) +
    (constraints.hashCode);

  @override
  String toString() => 'RangeQuery[gt=$gt, lt=$lt, constraints=$constraints]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.gt != null) {
      json[r'gt'] = this.gt;
    } else {
      json[r'gt'] = null;
    }
    if (this.lt != null) {
      json[r'lt'] = this.lt;
    } else {
      json[r'lt'] = null;
    }
      json[r'constraints'] = this.constraints;
    return json;
  }

  /// Returns a new [RangeQuery] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RangeQuery? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RangeQuery[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RangeQuery[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RangeQuery(
        gt: mapValueOfType<String>(json, r'gt'),
        lt: mapValueOfType<String>(json, r'lt'),
        constraints: json[r'constraints'] is Iterable
            ? (json[r'constraints'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<RangeQuery> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RangeQuery>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RangeQuery.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RangeQuery> mapFromJson(dynamic json) {
    final map = <String, RangeQuery>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RangeQuery.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RangeQuery-objects as value to a dart map
  static Map<String, List<RangeQuery>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RangeQuery>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RangeQuery.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

