//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class ProductReduced {
  /// Returns a new [ProductReduced] instance.
  ProductReduced({
    this.customFields = const {},
    this.tags = const [],
    this.metadata = const {},
    this.name,
    this.productRefId,
    this.id,
  });

  Map<String, Object> customFields;

  /// A list of id's used to tag models
  List<String> tags;

  Map<String, String> metadata;

  /// The name of the product
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The reference to this product in your system. The reference identifier can not be changed after the product has been created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? productRefId;

  /// Unique system identifier of a Main Rule
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProductReduced &&
    _deepEquality.equals(other.customFields, customFields) &&
    _deepEquality.equals(other.tags, tags) &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.name == name &&
    other.productRefId == productRefId &&
    other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (customFields.hashCode) +
    (tags.hashCode) +
    (metadata.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (productRefId == null ? 0 : productRefId!.hashCode) +
    (id == null ? 0 : id!.hashCode);

  @override
  String toString() => 'ProductReduced[customFields=$customFields, tags=$tags, metadata=$metadata, name=$name, productRefId=$productRefId, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'customFields'] = this.customFields;
      json[r'tags'] = this.tags;
      json[r'metadata'] = this.metadata;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.productRefId != null) {
      json[r'productRefId'] = this.productRefId;
    } else {
      json[r'productRefId'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    return json;
  }

  /// Returns a new [ProductReduced] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProductReduced? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProductReduced[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProductReduced[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProductReduced(
        customFields: mapCastOfType<String, Object>(json, r'customFields') ?? const {},
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        metadata: mapCastOfType<String, String>(json, r'metadata') ?? const {},
        name: mapValueOfType<String>(json, r'name'),
        productRefId: mapValueOfType<String>(json, r'productRefId'),
        id: mapValueOfType<String>(json, r'id'),
      );
    }
    return null;
  }

  static List<ProductReduced> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProductReduced>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductReduced.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProductReduced> mapFromJson(dynamic json) {
    final map = <String, ProductReduced>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProductReduced.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProductReduced-objects as value to a dart map
  static Map<String, List<ProductReduced>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProductReduced>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProductReduced.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

