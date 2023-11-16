//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class InstantWinFilter {
  /// Returns a new [InstantWinFilter] instance.
  InstantWinFilter({
    this.tags = const [],
    this.ids = const [],
    this.skip,
    this.limit,
    this.constraints = const [],
    this.instantWinTypes = const [],
  });

  /// 
  List<String> tags;

  /// 
  List<String> ids;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? skip;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  /// Specify the constraints that need to be applied to the filter.
  List<String> constraints;

  /// 
  List<int> instantWinTypes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InstantWinFilter &&
    _deepEquality.equals(other.tags, tags) &&
    _deepEquality.equals(other.ids, ids) &&
    other.skip == skip &&
    other.limit == limit &&
    _deepEquality.equals(other.constraints, constraints) &&
    _deepEquality.equals(other.instantWinTypes, instantWinTypes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tags.hashCode) +
    (ids.hashCode) +
    (skip == null ? 0 : skip!.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (constraints.hashCode) +
    (instantWinTypes.hashCode);

  @override
  String toString() => 'InstantWinFilter[tags=$tags, ids=$ids, skip=$skip, limit=$limit, constraints=$constraints, instantWinTypes=$instantWinTypes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'tags'] = this.tags;
      json[r'ids'] = this.ids;
    if (this.skip != null) {
      json[r'skip'] = this.skip;
    } else {
      json[r'skip'] = null;
    }
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
      json[r'constraints'] = this.constraints;
      json[r'instantWinTypes'] = this.instantWinTypes;
    return json;
  }

  /// Returns a new [InstantWinFilter] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InstantWinFilter? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InstantWinFilter[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InstantWinFilter[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InstantWinFilter(
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        ids: json[r'ids'] is Iterable
            ? (json[r'ids'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        skip: mapValueOfType<int>(json, r'skip'),
        limit: mapValueOfType<int>(json, r'limit'),
        constraints: json[r'constraints'] is Iterable
            ? (json[r'constraints'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        instantWinTypes: json[r'instantWinTypes'] is Iterable
            ? (json[r'instantWinTypes'] as Iterable).cast<int>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<InstantWinFilter> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InstantWinFilter>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InstantWinFilter.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InstantWinFilter> mapFromJson(dynamic json) {
    final map = <String, InstantWinFilter>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InstantWinFilter.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InstantWinFilter-objects as value to a dart map
  static Map<String, List<InstantWinFilter>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InstantWinFilter>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InstantWinFilter.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

