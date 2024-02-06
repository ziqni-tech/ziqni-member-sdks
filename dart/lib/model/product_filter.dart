//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class ProductFilter {
  /// Returns a new [ProductFilter] instance.
  ProductFilter({
    this.entityIDs = const [],
    this.sortBy = const [],
    this.skip,
    this.limit,
    this.constraints = const [],
    this.entityType,
  });

  /// The entity id to search. The default is product id
  List<String> entityIDs;

  /// Allow data to be sorted by name, description, created, etc. The default is name. Sorting is not available on translations
  List<QuerySortBy> sortBy;

  /// Allows paging through the data. The default is zero. If the limit is set 20, and the skip is set to 20 then it will return the next 20 records i.e. page 2
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? skip;

  /// Limit the result set. Default value is 20, maximum value is 50.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  /// Specify the constraints that need to be applied to the filter. - empty (default) == search based on the provided criteria - productRefId == This means the entityId(s) provided are product reference identifiers - similarTo == Find product similar to the prouct ID(s) provided
  List<String> constraints;

  /// This field determines the meaning of the IDs field - product (default) - competition - achievement.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entityType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProductFilter &&
    _deepEquality.equals(other.entityIDs, entityIDs) &&
    _deepEquality.equals(other.sortBy, sortBy) &&
    other.skip == skip &&
    other.limit == limit &&
    _deepEquality.equals(other.constraints, constraints) &&
    other.entityType == entityType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entityIDs.hashCode) +
    (sortBy.hashCode) +
    (skip == null ? 0 : skip!.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (constraints.hashCode) +
    (entityType == null ? 0 : entityType!.hashCode);

  @override
  String toString() => 'ProductFilter[entityIDs=$entityIDs, sortBy=$sortBy, skip=$skip, limit=$limit, constraints=$constraints, entityType=$entityType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'entityIDs'] = this.entityIDs;
      json[r'sortBy'] = this.sortBy;
    if (this.skip != null) {
      json[r'skip'] = this.skip;
    } else {
      json[r'skip'] = null;
    }
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
      json[r'constraints'] = this.constraints;
    if (this.entityType != null) {
      json[r'entityType'] = this.entityType;
    } else {
      json[r'entityType'] = null;
    }
    return json;
  }

  /// Returns a new [ProductFilter] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProductFilter? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProductFilter[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProductFilter[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProductFilter(
        entityIDs: json[r'entityIDs'] is Iterable
            ? (json[r'entityIDs'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        sortBy: QuerySortBy.listFromJson(json[r'sortBy']),
        skip: mapValueOfType<int>(json, r'skip'),
        limit: mapValueOfType<int>(json, r'limit'),
        constraints: json[r'constraints'] is Iterable
            ? (json[r'constraints'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        entityType: mapValueOfType<String>(json, r'entityType'),
      );
    }
    return null;
  }

  static List<ProductFilter> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProductFilter>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductFilter.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProductFilter> mapFromJson(dynamic json) {
    final map = <String, ProductFilter>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProductFilter.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProductFilter-objects as value to a dart map
  static Map<String, List<ProductFilter>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProductFilter>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProductFilter.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

