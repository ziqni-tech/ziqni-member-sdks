//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class RuleRoutine {
  /// Returns a new [RuleRoutine] instance.
  RuleRoutine({
    this.routine,
    this.arguments = const [],
    this.lineNumber,
  });

  /// A routine to execute if the conditional expressions in the matching group evaluted to true
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? routine;

  /// The arguments of the routine.
  List<RuleArgument> arguments;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lineNumber;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RuleRoutine &&
    other.routine == routine &&
    _deepEquality.equals(other.arguments, arguments) &&
    other.lineNumber == lineNumber;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (routine == null ? 0 : routine!.hashCode) +
    (arguments.hashCode) +
    (lineNumber == null ? 0 : lineNumber!.hashCode);

  @override
  String toString() => 'RuleRoutine[routine=$routine, arguments=$arguments, lineNumber=$lineNumber]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.routine != null) {
      json[r'routine'] = this.routine;
    } else {
      json[r'routine'] = null;
    }
      json[r'arguments'] = this.arguments;
    if (this.lineNumber != null) {
      json[r'lineNumber'] = this.lineNumber;
    } else {
      json[r'lineNumber'] = null;
    }
    return json;
  }

  /// Returns a new [RuleRoutine] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RuleRoutine? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RuleRoutine[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RuleRoutine[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RuleRoutine(
        routine: mapValueOfType<String>(json, r'routine'),
        arguments: RuleArgument.listFromJson(json[r'arguments']),
        lineNumber: mapValueOfType<int>(json, r'lineNumber'),
      );
    }
    return null;
  }

  static List<RuleRoutine> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RuleRoutine>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RuleRoutine.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RuleRoutine> mapFromJson(dynamic json) {
    final map = <String, RuleRoutine>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RuleRoutine.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RuleRoutine-objects as value to a dart map
  static Map<String, List<RuleRoutine>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RuleRoutine>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RuleRoutine.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

