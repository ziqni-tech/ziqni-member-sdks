//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class OptinStatesFilter {
  /// Returns a new [OptinStatesFilter] instance.
  OptinStatesFilter({
    this.entityTypes = const [],
    this.ids = const [],
    this.statusCodes,
    this.skip,
    this.limit,
  });

  /// Optionally provide entity types to filer by. Valid options are Achievement, Competition, or Contest
  List<EntityType> entityTypes;

  /// Optionally provide a list of identifiers for either Achievements, Competitions, or Contest
  List<String> ids;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RangeQuery? statusCodes;

  /// The number of records to skip. Zero [0] is the defualt value
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? skip;

  /// Limit t6he results. The default is 20 if left empty
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OptinStatesFilter &&
    _deepEquality.equals(other.entityTypes, entityTypes) &&
    _deepEquality.equals(other.ids, ids) &&
    other.statusCodes == statusCodes &&
    other.skip == skip &&
    other.limit == limit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entityTypes.hashCode) +
    (ids.hashCode) +
    (statusCodes == null ? 0 : statusCodes!.hashCode) +
    (skip == null ? 0 : skip!.hashCode) +
    (limit == null ? 0 : limit!.hashCode);

  @override
  String toString() => 'OptinStatesFilter[entityTypes=$entityTypes, ids=$ids, statusCodes=$statusCodes, skip=$skip, limit=$limit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'entityTypes'] = this.entityTypes;
      json[r'ids'] = this.ids;
    if (this.statusCodes != null) {
      json[r'statusCodes'] = this.statusCodes;
    } else {
      json[r'statusCodes'] = null;
    }
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
    return json;
  }

  /// Returns a new [OptinStatesFilter] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OptinStatesFilter? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OptinStatesFilter[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OptinStatesFilter[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OptinStatesFilter(
        entityTypes: EntityType.listFromJson(json[r'entityTypes']),
        ids: json[r'ids'] is Iterable
            ? (json[r'ids'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        statusCodes: RangeQuery.fromJson(json[r'statusCodes']),
        skip: mapValueOfType<int>(json, r'skip'),
        limit: mapValueOfType<int>(json, r'limit'),
      );
    }
    return null;
  }

  static List<OptinStatesFilter> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OptinStatesFilter>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OptinStatesFilter.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OptinStatesFilter> mapFromJson(dynamic json) {
    final map = <String, OptinStatesFilter>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OptinStatesFilter.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OptinStatesFilter-objects as value to a dart map
  static Map<String, List<OptinStatesFilter>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OptinStatesFilter>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OptinStatesFilter.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

