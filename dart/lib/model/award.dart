//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class Award {
  /// Returns a new [Award] instance.
  Award({
    required this.id,
    this.spaceName,
    this.created,
    this.memberId,
    this.rewardId,
    this.rewardType,
    this.rewardRank,
    this.rewardValue,
    this.delay,
    this.entityType,
    this.entityId,
    this.pointInTime,
    this.period,
    this.tags = const [],
    this.metadata = const {},
    this.statusCode,
    this.constraints = const [],
    this.claimed,
    this.status,
    this.name,
    this.description,
    this.memberRefId,
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

  /// A unique identifier of a Member
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? memberId;

  /// A unique identifier of a Reward
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rewardId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RewardTypeReduced? rewardType;

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

  /// Delay of issuing a reward in minutes
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? delay;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EntityType? entityType;

  /// The Id of the contest or achievement related to this Award. Dependant on entityType
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entityId;

  /// ISO8601 timestamp for when an Award is available until a specific point in time. All records are stored in UTC time zone. * There can only be one time definition used for claim period either \"pointInTime\" or \"period\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? pointInTime;

  /// Claimable duration in minutes, this value will set the controls until when the award is claimable. * There can only be one time definition used for claim period either \"pointInTime\" or \"period\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? period;

  /// A list of Strings of groups that the reward belongs to.
  List<String> tags;

  /// The metadata associated with this award
  Map<String, String> metadata;

  /// The code of the award
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? statusCode;

  /// Additional constraints, if the value is present it means the
  List<String> constraints;

  ///  Award is claimed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? claimed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AwardStatus? status;

  /// name from reward
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Text limited description
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? memberRefId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Award &&
    other.id == id &&
    other.spaceName == spaceName &&
    other.created == created &&
    other.memberId == memberId &&
    other.rewardId == rewardId &&
    other.rewardType == rewardType &&
    other.rewardRank == rewardRank &&
    other.rewardValue == rewardValue &&
    other.delay == delay &&
    other.entityType == entityType &&
    other.entityId == entityId &&
    other.pointInTime == pointInTime &&
    other.period == period &&
    _deepEquality.equals(other.tags, tags) &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.statusCode == statusCode &&
    _deepEquality.equals(other.constraints, constraints) &&
    other.claimed == claimed &&
    other.status == status &&
    other.name == name &&
    other.description == description &&
    other.memberRefId == memberRefId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (spaceName == null ? 0 : spaceName!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (memberId == null ? 0 : memberId!.hashCode) +
    (rewardId == null ? 0 : rewardId!.hashCode) +
    (rewardType == null ? 0 : rewardType!.hashCode) +
    (rewardRank == null ? 0 : rewardRank!.hashCode) +
    (rewardValue == null ? 0 : rewardValue!.hashCode) +
    (delay == null ? 0 : delay!.hashCode) +
    (entityType == null ? 0 : entityType!.hashCode) +
    (entityId == null ? 0 : entityId!.hashCode) +
    (pointInTime == null ? 0 : pointInTime!.hashCode) +
    (period == null ? 0 : period!.hashCode) +
    (tags.hashCode) +
    (metadata.hashCode) +
    (statusCode == null ? 0 : statusCode!.hashCode) +
    (constraints.hashCode) +
    (claimed == null ? 0 : claimed!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (memberRefId == null ? 0 : memberRefId!.hashCode);

  @override
  String toString() => 'Award[id=$id, spaceName=$spaceName, created=$created, memberId=$memberId, rewardId=$rewardId, rewardType=$rewardType, rewardRank=$rewardRank, rewardValue=$rewardValue, delay=$delay, entityType=$entityType, entityId=$entityId, pointInTime=$pointInTime, period=$period, tags=$tags, metadata=$metadata, statusCode=$statusCode, constraints=$constraints, claimed=$claimed, status=$status, name=$name, description=$description, memberRefId=$memberRefId]';

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
    if (this.memberId != null) {
      json[r'memberId'] = this.memberId;
    } else {
      json[r'memberId'] = null;
    }
    if (this.rewardId != null) {
      json[r'rewardId'] = this.rewardId;
    } else {
      json[r'rewardId'] = null;
    }
    if (this.rewardType != null) {
      json[r'rewardType'] = this.rewardType;
    } else {
      json[r'rewardType'] = null;
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
    if (this.delay != null) {
      json[r'delay'] = this.delay;
    } else {
      json[r'delay'] = null;
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
      json[r'tags'] = this.tags;
      json[r'metadata'] = this.metadata;
    if (this.statusCode != null) {
      json[r'statusCode'] = this.statusCode;
    } else {
      json[r'statusCode'] = null;
    }
      json[r'constraints'] = this.constraints;
    if (this.claimed != null) {
      json[r'claimed'] = this.claimed;
    } else {
      json[r'claimed'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
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
    if (this.memberRefId != null) {
      json[r'memberRefId'] = this.memberRefId;
    } else {
      json[r'memberRefId'] = null;
    }
    return json;
  }

  /// Returns a new [Award] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Award? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Award[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Award[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Award(
        id: mapValueOfType<String>(json, r'id')!,
        spaceName: mapValueOfType<String>(json, r'spaceName'),
        created: mapDateTime(json, r'created', r''),
        memberId: mapValueOfType<String>(json, r'memberId'),
        rewardId: mapValueOfType<String>(json, r'rewardId'),
        rewardType: RewardTypeReduced.fromJson(json[r'rewardType']),
        rewardRank: mapValueOfType<String>(json, r'rewardRank'),
        rewardValue: mapValueOfType<double>(json, r'rewardValue'),
        delay: mapValueOfType<int>(json, r'delay'),
        entityType: EntityType.fromJson(json[r'entityType']),
        entityId: mapValueOfType<String>(json, r'entityId'),
        pointInTime: mapDateTime(json, r'pointInTime', r''),
        period: mapValueOfType<int>(json, r'period'),
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        metadata: mapCastOfType<String, String>(json, r'metadata') ?? const {},
        statusCode: mapValueOfType<int>(json, r'statusCode'),
        constraints: json[r'constraints'] is Iterable
            ? (json[r'constraints'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        claimed: mapValueOfType<bool>(json, r'claimed'),
        status: AwardStatus.fromJson(json[r'status']),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        memberRefId: mapValueOfType<String>(json, r'memberRefId'),
      );
    }
    return null;
  }

  static List<Award> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Award>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Award.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Award> mapFromJson(dynamic json) {
    final map = <String, Award>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Award.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Award-objects as value to a dart map
  static Map<String, List<Award>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Award>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Award.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

