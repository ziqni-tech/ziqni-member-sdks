//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class Reward {
  /// Returns a new [Reward] instance.
  Reward({
    this.probability,
    this.entityType,
    this.entityId,
    this.name,
    this.description,
    this.rewardRank,
    this.rewardValue,
    this.rewardType,
    this.iconLink,
    this.icon,
    this.spaceName,
    this.issueLimit,
    this.delay,
    this.pointInTime,
    this.period,
    this.id,
    this.constraints = const [],
  });

  /// What is the probability of winning this reward
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? probability;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EntityType? entityType;

  /// A unique identifier of an achievement or contest. Dependant on entityType
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entityId;

  /// The name of a reward
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The description of a Reward
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// If used in the context of contest this will associate with the rank of the leaderboard
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rewardRank;

  /// Numerical value of the reward that will be issued based on the reward type
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? rewardValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RewardTypeReduced? rewardType;

  /// Link to the icon
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iconLink;

  /// id the icon
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? icon;

  /// spaceName
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? spaceName;

  /// how many of thsese rewards are
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? issueLimit;

  /// Delay of issuing a reward in minutes
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? delay;

  /// ISO8601 timestamp for when a Reward is available until a specific point in time. All records are stored in UTC time zone
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? pointInTime;

  /// Reward available for a period of time from issuing in minutes
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? period;

  /// Unique system identifier of a Main Rule
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Additional constraints
  List<String> constraints;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Reward &&
    other.probability == probability &&
    other.entityType == entityType &&
    other.entityId == entityId &&
    other.name == name &&
    other.description == description &&
    other.rewardRank == rewardRank &&
    other.rewardValue == rewardValue &&
    other.rewardType == rewardType &&
    other.iconLink == iconLink &&
    other.icon == icon &&
    other.spaceName == spaceName &&
    other.issueLimit == issueLimit &&
    other.delay == delay &&
    other.pointInTime == pointInTime &&
    other.period == period &&
    other.id == id &&
    _deepEquality.equals(other.constraints, constraints);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (probability == null ? 0 : probability!.hashCode) +
    (entityType == null ? 0 : entityType!.hashCode) +
    (entityId == null ? 0 : entityId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (rewardRank == null ? 0 : rewardRank!.hashCode) +
    (rewardValue == null ? 0 : rewardValue!.hashCode) +
    (rewardType == null ? 0 : rewardType!.hashCode) +
    (iconLink == null ? 0 : iconLink!.hashCode) +
    (icon == null ? 0 : icon!.hashCode) +
    (spaceName == null ? 0 : spaceName!.hashCode) +
    (issueLimit == null ? 0 : issueLimit!.hashCode) +
    (delay == null ? 0 : delay!.hashCode) +
    (pointInTime == null ? 0 : pointInTime!.hashCode) +
    (period == null ? 0 : period!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (constraints.hashCode);

  @override
  String toString() => 'Reward[probability=$probability, entityType=$entityType, entityId=$entityId, name=$name, description=$description, rewardRank=$rewardRank, rewardValue=$rewardValue, rewardType=$rewardType, iconLink=$iconLink, icon=$icon, spaceName=$spaceName, issueLimit=$issueLimit, delay=$delay, pointInTime=$pointInTime, period=$period, id=$id, constraints=$constraints]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.probability != null) {
      json[r'probability'] = this.probability;
    } else {
      json[r'probability'] = null;
    }
    if (this.entityType != null) {
      json[r'entityType'] = this.entityType;
    } else {
      json[r'entityType'] = null;
    }
    if (this.entityId != null) {
      json[r'entityId'] = this.entityId;
    } else {
      json[r'entityId'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.rewardRank != null) {
      json[r'rewardRank'] = this.rewardRank;
    } else {
      json[r'rewardRank'] = null;
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
    if (this.iconLink != null) {
      json[r'iconLink'] = this.iconLink;
    } else {
      json[r'iconLink'] = null;
    }
    if (this.icon != null) {
      json[r'icon'] = this.icon;
    } else {
      json[r'icon'] = null;
    }
    if (this.spaceName != null) {
      json[r'spaceName'] = this.spaceName;
    } else {
      json[r'spaceName'] = null;
    }
    if (this.issueLimit != null) {
      json[r'issueLimit'] = this.issueLimit;
    } else {
      json[r'issueLimit'] = null;
    }
    if (this.delay != null) {
      json[r'delay'] = this.delay;
    } else {
      json[r'delay'] = null;
    }
    if (this.pointInTime != null) {
      json[r'pointInTime'] = this.pointInTime!.toUtc().toIso8601String();
    } else {
      json[r'pointInTime'] = null;
    }
    if (this.period != null) {
      json[r'period'] = this.period;
    } else {
      json[r'period'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'constraints'] = this.constraints;
    return json;
  }

  /// Returns a new [Reward] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Reward? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Reward[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Reward[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Reward(
        probability: num.parse('${json[r'probability']}'),
        entityType: EntityType.fromJson(json[r'entityType']),
        entityId: mapValueOfType<String>(json, r'entityId'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        rewardRank: mapValueOfType<String>(json, r'rewardRank'),
        rewardValue: mapValueOfType<double>(json, r'rewardValue'),
        rewardType: RewardTypeReduced.fromJson(json[r'rewardType']),
        iconLink: mapValueOfType<String>(json, r'iconLink'),
        icon: mapValueOfType<String>(json, r'icon'),
        spaceName: mapValueOfType<String>(json, r'spaceName'),
        issueLimit: mapValueOfType<int>(json, r'issueLimit'),
        delay: mapValueOfType<int>(json, r'delay'),
        pointInTime: mapDateTime(json, r'pointInTime', r''),
        period: mapValueOfType<int>(json, r'period'),
        id: mapValueOfType<String>(json, r'id'),
        constraints: json[r'constraints'] is Iterable
            ? (json[r'constraints'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<Reward> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Reward>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Reward.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Reward> mapFromJson(dynamic json) {
    final map = <String, Reward>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Reward.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Reward-objects as value to a dart map
  static Map<String, List<Reward>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Reward>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Reward.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

