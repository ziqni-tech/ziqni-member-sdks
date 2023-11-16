//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class DependantOn {
  /// Returns a new [DependantOn] instance.
  DependantOn({
    this.must = const [],
    this.mustNot = const [],
    this.should = const [],
    this.shouldMatchAtLeast,
  });

  /// A rule indicating that it has to be included. Players that are in the EU group with a MUST rule - that means only players that have that group can participate
  List<String> must;

  /// A rule indicating that it will not be included. Players that are in the EU group with a MUST-NOT rule - that means that players that have that group can NOT participate
  List<String> mustNot;

  /// A rule indicating that some of them have to be included. Dependancy on shouldMatchAtLeast parameter. Players that are in the EU and DE groups with a SHOULD rule and a shouldMatchAtLeast with a value of 1 - that means that players that have 1 of the groups can participate
  List<String> should;

  /// Dependant on should. Triggered when 2 or more should parameters selected
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? shouldMatchAtLeast;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DependantOn &&
    _deepEquality.equals(other.must, must) &&
    _deepEquality.equals(other.mustNot, mustNot) &&
    _deepEquality.equals(other.should, should) &&
    other.shouldMatchAtLeast == shouldMatchAtLeast;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (must.hashCode) +
    (mustNot.hashCode) +
    (should.hashCode) +
    (shouldMatchAtLeast == null ? 0 : shouldMatchAtLeast!.hashCode);

  @override
  String toString() => 'DependantOn[must=$must, mustNot=$mustNot, should=$should, shouldMatchAtLeast=$shouldMatchAtLeast]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'must'] = this.must;
      json[r'mustNot'] = this.mustNot;
      json[r'should'] = this.should;
    if (this.shouldMatchAtLeast != null) {
      json[r'shouldMatchAtLeast'] = this.shouldMatchAtLeast;
    } else {
      json[r'shouldMatchAtLeast'] = null;
    }
    return json;
  }

  /// Returns a new [DependantOn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DependantOn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DependantOn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DependantOn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DependantOn(
        must: json[r'must'] is Iterable
            ? (json[r'must'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        mustNot: json[r'mustNot'] is Iterable
            ? (json[r'mustNot'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        should: json[r'should'] is Iterable
            ? (json[r'should'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        shouldMatchAtLeast: mapValueOfType<int>(json, r'shouldMatchAtLeast'),
      );
    }
    return null;
  }

  static List<DependantOn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DependantOn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DependantOn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DependantOn> mapFromJson(dynamic json) {
    final map = <String, DependantOn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DependantOn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DependantOn-objects as value to a dart map
  static Map<String, List<DependantOn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DependantOn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DependantOn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

