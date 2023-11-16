//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class LeaderboardEntry {
  /// Returns a new [LeaderboardEntry] instance.
  LeaderboardEntry({
    required this.rank,
    this.score,
    this.bestScores = const [],
    this.members = const [],
  });

  /// The rank of the player
  int rank;

  /// The multiplier to apply to source values received for this product action helper events
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? score;

  /// The multiplier to apply to source values received for this product action helper events
  List<double> bestScores;

  /// 
  List<LeaderboardMember> members;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LeaderboardEntry &&
    other.rank == rank &&
    other.score == score &&
    _deepEquality.equals(other.bestScores, bestScores) &&
    _deepEquality.equals(other.members, members);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (rank.hashCode) +
    (score == null ? 0 : score!.hashCode) +
    (bestScores.hashCode) +
    (members.hashCode);

  @override
  String toString() => 'LeaderboardEntry[rank=$rank, score=$score, bestScores=$bestScores, members=$members]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'rank'] = this.rank;
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
      json[r'bestScores'] = this.bestScores;
      json[r'members'] = this.members;
    return json;
  }

  /// Returns a new [LeaderboardEntry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LeaderboardEntry? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LeaderboardEntry[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LeaderboardEntry[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LeaderboardEntry(
        rank: mapValueOfType<int>(json, r'rank')!,
        score: mapValueOfType<double>(json, r'score'),
        bestScores: json[r'bestScores'] is Iterable
            ? (json[r'bestScores'] as Iterable).cast<double>().toList(growable: false)
            : const [],
        members: LeaderboardMember.listFromJson(json[r'members']),
      );
    }
    return null;
  }

  static List<LeaderboardEntry> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LeaderboardEntry>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LeaderboardEntry.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LeaderboardEntry> mapFromJson(dynamic json) {
    final map = <String, LeaderboardEntry>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LeaderboardEntry.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LeaderboardEntry-objects as value to a dart map
  static Map<String, List<LeaderboardEntry>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LeaderboardEntry>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LeaderboardEntry.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'rank',
    'members',
  };
}

