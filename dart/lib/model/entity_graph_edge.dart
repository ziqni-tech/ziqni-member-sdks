//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class EntityGraphEdge {
  /// Returns a new [EntityGraphEdge] instance.
  EntityGraphEdge({
    required this.ordering,
    this.constraints = const [],
    this.tailEntityId,
    this.headEntityId,
    this.graphEdgeType,
  });

  /// 
  int ordering;

  /// 
  List<String> constraints;

  /// X the tail of the edge 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tailEntityId;

  /// Y the head of the edge.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? headEntityId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EntityGraphEdgeType? graphEdgeType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EntityGraphEdge &&
    other.ordering == ordering &&
    _deepEquality.equals(other.constraints, constraints) &&
    other.tailEntityId == tailEntityId &&
    other.headEntityId == headEntityId &&
    other.graphEdgeType == graphEdgeType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ordering.hashCode) +
    (constraints.hashCode) +
    (tailEntityId == null ? 0 : tailEntityId!.hashCode) +
    (headEntityId == null ? 0 : headEntityId!.hashCode) +
    (graphEdgeType == null ? 0 : graphEdgeType!.hashCode);

  @override
  String toString() => 'EntityGraphEdge[ordering=$ordering, constraints=$constraints, tailEntityId=$tailEntityId, headEntityId=$headEntityId, graphEdgeType=$graphEdgeType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ordering'] = this.ordering;
      json[r'constraints'] = this.constraints;
    if (this.tailEntityId != null) {
      json[r'tailEntityId'] = this.tailEntityId;
    } else {
      json[r'tailEntityId'] = null;
    }
    if (this.headEntityId != null) {
      json[r'headEntityId'] = this.headEntityId;
    } else {
      json[r'headEntityId'] = null;
    }
    if (this.graphEdgeType != null) {
      json[r'graphEdgeType'] = this.graphEdgeType;
    } else {
      json[r'graphEdgeType'] = null;
    }
    return json;
  }

  /// Returns a new [EntityGraphEdge] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EntityGraphEdge? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EntityGraphEdge[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EntityGraphEdge[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EntityGraphEdge(
        ordering: mapValueOfType<int>(json, r'ordering')!,
        constraints: json[r'constraints'] is Iterable
            ? (json[r'constraints'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        tailEntityId: mapValueOfType<String>(json, r'tailEntityId'),
        headEntityId: mapValueOfType<String>(json, r'headEntityId'),
        graphEdgeType: EntityGraphEdgeType.fromJson(json[r'graphEdgeType']),
      );
    }
    return null;
  }

  static List<EntityGraphEdge> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EntityGraphEdge>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EntityGraphEdge.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EntityGraphEdge> mapFromJson(dynamic json) {
    final map = <String, EntityGraphEdge>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EntityGraphEdge.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EntityGraphEdge-objects as value to a dart map
  static Map<String, List<EntityGraphEdge>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EntityGraphEdge>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EntityGraphEdge.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ordering',
  };
}

