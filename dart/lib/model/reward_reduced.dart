//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class RewardReduced {
  /// Returns a new [RewardReduced] instance.
  RewardReduced({
    required this.id,
    this.spaceName,
    this.created,
    this.rewardRank,
    this.name,
    this.rewardValue,
    this.rewardType,
    this.rewardTypeId,
  });

  /// Ziqni id of the model
  String id;

  /// This is the space name which is linked to the account
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? spaceName;

  /// ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? created;

  /// If used in the context of contest this will associate with the rank of the leaderboard
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rewardRank;

  /// The name of a reward
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Numerical value of the reward that will be issued based on the reward type
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? rewardValue;

  /// Reward Type key
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rewardType;

  /// A unique id of the Reward Type
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rewardTypeId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RewardReduced &&
    other.id == id &&
    other.spaceName == spaceName &&
    other.created == created &&
    other.rewardRank == rewardRank &&
    other.name == name &&
    other.rewardValue == rewardValue &&
    other.rewardType == rewardType &&
    other.rewardTypeId == rewardTypeId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (spaceName == null ? 0 : spaceName!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (rewardRank == null ? 0 : rewardRank!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (rewardValue == null ? 0 : rewardValue!.hashCode) +
    (rewardType == null ? 0 : rewardType!.hashCode) +
    (rewardTypeId == null ? 0 : rewardTypeId!.hashCode);

  @override
  String toString() => 'RewardReduced[id=$id, spaceName=$spaceName, created=$created, rewardRank=$rewardRank, name=$name, rewardValue=$rewardValue, rewardType=$rewardType, rewardTypeId=$rewardTypeId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.spaceName != null) {
      json[r'spaceName'] = this.spaceName;
    } else {
      json[r'spaceName'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created!.toUtc().toIso8601String();
    } else {
      json[r'created'] = null;
    }
    if (this.rewardRank != null) {
      json[r'rewardRank'] = this.rewardRank;
    } else {
      json[r'rewardRank'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.rewardValue != null) {
      json[r'rewardValue'] = this.rewardValue;
    } else {
      json[r'rewardValue'] = null;
    }
    if (this.rewardType != null) {
      json[r'rewardType'] = this.rewardType;
    } else {
      json[r'rewardType'] = null;
    }
    if (this.rewardTypeId != null) {
      json[r'rewardTypeId'] = this.rewardTypeId;
    } else {
      json[r'rewardTypeId'] = null;
    }
    return json;
  }

  /// Returns a new [RewardReduced] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RewardReduced? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RewardReduced[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RewardReduced[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RewardReduced(
        id: mapValueOfType<String>(json, r'id')!,
        spaceName: mapValueOfType<String>(json, r'spaceName'),
        created: mapDateTime(json, r'created', r''),
        rewardRank: mapValueOfType<String>(json, r'rewardRank'),
        name: mapValueOfType<String>(json, r'name'),
        rewardValue: mapValueOfType<double>(json, r'rewardValue'),
        rewardType: mapValueOfType<String>(json, r'rewardType'),
        rewardTypeId: mapValueOfType<String>(json, r'rewardTypeId'),
      );
    }
    return null;
  }

  static List<RewardReduced> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RewardReduced>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RewardReduced.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RewardReduced> mapFromJson(dynamic json) {
    final map = <String, RewardReduced>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RewardReduced.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RewardReduced-objects as value to a dart map
  static Map<String, List<RewardReduced>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RewardReduced>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RewardReduced.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

