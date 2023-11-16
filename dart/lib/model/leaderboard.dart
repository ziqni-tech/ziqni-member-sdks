//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class Leaderboard {
  /// Returns a new [Leaderboard] instance.
  Leaderboard({
    this.leaderboardEntries = const [],
    this.constraints = const [],
    this.sequence,
    this.id,
    this.created,
    this.accountId,
  });

  List<LeaderboardEntry> leaderboardEntries;

  /// Additional constraints
  List<String> constraints;

  /// how many changes were made to the leaderboard
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sequence;

  /// A unique system generated identifier of the competition or contest this leaderboard relates to
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? created;

  /// This is the space name which is linked to the account
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Leaderboard &&
    _deepEquality.equals(other.leaderboardEntries, leaderboardEntries) &&
    _deepEquality.equals(other.constraints, constraints) &&
    other.sequence == sequence &&
    other.id == id &&
    other.created == created &&
    other.accountId == accountId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (leaderboardEntries.hashCode) +
    (constraints.hashCode) +
    (sequence == null ? 0 : sequence!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode);

  @override
  String toString() => 'Leaderboard[leaderboardEntries=$leaderboardEntries, constraints=$constraints, sequence=$sequence, id=$id, created=$created, accountId=$accountId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'leaderboardEntries'] = this.leaderboardEntries;
      json[r'constraints'] = this.constraints;
    if (this.sequence != null) {
      json[r'sequence'] = this.sequence;
    } else {
      json[r'sequence'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created!.toUtc().toIso8601String();
    } else {
      json[r'created'] = null;
    }
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
    return json;
  }

  /// Returns a new [Leaderboard] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Leaderboard? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Leaderboard[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Leaderboard[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Leaderboard(
        leaderboardEntries: LeaderboardEntry.listFromJson(json[r'leaderboardEntries']),
        constraints: json[r'constraints'] is Iterable
            ? (json[r'constraints'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        sequence: mapValueOfType<int>(json, r'sequence'),
        id: mapValueOfType<String>(json, r'id'),
        created: mapDateTime(json, r'created', r''),
        accountId: mapValueOfType<String>(json, r'accountId'),
      );
    }
    return null;
  }

  static List<Leaderboard> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Leaderboard>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Leaderboard.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Leaderboard> mapFromJson(dynamic json) {
    final map = <String, Leaderboard>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Leaderboard.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Leaderboard-objects as value to a dart map
  static Map<String, List<Leaderboard>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Leaderboard>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Leaderboard.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'constraints',
  };
}

