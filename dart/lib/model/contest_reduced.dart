//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class ContestReduced {
  /// Returns a new [ContestReduced] instance.
  ContestReduced({
    this.competitionId,
    this.row,
    this.name,
    this.round,
    this.groupStage,
    this.entrantsFromContest = const [],
    this.status,
    this.statusCode,
    this.scheduledStartDate,
    this.scheduledEndDate,
    this.actualStartDate,
    this.actualEndDate,
    this.tags = const [],
    this.rewards = const [],
  });

  /// A unique identifier of a Competition
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? competitionId;

  /// The row number for displaying the Contest in a table
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? row;

  /// A name for the Contest. Can be translated
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// To what round does the contest belong
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? round;

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

  /// ISO8601 timestamp for when a Contest started. All records are stored in UTC time zone
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? actualStartDate;

  /// ISO8601 timestamp for when a Contest ended. All records are stored in UTC time zone
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? actualEndDate;

  /// A list of id's used to tag
  List<String> tags;

  /// 
  List<RewardReduced> rewards;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ContestReduced &&
    other.competitionId == competitionId &&
    other.row == row &&
    other.name == name &&
    other.round == round &&
    other.groupStage == groupStage &&
    _deepEquality.equals(other.entrantsFromContest, entrantsFromContest) &&
    other.status == status &&
    other.statusCode == statusCode &&
    other.scheduledStartDate == scheduledStartDate &&
    other.scheduledEndDate == scheduledEndDate &&
    other.actualStartDate == actualStartDate &&
    other.actualEndDate == actualEndDate &&
    _deepEquality.equals(other.tags, tags) &&
    _deepEquality.equals(other.rewards, rewards);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (competitionId == null ? 0 : competitionId!.hashCode) +
    (row == null ? 0 : row!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (round == null ? 0 : round!.hashCode) +
    (groupStage == null ? 0 : groupStage!.hashCode) +
    (entrantsFromContest.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (statusCode == null ? 0 : statusCode!.hashCode) +
    (scheduledStartDate == null ? 0 : scheduledStartDate!.hashCode) +
    (scheduledEndDate == null ? 0 : scheduledEndDate!.hashCode) +
    (actualStartDate == null ? 0 : actualStartDate!.hashCode) +
    (actualEndDate == null ? 0 : actualEndDate!.hashCode) +
    (tags.hashCode) +
    (rewards.hashCode);

  @override
  String toString() => 'ContestReduced[competitionId=$competitionId, row=$row, name=$name, round=$round, groupStage=$groupStage, entrantsFromContest=$entrantsFromContest, status=$status, statusCode=$statusCode, scheduledStartDate=$scheduledStartDate, scheduledEndDate=$scheduledEndDate, actualStartDate=$actualStartDate, actualEndDate=$actualEndDate, tags=$tags, rewards=$rewards]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.competitionId != null) {
      json[r'competitionId'] = this.competitionId;
    } else {
      json[r'competitionId'] = null;
    }
    if (this.row != null) {
      json[r'row'] = this.row;
    } else {
      json[r'row'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.round != null) {
      json[r'round'] = this.round;
    } else {
      json[r'round'] = null;
    }
    if (this.groupStage != null) {
      json[r'groupStage'] = this.groupStage;
    } else {
      json[r'groupStage'] = null;
    }
      json[r'entrantsFromContest'] = this.entrantsFromContest;
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
      json[r'tags'] = this.tags;
      json[r'rewards'] = this.rewards;
    return json;
  }

  /// Returns a new [ContestReduced] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContestReduced? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ContestReduced[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ContestReduced[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ContestReduced(
        competitionId: mapValueOfType<String>(json, r'competitionId'),
        row: mapValueOfType<int>(json, r'row'),
        name: mapValueOfType<String>(json, r'name'),
        round: mapValueOfType<int>(json, r'round'),
        groupStage: mapValueOfType<int>(json, r'groupStage'),
        entrantsFromContest: json[r'entrantsFromContest'] is Iterable
            ? (json[r'entrantsFromContest'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        status: ContestStatus.fromJson(json[r'status']),
        statusCode: mapValueOfType<int>(json, r'statusCode'),
        scheduledStartDate: mapDateTime(json, r'scheduledStartDate', r''),
        scheduledEndDate: mapDateTime(json, r'scheduledEndDate', r''),
        actualStartDate: mapDateTime(json, r'actualStartDate', r''),
        actualEndDate: mapDateTime(json, r'actualEndDate', r''),
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        rewards: RewardReduced.listFromJson(json[r'rewards']),
      );
    }
    return null;
  }

  static List<ContestReduced> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ContestReduced>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContestReduced.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContestReduced> mapFromJson(dynamic json) {
    final map = <String, ContestReduced>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContestReduced.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContestReduced-objects as value to a dart map
  static Map<String, List<ContestReduced>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ContestReduced>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ContestReduced.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

