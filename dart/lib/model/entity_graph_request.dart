//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class EntityGraphRequest {
  /// Returns a new [EntityGraphRequest] instance.
  EntityGraphRequest({
    this.ids = const [],
    this.constraints = const [],
    this.traversal,
    this.languageKey,
    this.includes = const [],
    required this.entityType,
  });

  /// The identifier of the node to create a connected graph for
  List<String> ids;

  /// Specify the constraints that need to be applied to the filter.
  List<String> constraints;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EntityGraphTraversal? traversal;

  /// The language codes can be found in the settings/transalations section of the back office
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? languageKey;

  /// What objects to include from the entity in this response. For achievement the following can be included; description, memberTagsFilter, scheduling, and termsAndConditions
  List<String> includes;

  EntityType entityType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EntityGraphRequest &&
    _deepEquality.equals(other.ids, ids) &&
    _deepEquality.equals(other.constraints, constraints) &&
    other.traversal == traversal &&
    other.languageKey == languageKey &&
    _deepEquality.equals(other.includes, includes) &&
    other.entityType == entityType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ids.hashCode) +
    (constraints.hashCode) +
    (traversal == null ? 0 : traversal!.hashCode) +
    (languageKey == null ? 0 : languageKey!.hashCode) +
    (includes.hashCode) +
    (entityType.hashCode);

  @override
  String toString() => 'EntityGraphRequest[ids=$ids, constraints=$constraints, traversal=$traversal, languageKey=$languageKey, includes=$includes, entityType=$entityType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ids'] = this.ids;
      json[r'constraints'] = this.constraints;
    if (this.traversal != null) {
      json[r'traversal'] = this.traversal;
    } else {
      json[r'traversal'] = null;
    }
    if (this.languageKey != null) {
      json[r'languageKey'] = this.languageKey;
    } else {
      json[r'languageKey'] = null;
    }
      json[r'includes'] = this.includes;
      json[r'entityType'] = this.entityType;
    return json;
  }

  /// Returns a new [EntityGraphRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EntityGraphRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EntityGraphRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EntityGraphRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EntityGraphRequest(
        ids: json[r'ids'] is Iterable
            ? (json[r'ids'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        constraints: json[r'constraints'] is Iterable
            ? (json[r'constraints'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        traversal: EntityGraphTraversal.fromJson(json[r'traversal']),
        languageKey: mapValueOfType<String>(json, r'languageKey'),
        includes: json[r'includes'] is Iterable
            ? (json[r'includes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        entityType: EntityType.fromJson(json[r'entityType'])!,
      );
    }
    return null;
  }

  static List<EntityGraphRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EntityGraphRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EntityGraphRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EntityGraphRequest> mapFromJson(dynamic json) {
    final map = <String, EntityGraphRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EntityGraphRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EntityGraphRequest-objects as value to a dart map
  static Map<String, List<EntityGraphRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EntityGraphRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EntityGraphRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ids',
    'entityType',
  };
}

