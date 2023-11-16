//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class RewardTypeReduced {
  /// Returns a new [RewardTypeReduced] instance.
  RewardTypeReduced({
    this.key,
    this.uom,
    this.uomIsoCode,
    this.uomSymbol,
    this.uomType,
  });

  /// A unique key that represents the reward type
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  /// The key assigned to the unit of measure 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uom;

  /// The ISO code assigned to the unit of measure
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uomIsoCode;

  /// The symbol assigned to the unit of measure
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uomSymbol;

  ///  The type of UOM, either Other Currency Mass Time Temperature ElectricCurrent AmountOfSubstance LuminousIntensity Distance
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uomType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RewardTypeReduced &&
    other.key == key &&
    other.uom == uom &&
    other.uomIsoCode == uomIsoCode &&
    other.uomSymbol == uomSymbol &&
    other.uomType == uomType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (key == null ? 0 : key!.hashCode) +
    (uom == null ? 0 : uom!.hashCode) +
    (uomIsoCode == null ? 0 : uomIsoCode!.hashCode) +
    (uomSymbol == null ? 0 : uomSymbol!.hashCode) +
    (uomType == null ? 0 : uomType!.hashCode);

  @override
  String toString() => 'RewardTypeReduced[key=$key, uom=$uom, uomIsoCode=$uomIsoCode, uomSymbol=$uomSymbol, uomType=$uomType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.uom != null) {
      json[r'uom'] = this.uom;
    } else {
      json[r'uom'] = null;
    }
    if (this.uomIsoCode != null) {
      json[r'uomIsoCode'] = this.uomIsoCode;
    } else {
      json[r'uomIsoCode'] = null;
    }
    if (this.uomSymbol != null) {
      json[r'uomSymbol'] = this.uomSymbol;
    } else {
      json[r'uomSymbol'] = null;
    }
    if (this.uomType != null) {
      json[r'uomType'] = this.uomType;
    } else {
      json[r'uomType'] = null;
    }
    return json;
  }

  /// Returns a new [RewardTypeReduced] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RewardTypeReduced? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RewardTypeReduced[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RewardTypeReduced[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RewardTypeReduced(
        key: mapValueOfType<String>(json, r'key'),
        uom: mapValueOfType<String>(json, r'uom'),
        uomIsoCode: mapValueOfType<String>(json, r'uomIsoCode'),
        uomSymbol: mapValueOfType<String>(json, r'uomSymbol'),
        uomType: mapValueOfType<String>(json, r'uomType'),
      );
    }
    return null;
  }

  static List<RewardTypeReduced> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RewardTypeReduced>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RewardTypeReduced.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RewardTypeReduced> mapFromJson(dynamic json) {
    final map = <String, RewardTypeReduced>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RewardTypeReduced.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RewardTypeReduced-objects as value to a dart map
  static Map<String, List<RewardTypeReduced>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RewardTypeReduced>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RewardTypeReduced.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

