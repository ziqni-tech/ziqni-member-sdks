//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class EntityGraphResult {
  /// Returns a new [EntityGraphResult] instance.
  EntityGraphResult({
    this.nodes = const [],
    this.graphs = const [],
  });

  /// 
  List<EntityGraphNode> nodes;

  /// 
  List<EntityGraph> graphs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EntityGraphResult &&
    _deepEquality.equals(other.nodes, nodes) &&
    _deepEquality.equals(other.graphs, graphs);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (nodes.hashCode) +
    (graphs.hashCode);

  @override
  String toString() => 'EntityGraphResult[nodes=$nodes, graphs=$graphs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'nodes'] = this.nodes;
      json[r'graphs'] = this.graphs;
    return json;
  }

  /// Returns a new [EntityGraphResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EntityGraphResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EntityGraphResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EntityGraphResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EntityGraphResult(
        nodes: EntityGraphNode.listFromJson(json[r'nodes']),
        graphs: EntityGraph.listFromJson(json[r'graphs']),
      );
    }
    return null;
  }

  static List<EntityGraphResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EntityGraphResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EntityGraphResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EntityGraphResult> mapFromJson(dynamic json) {
    final map = <String, EntityGraphResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EntityGraphResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EntityGraphResult-objects as value to a dart map
  static Map<String, List<EntityGraphResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EntityGraphResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EntityGraphResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'nodes',
  };
}

