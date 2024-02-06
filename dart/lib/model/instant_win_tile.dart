//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class InstantWinTile {
  /// Returns a new [InstantWinTile] instance.
  InstantWinTile({
    required this.icon,
    this.iconLink,
    this.text,
    this.contraints = const [],
    this.reward,
    required this.probability,
    required this.location,
  });

  /// The id to the image file
  String icon;

  /// The uri to this image
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iconLink;

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  /// hasPrizes, glow
  List<String> contraints;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RewardReduced? reward;

  /// 
  double probability;

  GridLocation location;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InstantWinTile &&
    other.icon == icon &&
    other.iconLink == iconLink &&
    other.text == text &&
    _deepEquality.equals(other.contraints, contraints) &&
    other.reward == reward &&
    other.probability == probability &&
    other.location == location;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (icon.hashCode) +
    (iconLink == null ? 0 : iconLink!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (contraints.hashCode) +
    (reward == null ? 0 : reward!.hashCode) +
    (probability.hashCode) +
    (location.hashCode);

  @override
  String toString() => 'InstantWinTile[icon=$icon, iconLink=$iconLink, text=$text, contraints=$contraints, reward=$reward, probability=$probability, location=$location]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'icon'] = this.icon;
    if (this.iconLink != null) {
      json[r'iconLink'] = this.iconLink;
    } else {
      json[r'iconLink'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
      json[r'contraints'] = this.contraints;
    if (this.reward != null) {
      json[r'reward'] = this.reward;
    } else {
      json[r'reward'] = null;
    }
      json[r'probability'] = this.probability;
      json[r'location'] = this.location;
    return json;
  }

  /// Returns a new [InstantWinTile] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InstantWinTile? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InstantWinTile[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InstantWinTile[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InstantWinTile(
        icon: mapValueOfType<String>(json, r'icon')!,
        iconLink: mapValueOfType<String>(json, r'iconLink'),
        text: mapValueOfType<String>(json, r'text'),
        contraints: json[r'contraints'] is Iterable
            ? (json[r'contraints'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        reward: RewardReduced.fromJson(json[r'reward']),
        probability: mapValueOfType<double>(json, r'probability')!,
        location: GridLocation.fromJson(json[r'location'])!,
      );
    }
    return null;
  }

  static List<InstantWinTile> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InstantWinTile>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InstantWinTile.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InstantWinTile> mapFromJson(dynamic json) {
    final map = <String, InstantWinTile>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InstantWinTile.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InstantWinTile-objects as value to a dart map
  static Map<String, List<InstantWinTile>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InstantWinTile>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InstantWinTile.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'icon',
    'probability',
    'location',
  };
}

