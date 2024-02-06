//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class Member {
  /// Returns a new [Member] instance.
  Member({
    required this.id,
    this.spaceName,
    this.created,
    this.customFields = const {},
    this.tags = const [],
    this.metadata = const {},
    this.name,
    this.memberRefId,
    this.memberType,
    this.teamMembers = const [],
    this.constraints = const [],
    this.iconLink,
    this.timeZoneOffset,
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

  /// The name of the member that is used on leader boards and public displays
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The reference to this member in your system
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? memberRefId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MemberType? memberType;

  /// A social group like Guilds
  List<String> teamMembers;

  /// Additional constraints
  List<String> constraints;

  /// Link to the icon
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iconLink;

  /// To what time zone teh emmber belongs to
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timeZoneOffset;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Member &&
    other.id == id &&
    other.spaceName == spaceName &&
    other.created == created &&
    _deepEquality.equals(other.customFields, customFields) &&
    _deepEquality.equals(other.tags, tags) &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.name == name &&
    other.memberRefId == memberRefId &&
    other.memberType == memberType &&
    _deepEquality.equals(other.teamMembers, teamMembers) &&
    _deepEquality.equals(other.constraints, constraints) &&
    other.iconLink == iconLink &&
    other.timeZoneOffset == timeZoneOffset;

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
    (memberRefId == null ? 0 : memberRefId!.hashCode) +
    (memberType == null ? 0 : memberType!.hashCode) +
    (teamMembers.hashCode) +
    (constraints.hashCode) +
    (iconLink == null ? 0 : iconLink!.hashCode) +
    (timeZoneOffset == null ? 0 : timeZoneOffset!.hashCode);

  @override
  String toString() => 'Member[id=$id, spaceName=$spaceName, created=$created, customFields=$customFields, tags=$tags, metadata=$metadata, name=$name, memberRefId=$memberRefId, memberType=$memberType, teamMembers=$teamMembers, constraints=$constraints, iconLink=$iconLink, timeZoneOffset=$timeZoneOffset]';

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
    if (this.memberRefId != null) {
      json[r'memberRefId'] = this.memberRefId;
    } else {
      json[r'memberRefId'] = null;
    }
    if (this.memberType != null) {
      json[r'memberType'] = this.memberType;
    } else {
      json[r'memberType'] = null;
    }
      json[r'teamMembers'] = this.teamMembers;
      json[r'constraints'] = this.constraints;
    if (this.iconLink != null) {
      json[r'iconLink'] = this.iconLink;
    } else {
      json[r'iconLink'] = null;
    }
    if (this.timeZoneOffset != null) {
      json[r'timeZoneOffset'] = this.timeZoneOffset;
    } else {
      json[r'timeZoneOffset'] = null;
    }
    return json;
  }

  /// Returns a new [Member] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Member? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Member[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Member[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Member(
        id: mapValueOfType<String>(json, r'id')!,
        spaceName: mapValueOfType<String>(json, r'spaceName'),
        created: mapDateTime(json, r'created', r''),
        customFields: mapCastOfType<String, Object>(json, r'customFields') ?? const {},
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        metadata: mapCastOfType<String, String>(json, r'metadata') ?? const {},
        name: mapValueOfType<String>(json, r'name'),
        memberRefId: mapValueOfType<String>(json, r'memberRefId'),
        memberType: MemberType.fromJson(json[r'memberType']),
        teamMembers: json[r'teamMembers'] is Iterable
            ? (json[r'teamMembers'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        constraints: json[r'constraints'] is Iterable
            ? (json[r'constraints'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        iconLink: mapValueOfType<String>(json, r'iconLink'),
        timeZoneOffset: mapValueOfType<String>(json, r'timeZoneOffset'),
      );
    }
    return null;
  }

  static List<Member> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Member>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Member.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Member> mapFromJson(dynamic json) {
    final map = <String, Member>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Member.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Member-objects as value to a dart map
  static Map<String, List<Member>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Member>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Member.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

