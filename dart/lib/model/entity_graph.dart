//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class EntityGraph {
  /// Returns a new [EntityGraph] instance.
  EntityGraph({
    this.edges = const [],
    this.nodesInCompletedState,
  });

  /// Pairs of nodes that specify a line joining these two nodes are said to form an edge
  List<EntityGraphEdge> edges;

  /// Nodes in this graph that are in state greater than 35
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nodesInCompletedState;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EntityGraph &&
    _deepEquality.equals(other.edges, edges) &&
    other.nodesInCompletedState == nodesInCompletedState;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (edges.hashCode) +
    (nodesInCompletedState == null ? 0 : nodesInCompletedState!.hashCode);

  @override
  String toString() => 'EntityGraph[edges=$edges, nodesInCompletedState=$nodesInCompletedState]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'edges'] = this.edges;
    if (this.nodesInCompletedState != null) {
      json[r'nodesInCompletedState'] = this.nodesInCompletedState;
    } else {
      json[r'nodesInCompletedState'] = null;
    }
    return json;
  }

  /// Returns a new [EntityGraph] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EntityGraph? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EntityGraph[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EntityGraph[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EntityGraph(
        edges: EntityGraphEdge.listFromJson(json[r'edges']),
        nodesInCompletedState: mapValueOfType<int>(json, r'nodesInCompletedState'),
      );
    }
    return null;
  }

  static List<EntityGraph> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EntityGraph>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EntityGraph.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EntityGraph> mapFromJson(dynamic json) {
    final map = <String, EntityGraph>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EntityGraph.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EntityGraph-objects as value to a dart map
  static Map<String, List<EntityGraph>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EntityGraph>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EntityGraph.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

