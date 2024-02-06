//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class RuleExpression {
  /// Returns a new [RuleExpression] instance.
  RuleExpression({
    required this.type,
    this.mustMatchAll,
    this.mustEvaluateTo,
    this.scope,
    this.operand,
    this.operator_,
    this.value,
    this.rules = const [],
    this.then = const [],
    this.lineNumber,
  });

  /// condition or expression or routine
  String type;

  /// All expressions in the condition must either evaluate to TRUE or FALSE if set to TRUE
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? mustMatchAll;

  /// All the expressions of this condition must either evaluate to TRUE or FALSE
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? mustEvaluateTo;

  /// The scope of the operand used in the expression
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scope;

  /// The order the rules have to be executed in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? operand;

  /// [ *.* ] or [ .* ] or [ == ] or [ > ] or [ >= ] or [ <=]  or [ < ] or [ <> ]
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? operator_;

  /// The value associated with the expression
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  /// 
  List<RuleExpression> rules;

  /// 
  List<RuleRoutine> then;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lineNumber;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RuleExpression &&
    other.type == type &&
    other.mustMatchAll == mustMatchAll &&
    other.mustEvaluateTo == mustEvaluateTo &&
    other.scope == scope &&
    other.operand == operand &&
    other.operator_ == operator_ &&
    other.value == value &&
    _deepEquality.equals(other.rules, rules) &&
    _deepEquality.equals(other.then, then) &&
    other.lineNumber == lineNumber;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (mustMatchAll == null ? 0 : mustMatchAll!.hashCode) +
    (mustEvaluateTo == null ? 0 : mustEvaluateTo!.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (operand == null ? 0 : operand!.hashCode) +
    (operator_ == null ? 0 : operator_!.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (rules.hashCode) +
    (then.hashCode) +
    (lineNumber == null ? 0 : lineNumber!.hashCode);

  @override
  String toString() => 'RuleExpression[type=$type, mustMatchAll=$mustMatchAll, mustEvaluateTo=$mustEvaluateTo, scope=$scope, operand=$operand, operator_=$operator_, value=$value, rules=$rules, then=$then, lineNumber=$lineNumber]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
    if (this.mustMatchAll != null) {
      json[r'mustMatchAll'] = this.mustMatchAll;
    } else {
      json[r'mustMatchAll'] = null;
    }
    if (this.mustEvaluateTo != null) {
      json[r'mustEvaluateTo'] = this.mustEvaluateTo;
    } else {
      json[r'mustEvaluateTo'] = null;
    }
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    if (this.operand != null) {
      json[r'operand'] = this.operand;
    } else {
      json[r'operand'] = null;
    }
    if (this.operator_ != null) {
      json[r'operator'] = this.operator_;
    } else {
      json[r'operator'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
      json[r'rules'] = this.rules;
      json[r'then'] = this.then;
    if (this.lineNumber != null) {
      json[r'lineNumber'] = this.lineNumber;
    } else {
      json[r'lineNumber'] = null;
    }
    return json;
  }

  /// Returns a new [RuleExpression] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RuleExpression? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RuleExpression[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RuleExpression[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RuleExpression(
        type: mapValueOfType<String>(json, r'type')!,
        mustMatchAll: mapValueOfType<bool>(json, r'mustMatchAll'),
        mustEvaluateTo: mapValueOfType<bool>(json, r'mustEvaluateTo'),
        scope: mapValueOfType<String>(json, r'scope'),
        operand: mapValueOfType<String>(json, r'operand'),
        operator_: mapValueOfType<String>(json, r'operator'),
        value: mapValueOfType<String>(json, r'value'),
        rules: RuleExpression.listFromJson(json[r'rules']),
        then: RuleRoutine.listFromJson(json[r'then']),
        lineNumber: mapValueOfType<int>(json, r'lineNumber'),
      );
    }
    return null;
  }

  static List<RuleExpression> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RuleExpression>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RuleExpression.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RuleExpression> mapFromJson(dynamic json) {
    final map = <String, RuleExpression>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RuleExpression.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RuleExpression-objects as value to a dart map
  static Map<String, List<RuleExpression>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RuleExpression>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RuleExpression.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
  };
}

