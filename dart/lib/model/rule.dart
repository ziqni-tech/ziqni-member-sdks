//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class Rule {
  /// Returns a new [Rule] instance.
  Rule({
    this.entityId,
    this.action,
    this.context,
    this.rules,
    this.id,
    this.entityType,
  });

  /// The id of the context object this rule refers to
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entityId;

  /// The action this rule describes, like start.contest, or points.awarded
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? action;

  /// The context of this rule like achievement, competition, or contest 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? context;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RuleExpression? rules;

  /// Unique system identifier of a Main Rule
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entityType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Rule &&
    other.entityId == entityId &&
    other.action == action &&
    other.context == context &&
    other.rules == rules &&
    other.id == id &&
    other.entityType == entityType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entityId == null ? 0 : entityId!.hashCode) +
    (action == null ? 0 : action!.hashCode) +
    (context == null ? 0 : context!.hashCode) +
    (rules == null ? 0 : rules!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (entityType == null ? 0 : entityType!.hashCode);

  @override
  String toString() => 'Rule[entityId=$entityId, action=$action, context=$context, rules=$rules, id=$id, entityType=$entityType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.entityId != null) {
      json[r'entityId'] = this.entityId;
    } else {
      json[r'entityId'] = null;
    }
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
    if (this.context != null) {
      json[r'context'] = this.context;
    } else {
      json[r'context'] = null;
    }
    if (this.rules != null) {
      json[r'rules'] = this.rules;
    } else {
      json[r'rules'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.entityType != null) {
      json[r'entityType'] = this.entityType;
    } else {
      json[r'entityType'] = null;
    }
    return json;
  }

  /// Returns a new [Rule] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Rule? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Rule[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Rule[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Rule(
        entityId: mapValueOfType<String>(json, r'entityId'),
        action: mapValueOfType<String>(json, r'action'),
        context: mapValueOfType<String>(json, r'context'),
        rules: RuleExpression.fromJson(json[r'rules']),
        id: mapValueOfType<String>(json, r'id'),
        entityType: mapValueOfType<String>(json, r'entityType'),
      );
    }
    return null;
  }

  static List<Rule> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Rule>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Rule.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Rule> mapFromJson(dynamic json) {
    final map = <String, Rule>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Rule.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Rule-objects as value to a dart map
  static Map<String, List<Rule>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Rule>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Rule.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

