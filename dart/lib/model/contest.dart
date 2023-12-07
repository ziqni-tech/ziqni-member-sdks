//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class Contest {
  /// Returns a new [Contest] instance.
  Contest({
    required this.id,
    this.spaceName,
    this.created,
    this.customFields = const {},
    this.tags = const [],
    this.metadata = const {},
    this.name,
    this.description,
    this.termsAndConditions,
    this.competitionId,
    this.round,
    this.roundType,
    this.groupStage,
    this.entrantsFromContest = const [],
    this.groupStageLabel,
    this.maxNumberOfEntrants,
    this.minNumberOfEntrants,
    this.scheduledStartDate,
    this.scheduledEndDate,
    this.actualStartDate,
    this.actualEndDate,
    this.strategies,
    this.status,
    this.statusCode,
    this.memberTagsFilter,
    this.constraints = const [],
    this.bannerLink,
    this.bannerHighResolutionLink,
    this.bannerLowResolutionLink,
    this.iconLink,
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

  Map<String, Object> customFields;

  /// A list of id's used to tag models
  List<String> tags;

  Map<String, String> metadata;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// 
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
  String? termsAndConditions;

  /// A unique identifier of a Competition
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? competitionId;

  /// To what round does the contest belong
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? round;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RoundType? roundType;

  /// Is used for more complex Competitions e.g. multi round competitions where round 1 group stage matched round 2
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? groupStage;

  /// A list of Ziqni contest identifiers to allow contests chaining. When a Progression competition is active and you have a 2 round competition the first round has to reference the second round then this parameter becomes mandatory instead of Optional.
  List<String> entrantsFromContest;

  /// The name of the group stages
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? groupStageLabel;

  /// Maximum number of entrants for the contest
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxNumberOfEntrants;

  /// Minimum number of entrants for the contest
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? minNumberOfEntrants;

  /// ISO8601 timestamp for when a Contest should start. All records are stored in UTC time zone
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? scheduledStartDate;

  /// ISO8601 timestamp for when a Contest should end. All records are stored in UTC time zone
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? scheduledEndDate;

  /// ISO8601 timestamp for when a Competition started. All records are stored in UTC time zone
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? actualStartDate;

  /// ISO8601 timestamp for when a Competition ended. All records are stored in UTC time zone
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? actualEndDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Strategy? strategies;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ContestStatus? status;

  /// The code of the contest
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? statusCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DependantOn? memberTagsFilter;

  /// Additional constraints
  List<String> constraints;

  /// Link to the banner
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bannerLink;

  /// Link to the bannerHighResolution
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bannerHighResolutionLink;

  /// Link to the bannerLowResolution
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bannerLowResolutionLink;

  /// Link to the icon
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iconLink;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Contest &&
    other.id == id &&
    other.spaceName == spaceName &&
    other.created == created &&
    _deepEquality.equals(other.customFields, customFields) &&
    _deepEquality.equals(other.tags, tags) &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.name == name &&
    other.description == description &&
    other.termsAndConditions == termsAndConditions &&
    other.competitionId == competitionId &&
    other.round == round &&
    other.roundType == roundType &&
    other.groupStage == groupStage &&
    _deepEquality.equals(other.entrantsFromContest, entrantsFromContest) &&
    other.groupStageLabel == groupStageLabel &&
    other.maxNumberOfEntrants == maxNumberOfEntrants &&
    other.minNumberOfEntrants == minNumberOfEntrants &&
    other.scheduledStartDate == scheduledStartDate &&
    other.scheduledEndDate == scheduledEndDate &&
    other.actualStartDate == actualStartDate &&
    other.actualEndDate == actualEndDate &&
    other.strategies == strategies &&
    other.status == status &&
    other.statusCode == statusCode &&
    other.memberTagsFilter == memberTagsFilter &&
    _deepEquality.equals(other.constraints, constraints) &&
    other.bannerLink == bannerLink &&
    other.bannerHighResolutionLink == bannerHighResolutionLink &&
    other.bannerLowResolutionLink == bannerLowResolutionLink &&
    other.iconLink == iconLink;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (spaceName == null ? 0 : spaceName!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (customFields.hashCode) +
    (tags.hashCode) +
    (metadata.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (termsAndConditions == null ? 0 : termsAndConditions!.hashCode) +
    (competitionId == null ? 0 : competitionId!.hashCode) +
    (round == null ? 0 : round!.hashCode) +
    (roundType == null ? 0 : roundType!.hashCode) +
    (groupStage == null ? 0 : groupStage!.hashCode) +
    (entrantsFromContest.hashCode) +
    (groupStageLabel == null ? 0 : groupStageLabel!.hashCode) +
    (maxNumberOfEntrants == null ? 0 : maxNumberOfEntrants!.hashCode) +
    (minNumberOfEntrants == null ? 0 : minNumberOfEntrants!.hashCode) +
    (scheduledStartDate == null ? 0 : scheduledStartDate!.hashCode) +
    (scheduledEndDate == null ? 0 : scheduledEndDate!.hashCode) +
    (actualStartDate == null ? 0 : actualStartDate!.hashCode) +
    (actualEndDate == null ? 0 : actualEndDate!.hashCode) +
    (strategies == null ? 0 : strategies!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (statusCode == null ? 0 : statusCode!.hashCode) +
    (memberTagsFilter == null ? 0 : memberTagsFilter!.hashCode) +
    (constraints.hashCode) +
    (bannerLink == null ? 0 : bannerLink!.hashCode) +
    (bannerHighResolutionLink == null ? 0 : bannerHighResolutionLink!.hashCode) +
    (bannerLowResolutionLink == null ? 0 : bannerLowResolutionLink!.hashCode) +
    (iconLink == null ? 0 : iconLink!.hashCode);

  @override
  String toString() => 'Contest[id=$id, spaceName=$spaceName, created=$created, customFields=$customFields, tags=$tags, metadata=$metadata, name=$name, description=$description, termsAndConditions=$termsAndConditions, competitionId=$competitionId, round=$round, roundType=$roundType, groupStage=$groupStage, entrantsFromContest=$entrantsFromContest, groupStageLabel=$groupStageLabel, maxNumberOfEntrants=$maxNumberOfEntrants, minNumberOfEntrants=$minNumberOfEntrants, scheduledStartDate=$scheduledStartDate, scheduledEndDate=$scheduledEndDate, actualStartDate=$actualStartDate, actualEndDate=$actualEndDate, strategies=$strategies, status=$status, statusCode=$statusCode, memberTagsFilter=$memberTagsFilter, constraints=$constraints, bannerLink=$bannerLink, bannerHighResolutionLink=$bannerHighResolutionLink, bannerLowResolutionLink=$bannerLowResolutionLink, iconLink=$iconLink]';

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
      json[r'customFields'] = this.customFields;
      json[r'tags'] = this.tags;
      json[r'metadata'] = this.metadata;
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
    if (this.termsAndConditions != null) {
      json[r'termsAndConditions'] = this.termsAndConditions;
    } else {
      json[r'termsAndConditions'] = null;
    }
    if (this.competitionId != null) {
      json[r'competitionId'] = this.competitionId;
    } else {
      json[r'competitionId'] = null;
    }
    if (this.round != null) {
      json[r'round'] = this.round;
    } else {
      json[r'round'] = null;
    }
    if (this.roundType != null) {
      json[r'roundType'] = this.roundType;
    } else {
      json[r'roundType'] = null;
    }
    if (this.groupStage != null) {
      json[r'groupStage'] = this.groupStage;
    } else {
      json[r'groupStage'] = null;
    }
      json[r'entrantsFromContest'] = this.entrantsFromContest;
    if (this.groupStageLabel != null) {
      json[r'groupStageLabel'] = this.groupStageLabel;
    } else {
      json[r'groupStageLabel'] = null;
    }
    if (this.maxNumberOfEntrants != null) {
      json[r'maxNumberOfEntrants'] = this.maxNumberOfEntrants;
    } else {
      json[r'maxNumberOfEntrants'] = null;
    }
    if (this.minNumberOfEntrants != null) {
      json[r'minNumberOfEntrants'] = this.minNumberOfEntrants;
    } else {
      json[r'minNumberOfEntrants'] = null;
    }
    if (this.scheduledStartDate != null) {
      json[r'scheduledStartDate'] = this.scheduledStartDate!.toUtc().toIso8601String();
    } else {
      json[r'scheduledStartDate'] = null;
    }
    if (this.scheduledEndDate != null) {
      json[r'scheduledEndDate'] = this.scheduledEndDate!.toUtc().toIso8601String();
    } else {
      json[r'scheduledEndDate'] = null;
    }
    if (this.actualStartDate != null) {
      json[r'actualStartDate'] = this.actualStartDate!.toUtc().toIso8601String();
    } else {
      json[r'actualStartDate'] = null;
    }
    if (this.actualEndDate != null) {
      json[r'actualEndDate'] = this.actualEndDate!.toUtc().toIso8601String();
    } else {
      json[r'actualEndDate'] = null;
    }
    if (this.strategies != null) {
      json[r'strategies'] = this.strategies;
    } else {
      json[r'strategies'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.statusCode != null) {
      json[r'statusCode'] = this.statusCode;
    } else {
      json[r'statusCode'] = null;
    }
    if (this.memberTagsFilter != null) {
      json[r'memberTagsFilter'] = this.memberTagsFilter;
    } else {
      json[r'memberTagsFilter'] = null;
    }
      json[r'constraints'] = this.constraints;
    if (this.bannerLink != null) {
      json[r'bannerLink'] = this.bannerLink;
    } else {
      json[r'bannerLink'] = null;
    }
    if (this.bannerHighResolutionLink != null) {
      json[r'bannerHighResolutionLink'] = this.bannerHighResolutionLink;
    } else {
      json[r'bannerHighResolutionLink'] = null;
    }
    if (this.bannerLowResolutionLink != null) {
      json[r'bannerLowResolutionLink'] = this.bannerLowResolutionLink;
    } else {
      json[r'bannerLowResolutionLink'] = null;
    }
    if (this.iconLink != null) {
      json[r'iconLink'] = this.iconLink;
    } else {
      json[r'iconLink'] = null;
    }
    return json;
  }

  /// Returns a new [Contest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Contest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Contest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Contest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Contest(
        id: mapValueOfType<String>(json, r'id')!,
        spaceName: mapValueOfType<String>(json, r'spaceName'),
        created: mapDateTime(json, r'created', r''),
        customFields: mapCastOfType<String, Object>(json, r'customFields') ?? const {},
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        metadata: mapCastOfType<String, String>(json, r'metadata') ?? const {},
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        termsAndConditions: mapValueOfType<String>(json, r'termsAndConditions'),
        competitionId: mapValueOfType<String>(json, r'competitionId'),
        round: mapValueOfType<int>(json, r'round'),
        roundType: RoundType.fromJson(json[r'roundType']),
        groupStage: mapValueOfType<int>(json, r'groupStage'),
        entrantsFromContest: json[r'entrantsFromContest'] is Iterable
            ? (json[r'entrantsFromContest'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        groupStageLabel: mapValueOfType<String>(json, r'groupStageLabel'),
        maxNumberOfEntrants: mapValueOfType<int>(json, r'maxNumberOfEntrants'),
        minNumberOfEntrants: mapValueOfType<int>(json, r'minNumberOfEntrants'),
        scheduledStartDate: mapDateTime(json, r'scheduledStartDate', r''),
        scheduledEndDate: mapDateTime(json, r'scheduledEndDate', r''),
        actualStartDate: mapDateTime(json, r'actualStartDate', r''),
        actualEndDate: mapDateTime(json, r'actualEndDate', r''),
        strategies: Strategy.fromJson(json[r'strategies']),
        status: ContestStatus.fromJson(json[r'status']),
        statusCode: mapValueOfType<int>(json, r'statusCode'),
        memberTagsFilter: DependantOn.fromJson(json[r'memberTagsFilter']),
        constraints: json[r'constraints'] is Iterable
            ? (json[r'constraints'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        bannerLink: mapValueOfType<String>(json, r'bannerLink'),
        bannerHighResolutionLink: mapValueOfType<String>(json, r'bannerHighResolutionLink'),
        bannerLowResolutionLink: mapValueOfType<String>(json, r'bannerLowResolutionLink'),
        iconLink: mapValueOfType<String>(json, r'iconLink'),
      );
    }
    return null;
  }

  static List<Contest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Contest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Contest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Contest> mapFromJson(dynamic json) {
    final map = <String, Contest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Contest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Contest-objects as value to a dart map
  static Map<String, List<Contest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Contest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Contest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

