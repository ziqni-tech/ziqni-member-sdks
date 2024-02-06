//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class Competition {
  /// Returns a new [Competition] instance.
  Competition({
    required this.id,
    this.spaceName,
    this.created,
    this.customFields = const {},
    this.tags = const [],
    this.metadata = const {},
    this.competitionType,
    this.numberOfRounds,
    this.numberOfGroupStages,
    this.maxNumberOfEntrants,
    this.minNumberOfEntrants,
    this.name,
    this.description,
    this.termsAndConditions,
    this.entrantMemberType,
    this.scheduledStartDate,
    this.scheduledEndDate,
    this.actualStartDate,
    this.actualEndDate,
    this.status,
    this.statusCode,
    this.constraints = const {},
    this.products = const [],
    this.memberTagsFilter,
    this.productTagsFilter,
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
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CompetitionType? competitionType;

  /// Number of rounds to be played in a competition
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numberOfRounds;

  /// Number of group stages
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numberOfGroupStages;

  /// Maximum number of partiipants allowed in a competition
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxNumberOfEntrants;

  /// Maximum number of partiipants allowed in a competition
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? minNumberOfEntrants;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entrantMemberType;

  /// ISO8601 timestamp for when a Competition should start. All records are stored in UTC time zone
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? scheduledStartDate;

  /// ISO8601 timestamp for when a Competition should end. All records are stored in UTC time zone
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
  CompetitionStatus? status;

  /// The code of the competition
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? statusCode;

  /// Additional constraints
  Set<String> constraints;

  /// If individual product were selected then they will be listed here. If the proproduct tags filter was used then this field will be empty and the productTagsFilter will be populated.
  List<ProductReduced> products;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DependantOn? memberTagsFilter;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DependantOn? productTagsFilter;

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
  bool operator ==(Object other) => identical(this, other) || other is Competition &&
    other.id == id &&
    other.spaceName == spaceName &&
    other.created == created &&
    _deepEquality.equals(other.customFields, customFields) &&
    _deepEquality.equals(other.tags, tags) &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.competitionType == competitionType &&
    other.numberOfRounds == numberOfRounds &&
    other.numberOfGroupStages == numberOfGroupStages &&
    other.maxNumberOfEntrants == maxNumberOfEntrants &&
    other.minNumberOfEntrants == minNumberOfEntrants &&
    other.name == name &&
    other.description == description &&
    other.termsAndConditions == termsAndConditions &&
    other.entrantMemberType == entrantMemberType &&
    other.scheduledStartDate == scheduledStartDate &&
    other.scheduledEndDate == scheduledEndDate &&
    other.actualStartDate == actualStartDate &&
    other.actualEndDate == actualEndDate &&
    other.status == status &&
    other.statusCode == statusCode &&
    _deepEquality.equals(other.constraints, constraints) &&
    _deepEquality.equals(other.products, products) &&
    other.memberTagsFilter == memberTagsFilter &&
    other.productTagsFilter == productTagsFilter &&
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
    (competitionType == null ? 0 : competitionType!.hashCode) +
    (numberOfRounds == null ? 0 : numberOfRounds!.hashCode) +
    (numberOfGroupStages == null ? 0 : numberOfGroupStages!.hashCode) +
    (maxNumberOfEntrants == null ? 0 : maxNumberOfEntrants!.hashCode) +
    (minNumberOfEntrants == null ? 0 : minNumberOfEntrants!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (termsAndConditions == null ? 0 : termsAndConditions!.hashCode) +
    (entrantMemberType == null ? 0 : entrantMemberType!.hashCode) +
    (scheduledStartDate == null ? 0 : scheduledStartDate!.hashCode) +
    (scheduledEndDate == null ? 0 : scheduledEndDate!.hashCode) +
    (actualStartDate == null ? 0 : actualStartDate!.hashCode) +
    (actualEndDate == null ? 0 : actualEndDate!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (statusCode == null ? 0 : statusCode!.hashCode) +
    (constraints.hashCode) +
    (products.hashCode) +
    (memberTagsFilter == null ? 0 : memberTagsFilter!.hashCode) +
    (productTagsFilter == null ? 0 : productTagsFilter!.hashCode) +
    (bannerLink == null ? 0 : bannerLink!.hashCode) +
    (bannerHighResolutionLink == null ? 0 : bannerHighResolutionLink!.hashCode) +
    (bannerLowResolutionLink == null ? 0 : bannerLowResolutionLink!.hashCode) +
    (iconLink == null ? 0 : iconLink!.hashCode);

  @override
  String toString() => 'Competition[id=$id, spaceName=$spaceName, created=$created, customFields=$customFields, tags=$tags, metadata=$metadata, competitionType=$competitionType, numberOfRounds=$numberOfRounds, numberOfGroupStages=$numberOfGroupStages, maxNumberOfEntrants=$maxNumberOfEntrants, minNumberOfEntrants=$minNumberOfEntrants, name=$name, description=$description, termsAndConditions=$termsAndConditions, entrantMemberType=$entrantMemberType, scheduledStartDate=$scheduledStartDate, scheduledEndDate=$scheduledEndDate, actualStartDate=$actualStartDate, actualEndDate=$actualEndDate, status=$status, statusCode=$statusCode, constraints=$constraints, products=$products, memberTagsFilter=$memberTagsFilter, productTagsFilter=$productTagsFilter, bannerLink=$bannerLink, bannerHighResolutionLink=$bannerHighResolutionLink, bannerLowResolutionLink=$bannerLowResolutionLink, iconLink=$iconLink]';

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
    if (this.competitionType != null) {
      json[r'competitionType'] = this.competitionType;
    } else {
      json[r'competitionType'] = null;
    }
    if (this.numberOfRounds != null) {
      json[r'numberOfRounds'] = this.numberOfRounds;
    } else {
      json[r'numberOfRounds'] = null;
    }
    if (this.numberOfGroupStages != null) {
      json[r'numberOfGroupStages'] = this.numberOfGroupStages;
    } else {
      json[r'numberOfGroupStages'] = null;
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
    if (this.entrantMemberType != null) {
      json[r'entrantMemberType'] = this.entrantMemberType;
    } else {
      json[r'entrantMemberType'] = null;
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
      json[r'constraints'] = this.constraints.toList(growable: false);
      json[r'products'] = this.products;
    if (this.memberTagsFilter != null) {
      json[r'memberTagsFilter'] = this.memberTagsFilter;
    } else {
      json[r'memberTagsFilter'] = null;
    }
    if (this.productTagsFilter != null) {
      json[r'productTagsFilter'] = this.productTagsFilter;
    } else {
      json[r'productTagsFilter'] = null;
    }
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

  /// Returns a new [Competition] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Competition? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Competition[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Competition[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Competition(
        id: mapValueOfType<String>(json, r'id')!,
        spaceName: mapValueOfType<String>(json, r'spaceName'),
        created: mapDateTime(json, r'created', r''),
        customFields: mapCastOfType<String, Object>(json, r'customFields') ?? const {},
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        metadata: mapCastOfType<String, String>(json, r'metadata') ?? const {},
        competitionType: CompetitionType.fromJson(json[r'competitionType']),
        numberOfRounds: mapValueOfType<int>(json, r'numberOfRounds'),
        numberOfGroupStages: mapValueOfType<int>(json, r'numberOfGroupStages'),
        maxNumberOfEntrants: mapValueOfType<int>(json, r'maxNumberOfEntrants'),
        minNumberOfEntrants: mapValueOfType<int>(json, r'minNumberOfEntrants'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        termsAndConditions: mapValueOfType<String>(json, r'termsAndConditions'),
        entrantMemberType: mapValueOfType<String>(json, r'entrantMemberType'),
        scheduledStartDate: mapDateTime(json, r'scheduledStartDate', r''),
        scheduledEndDate: mapDateTime(json, r'scheduledEndDate', r''),
        actualStartDate: mapDateTime(json, r'actualStartDate', r''),
        actualEndDate: mapDateTime(json, r'actualEndDate', r''),
        status: CompetitionStatus.fromJson(json[r'status']),
        statusCode: mapValueOfType<int>(json, r'statusCode'),
        constraints: json[r'constraints'] is Iterable
            ? (json[r'constraints'] as Iterable).cast<String>().toSet()
            : const {},
        products: ProductReduced.listFromJson(json[r'products']),
        memberTagsFilter: DependantOn.fromJson(json[r'memberTagsFilter']),
        productTagsFilter: DependantOn.fromJson(json[r'productTagsFilter']),
        bannerLink: mapValueOfType<String>(json, r'bannerLink'),
        bannerHighResolutionLink: mapValueOfType<String>(json, r'bannerHighResolutionLink'),
        bannerLowResolutionLink: mapValueOfType<String>(json, r'bannerLowResolutionLink'),
        iconLink: mapValueOfType<String>(json, r'iconLink'),
      );
    }
    return null;
  }

  static List<Competition> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Competition>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Competition.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Competition> mapFromJson(dynamic json) {
    final map = <String, Competition>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Competition.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Competition-objects as value to a dart map
  static Map<String, List<Competition>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Competition>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Competition.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

