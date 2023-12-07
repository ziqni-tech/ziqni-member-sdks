//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class LeaderboardMember {
  /// Returns a new [LeaderboardMember] instance.
  LeaderboardMember({
    required this.name,
    required this.memberId,
    required this.memberRefId,
    this.rankChangeFrom,
    this.rankChangeType,
    this.params = const {},
    this.goalReached,
  });

  /// The name of the player
  String name;

  /// Unique system identifier of a Member
  String memberId;

  /// The reference to this member in your system
  String memberRefId;

  /// Previous rank held, null if no changes are recorded
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rankChangeFrom;

  /// [-1] for rank-down, like 5 to 8. [0] for no change, [1] for rank-up like 9 to 3
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rankChangeType;

  /// The user defined values used in the rules builder
  Map<String, num> params;

  /// Has the player met the minimum requirements to qualify for a ranked position
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? goalReached;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LeaderboardMember &&
    other.name == name &&
    other.memberId == memberId &&
    other.memberRefId == memberRefId &&
    other.rankChangeFrom == rankChangeFrom &&
    other.rankChangeType == rankChangeType &&
    _deepEquality.equals(other.params, params) &&
    other.goalReached == goalReached;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (memberId.hashCode) +
    (memberRefId.hashCode) +
    (rankChangeFrom == null ? 0 : rankChangeFrom!.hashCode) +
    (rankChangeType == null ? 0 : rankChangeType!.hashCode) +
    (params.hashCode) +
    (goalReached == null ? 0 : goalReached!.hashCode);

  @override
  String toString() => 'LeaderboardMember[name=$name, memberId=$memberId, memberRefId=$memberRefId, rankChangeFrom=$rankChangeFrom, rankChangeType=$rankChangeType, params=$params, goalReached=$goalReached]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'memberId'] = this.memberId;
      json[r'memberRefId'] = this.memberRefId;
    if (this.rankChangeFrom != null) {
      json[r'rankChangeFrom'] = this.rankChangeFrom;
    } else {
      json[r'rankChangeFrom'] = null;
    }
    if (this.rankChangeType != null) {
      json[r'rankChangeType'] = this.rankChangeType;
    } else {
      json[r'rankChangeType'] = null;
    }
      json[r'params'] = this.params;
    if (this.goalReached != null) {
      json[r'goalReached'] = this.goalReached;
    } else {
      json[r'goalReached'] = null;
    }
    return json;
  }

  /// Returns a new [LeaderboardMember] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LeaderboardMember? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LeaderboardMember[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LeaderboardMember[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LeaderboardMember(
        name: mapValueOfType<String>(json, r'name')!,
        memberId: mapValueOfType<String>(json, r'memberId')!,
        memberRefId: mapValueOfType<String>(json, r'memberRefId')!,
        rankChangeFrom: mapValueOfType<int>(json, r'rankChangeFrom'),
        rankChangeType: mapValueOfType<int>(json, r'rankChangeType'),
        params: mapCastOfType<String, num>(json, r'params') ?? const {},
        goalReached: mapValueOfType<bool>(json, r'goalReached'),
      );
    }
    return null;
  }

  static List<LeaderboardMember> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LeaderboardMember>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LeaderboardMember.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LeaderboardMember> mapFromJson(dynamic json) {
    final map = <String, LeaderboardMember>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LeaderboardMember.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LeaderboardMember-objects as value to a dart map
  static Map<String, List<LeaderboardMember>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LeaderboardMember>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LeaderboardMember.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'memberId',
    'memberRefId',
  };
}

