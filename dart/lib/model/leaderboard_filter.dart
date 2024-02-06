//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class LeaderboardFilter {
  /// Returns a new [LeaderboardFilter] instance.
  LeaderboardFilter({
    required this.topRanksToInclude,
    this.ranksAboveToInclude,
    this.ranksBelowToInclude,
  });

  /// Include rank from zero [0] none, then one [1] to the rank specified here. The maximum allowed is 50
  ///
  /// Minimum value: 1
  /// Maximum value: 50
  int topRanksToInclude;

  /// Include ranks above member position. The maximum allowed is 20
  ///
  /// Minimum value: 0
  /// Maximum value: 20
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ranksAboveToInclude;

  /// Include ranks below member position. The maximum allowed is 20
  ///
  /// Minimum value: 0
  /// Maximum value: 20
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ranksBelowToInclude;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LeaderboardFilter &&
    other.topRanksToInclude == topRanksToInclude &&
    other.ranksAboveToInclude == ranksAboveToInclude &&
    other.ranksBelowToInclude == ranksBelowToInclude;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (topRanksToInclude.hashCode) +
    (ranksAboveToInclude == null ? 0 : ranksAboveToInclude!.hashCode) +
    (ranksBelowToInclude == null ? 0 : ranksBelowToInclude!.hashCode);

  @override
  String toString() => 'LeaderboardFilter[topRanksToInclude=$topRanksToInclude, ranksAboveToInclude=$ranksAboveToInclude, ranksBelowToInclude=$ranksBelowToInclude]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'topRanksToInclude'] = this.topRanksToInclude;
    if (this.ranksAboveToInclude != null) {
      json[r'ranksAboveToInclude'] = this.ranksAboveToInclude;
    } else {
      json[r'ranksAboveToInclude'] = null;
    }
    if (this.ranksBelowToInclude != null) {
      json[r'ranksBelowToInclude'] = this.ranksBelowToInclude;
    } else {
      json[r'ranksBelowToInclude'] = null;
    }
    return json;
  }

  /// Returns a new [LeaderboardFilter] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LeaderboardFilter? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LeaderboardFilter[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LeaderboardFilter[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LeaderboardFilter(
        topRanksToInclude: mapValueOfType<int>(json, r'topRanksToInclude')!,
        ranksAboveToInclude: mapValueOfType<int>(json, r'ranksAboveToInclude'),
        ranksBelowToInclude: mapValueOfType<int>(json, r'ranksBelowToInclude'),
      );
    }
    return null;
  }

  static List<LeaderboardFilter> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LeaderboardFilter>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LeaderboardFilter.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LeaderboardFilter> mapFromJson(dynamic json) {
    final map = <String, LeaderboardFilter>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LeaderboardFilter.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LeaderboardFilter-objects as value to a dart map
  static Map<String, List<LeaderboardFilter>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LeaderboardFilter>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LeaderboardFilter.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'topRanksToInclude',
  };
}

