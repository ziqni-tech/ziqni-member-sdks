//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of ziqni.member.api;

class InstantWinPlayOutcome {
  /// Returns a new [InstantWinPlayOutcome] instance.
  InstantWinPlayOutcome({
    this.awards = const [],
    this.tiles = const [],
  });

  /// The awards that the member unlocked
  List<Award> awards;

  /// The tiles uncovered during the game session, for the wheel of fortune this will be the slice the player landed on for a scratch card it would be the revealed tiles
  List<InstantWinTile> tiles;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InstantWinPlayOutcome &&
    _deepEquality.equals(other.awards, awards) &&
    _deepEquality.equals(other.tiles, tiles);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (awards.hashCode) +
    (tiles.hashCode);

  @override
  String toString() => 'InstantWinPlayOutcome[awards=$awards, tiles=$tiles]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'awards'] = this.awards;
      json[r'tiles'] = this.tiles;
    return json;
  }

  /// Returns a new [InstantWinPlayOutcome] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InstantWinPlayOutcome? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InstantWinPlayOutcome[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InstantWinPlayOutcome[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InstantWinPlayOutcome(
        awards: Award.listFromJson(json[r'awards']),
        tiles: InstantWinTile.listFromJson(json[r'tiles']),
      );
    }
    return null;
  }

  static List<InstantWinPlayOutcome> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InstantWinPlayOutcome>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InstantWinPlayOutcome.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InstantWinPlayOutcome> mapFromJson(dynamic json) {
    final map = <String, InstantWinPlayOutcome>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InstantWinPlayOutcome.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InstantWinPlayOutcome-objects as value to a dart map
  static Map<String, List<InstantWinPlayOutcome>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InstantWinPlayOutcome>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InstantWinPlayOutcome.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

