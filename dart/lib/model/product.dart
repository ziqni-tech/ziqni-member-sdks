//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class Product {
  /// Returns a new [Product] instance.
  Product({
    this.customFields = const {},
    this.tags = const [],
    this.metadata = const {},
    required this.id,
    required this.spaceName,
    required this.created,
    this.name,
    this.description,
    this.adjustmentFactor,
    this.productRefId,
    this.productType,
    this.iconLink,
    this.actionTypeAdjustmentFactors = const [],
  });

  Map<String, Object> customFields;

  /// A list of id's used to tag models
  List<String> tags;

  Map<String, String> metadata;

  /// A unique system generated identifier
  String id;

  /// This is the space name which is linked to the account
  String spaceName;

  /// ISO8601 timestamp for when a Model was created. All records are stored in UTC time zone
  DateTime created;

  /// The name of the product
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The description of the product for your reference
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// The multiplier to apply to source values received for this product events
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? adjustmentFactor;

  /// The reference to this product in your system. The reference identifier can not be changed after the product has been created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? productRefId;

  /// The type to this product in your system.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? productType;

  /// Link to the icon
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iconLink;

  List<ActionTypeAdjustmentFactor> actionTypeAdjustmentFactors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Product &&
    _deepEquality.equals(other.customFields, customFields) &&
    _deepEquality.equals(other.tags, tags) &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.id == id &&
    other.spaceName == spaceName &&
    other.created == created &&
    other.name == name &&
    other.description == description &&
    other.adjustmentFactor == adjustmentFactor &&
    other.productRefId == productRefId &&
    other.productType == productType &&
    other.iconLink == iconLink &&
    _deepEquality.equals(other.actionTypeAdjustmentFactors, actionTypeAdjustmentFactors);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (customFields.hashCode) +
    (tags.hashCode) +
    (metadata.hashCode) +
    (id.hashCode) +
    (spaceName.hashCode) +
    (created.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (adjustmentFactor == null ? 0 : adjustmentFactor!.hashCode) +
    (productRefId == null ? 0 : productRefId!.hashCode) +
    (productType == null ? 0 : productType!.hashCode) +
    (iconLink == null ? 0 : iconLink!.hashCode) +
    (actionTypeAdjustmentFactors.hashCode);

  @override
  String toString() => 'Product[customFields=$customFields, tags=$tags, metadata=$metadata, id=$id, spaceName=$spaceName, created=$created, name=$name, description=$description, adjustmentFactor=$adjustmentFactor, productRefId=$productRefId, productType=$productType, iconLink=$iconLink, actionTypeAdjustmentFactors=$actionTypeAdjustmentFactors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'customFields'] = this.customFields;
      json[r'tags'] = this.tags;
      json[r'metadata'] = this.metadata;
      json[r'id'] = this.id;
      json[r'spaceName'] = this.spaceName;
      json[r'created'] = this.created.toUtc().toIso8601String();
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
    if (this.adjustmentFactor != null) {
      json[r'adjustmentFactor'] = this.adjustmentFactor;
    } else {
      json[r'adjustmentFactor'] = null;
    }
    if (this.productRefId != null) {
      json[r'productRefId'] = this.productRefId;
    } else {
      json[r'productRefId'] = null;
    }
    if (this.productType != null) {
      json[r'productType'] = this.productType;
    } else {
      json[r'productType'] = null;
    }
    if (this.iconLink != null) {
      json[r'iconLink'] = this.iconLink;
    } else {
      json[r'iconLink'] = null;
    }
      json[r'actionTypeAdjustmentFactors'] = this.actionTypeAdjustmentFactors;
    return json;
  }

  /// Returns a new [Product] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Product? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Product[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Product[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Product(
        customFields: mapCastOfType<String, Object>(json, r'customFields') ?? const {},
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        metadata: mapCastOfType<String, String>(json, r'metadata') ?? const {},
        id: mapValueOfType<String>(json, r'id')!,
        spaceName: mapValueOfType<String>(json, r'spaceName')!,
        created: mapDateTime(json, r'created', r'')!,
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        adjustmentFactor: mapValueOfType<double>(json, r'adjustmentFactor'),
        productRefId: mapValueOfType<String>(json, r'productRefId'),
        productType: mapValueOfType<String>(json, r'productType'),
        iconLink: mapValueOfType<String>(json, r'iconLink'),
        actionTypeAdjustmentFactors: ActionTypeAdjustmentFactor.listFromJson(json[r'actionTypeAdjustmentFactors']),
      );
    }
    return null;
  }

  static List<Product> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Product>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Product.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Product> mapFromJson(dynamic json) {
    final map = <String, Product>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Product.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Product-objects as value to a dart map
  static Map<String, List<Product>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Product>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Product.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'spaceName',
    'created',
  };
}

