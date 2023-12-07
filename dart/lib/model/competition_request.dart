//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class CompetitionRequest {
  /// Returns a new [CompetitionRequest] instance.
  CompetitionRequest({
    this.languageKey,
    this.competitionFilter,
  });

  /// The language codes can be found in the settings/transalations section of the back office
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? languageKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CompetitionFilter? competitionFilter;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CompetitionRequest &&
    other.languageKey == languageKey &&
    other.competitionFilter == competitionFilter;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (languageKey == null ? 0 : languageKey!.hashCode) +
    (competitionFilter == null ? 0 : competitionFilter!.hashCode);

  @override
  String toString() => 'CompetitionRequest[languageKey=$languageKey, competitionFilter=$competitionFilter]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.languageKey != null) {
      json[r'languageKey'] = this.languageKey;
    } else {
      json[r'languageKey'] = null;
    }
    if (this.competitionFilter != null) {
      json[r'competitionFilter'] = this.competitionFilter;
    } else {
      json[r'competitionFilter'] = null;
    }
    return json;
  }

  /// Returns a new [CompetitionRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CompetitionRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CompetitionRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CompetitionRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CompetitionRequest(
        languageKey: mapValueOfType<String>(json, r'languageKey'),
        competitionFilter: CompetitionFilter.fromJson(json[r'competitionFilter']),
      );
    }
    return null;
  }

  static List<CompetitionRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CompetitionRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CompetitionRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CompetitionRequest> mapFromJson(dynamic json) {
    final map = <String, CompetitionRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CompetitionRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CompetitionRequest-objects as value to a dart map
  static Map<String, List<CompetitionRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CompetitionRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CompetitionRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

