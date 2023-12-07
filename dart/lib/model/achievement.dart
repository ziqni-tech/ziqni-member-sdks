//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class Achievement {
  /// Returns a new [Achievement] instance.
  Achievement({
    required this.id,
    this.spaceName,
    this.created,
    this.customFields = const {},
    this.tags = const [],
    this.metadata = const {},
    this.name,
    this.description,
    this.termsAndConditions,
    this.constraints = const [],
    this.maxNumberOfIssues,
    this.scheduling,
    this.status,
    this.statusCode,
    this.memberTagsFilter,
    this.achievementDependencies,
    this.productTagsFilter,
    this.products = const [],
    this.iconLink,
    this.bannerLink,
    this.bannerLowResolutionLink,
    this.bannerHighResolutionLink,
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

  /// Additional constraints, if set means true [optinRequiredForEntrants, hasRules, hasRewards]
  List<String> constraints;

  /// Maximum number of issued achievements
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxNumberOfIssues;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Scheduling? scheduling;

  /// Achievement status
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// 
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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DependantOn? achievementDependencies;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DependantOn? productTagsFilter;

  /// 
  List<ProductReduced> products;

  /// Link to the icon
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iconLink;

  /// Link to the banner
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bannerLink;

  /// Link to the bannerLowResolution
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bannerLowResolutionLink;

  /// Link to the bannerHighResolution
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bannerHighResolutionLink;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Achievement &&
    other.id == id &&
    other.spaceName == spaceName &&
    other.created == created &&
    _deepEquality.equals(other.customFields, customFields) &&
    _deepEquality.equals(other.tags, tags) &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.name == name &&
    other.description == description &&
    other.termsAndConditions == termsAndConditions &&
    _deepEquality.equals(other.constraints, constraints) &&
    other.maxNumberOfIssues == maxNumberOfIssues &&
    other.scheduling == scheduling &&
    other.status == status &&
    other.statusCode == statusCode &&
    other.memberTagsFilter == memberTagsFilter &&
    other.achievementDependencies == achievementDependencies &&
    other.productTagsFilter == productTagsFilter &&
    _deepEquality.equals(other.products, products) &&
    other.iconLink == iconLink &&
    other.bannerLink == bannerLink &&
    other.bannerLowResolutionLink == bannerLowResolutionLink &&
    other.bannerHighResolutionLink == bannerHighResolutionLink;

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
    (constraints.hashCode) +
    (maxNumberOfIssues == null ? 0 : maxNumberOfIssues!.hashCode) +
    (scheduling == null ? 0 : scheduling!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (statusCode == null ? 0 : statusCode!.hashCode) +
    (memberTagsFilter == null ? 0 : memberTagsFilter!.hashCode) +
    (achievementDependencies == null ? 0 : achievementDependencies!.hashCode) +
    (productTagsFilter == null ? 0 : productTagsFilter!.hashCode) +
    (products.hashCode) +
    (iconLink == null ? 0 : iconLink!.hashCode) +
    (bannerLink == null ? 0 : bannerLink!.hashCode) +
    (bannerLowResolutionLink == null ? 0 : bannerLowResolutionLink!.hashCode) +
    (bannerHighResolutionLink == null ? 0 : bannerHighResolutionLink!.hashCode);

  @override
  String toString() => 'Achievement[id=$id, spaceName=$spaceName, created=$created, customFields=$customFields, tags=$tags, metadata=$metadata, name=$name, description=$description, termsAndConditions=$termsAndConditions, constraints=$constraints, maxNumberOfIssues=$maxNumberOfIssues, scheduling=$scheduling, status=$status, statusCode=$statusCode, memberTagsFilter=$memberTagsFilter, achievementDependencies=$achievementDependencies, productTagsFilter=$productTagsFilter, products=$products, iconLink=$iconLink, bannerLink=$bannerLink, bannerLowResolutionLink=$bannerLowResolutionLink, bannerHighResolutionLink=$bannerHighResolutionLink]';

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
      json[r'constraints'] = this.constraints;
    if (this.maxNumberOfIssues != null) {
      json[r'maxNumberOfIssues'] = this.maxNumberOfIssues;
    } else {
      json[r'maxNumberOfIssues'] = null;
    }
    if (this.scheduling != null) {
      json[r'scheduling'] = this.scheduling;
    } else {
      json[r'scheduling'] = null;
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
    if (this.achievementDependencies != null) {
      json[r'achievementDependencies'] = this.achievementDependencies;
    } else {
      json[r'achievementDependencies'] = null;
    }
    if (this.productTagsFilter != null) {
      json[r'productTagsFilter'] = this.productTagsFilter;
    } else {
      json[r'productTagsFilter'] = null;
    }
      json[r'products'] = this.products;
    if (this.iconLink != null) {
      json[r'iconLink'] = this.iconLink;
    } else {
      json[r'iconLink'] = null;
    }
    if (this.bannerLink != null) {
      json[r'bannerLink'] = this.bannerLink;
    } else {
      json[r'bannerLink'] = null;
    }
    if (this.bannerLowResolutionLink != null) {
      json[r'bannerLowResolutionLink'] = this.bannerLowResolutionLink;
    } else {
      json[r'bannerLowResolutionLink'] = null;
    }
    if (this.bannerHighResolutionLink != null) {
      json[r'bannerHighResolutionLink'] = this.bannerHighResolutionLink;
    } else {
      json[r'bannerHighResolutionLink'] = null;
    }
    return json;
  }

  /// Returns a new [Achievement] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Achievement? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Achievement[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Achievement[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Achievement(
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
        constraints: json[r'constraints'] is Iterable
            ? (json[r'constraints'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        maxNumberOfIssues: mapValueOfType<int>(json, r'maxNumberOfIssues'),
        scheduling: Scheduling.fromJson(json[r'scheduling']),
        status: mapValueOfType<String>(json, r'status'),
        statusCode: mapValueOfType<int>(json, r'statusCode'),
        memberTagsFilter: DependantOn.fromJson(json[r'memberTagsFilter']),
        achievementDependencies: DependantOn.fromJson(json[r'achievementDependencies']),
        productTagsFilter: DependantOn.fromJson(json[r'productTagsFilter']),
        products: ProductReduced.listFromJson(json[r'products']),
        iconLink: mapValueOfType<String>(json, r'iconLink'),
        bannerLink: mapValueOfType<String>(json, r'bannerLink'),
        bannerLowResolutionLink: mapValueOfType<String>(json, r'bannerLowResolutionLink'),
        bannerHighResolutionLink: mapValueOfType<String>(json, r'bannerHighResolutionLink'),
      );
    }
    return null;
  }

  static List<Achievement> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Achievement>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Achievement.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Achievement> mapFromJson(dynamic json) {
    final map = <String, Achievement>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Achievement.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Achievement-objects as value to a dart map
  static Map<String, List<Achievement>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Achievement>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Achievement.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

