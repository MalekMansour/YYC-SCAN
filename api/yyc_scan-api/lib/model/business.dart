//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Business {
  /// Returns a new [Business] instance.
  Business({
    this.businessId,
    this.businessType,
    this.category,
    this.businessName,
    this.description,
    this.rating,
    this.visited,
    this.physical,
    this.coordinate,
    this.address,
    this.contact,
    this.businessImage,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? businessId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? businessType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? businessName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? rating;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? visited;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? physical;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? coordinate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? address;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contact;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? businessImage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Business &&
    other.businessId == businessId &&
    other.businessType == businessType &&
    other.category == category &&
    other.businessName == businessName &&
    other.description == description &&
    other.rating == rating &&
    other.visited == visited &&
    other.physical == physical &&
    other.coordinate == coordinate &&
    other.address == address &&
    other.contact == contact &&
    other.businessImage == businessImage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (businessId == null ? 0 : businessId!.hashCode) +
    (businessType == null ? 0 : businessType!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (businessName == null ? 0 : businessName!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (rating == null ? 0 : rating!.hashCode) +
    (visited == null ? 0 : visited!.hashCode) +
    (physical == null ? 0 : physical!.hashCode) +
    (coordinate == null ? 0 : coordinate!.hashCode) +
    (address == null ? 0 : address!.hashCode) +
    (contact == null ? 0 : contact!.hashCode) +
    (businessImage == null ? 0 : businessImage!.hashCode);

  @override
  String toString() => 'Business[businessId=$businessId, businessType=$businessType, category=$category, businessName=$businessName, description=$description, rating=$rating, visited=$visited, physical=$physical, coordinate=$coordinate, address=$address, contact=$contact, businessImage=$businessImage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.businessId != null) {
      json[r'businessId'] = this.businessId;
    } else {
      json[r'businessId'] = null;
    }
    if (this.businessType != null) {
      json[r'businessType'] = this.businessType;
    } else {
      json[r'businessType'] = null;
    }
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.businessName != null) {
      json[r'businessName'] = this.businessName;
    } else {
      json[r'businessName'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.rating != null) {
      json[r'rating'] = this.rating;
    } else {
      json[r'rating'] = null;
    }
    if (this.visited != null) {
      json[r'visited'] = this.visited;
    } else {
      json[r'visited'] = null;
    }
    if (this.physical != null) {
      json[r'physical'] = this.physical;
    } else {
      json[r'physical'] = null;
    }
    if (this.coordinate != null) {
      json[r'coordinate'] = this.coordinate;
    } else {
      json[r'coordinate'] = null;
    }
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.contact != null) {
      json[r'contact'] = this.contact;
    } else {
      json[r'contact'] = null;
    }
    if (this.businessImage != null) {
      json[r'businessImage'] = this.businessImage;
    } else {
      json[r'businessImage'] = null;
    }
    return json;
  }

  /// Returns a new [Business] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Business? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Business[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Business[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Business(
        businessId: mapValueOfType<int>(json, r'businessId'),
        businessType: mapValueOfType<int>(json, r'businessType'),
        category: mapValueOfType<String>(json, r'category'),
        businessName: mapValueOfType<String>(json, r'businessName'),
        description: mapValueOfType<String>(json, r'description'),
        rating: mapValueOfType<double>(json, r'rating'),
        visited: mapValueOfType<int>(json, r'visited'),
        physical: mapValueOfType<bool>(json, r'physical'),
        coordinate: mapValueOfType<String>(json, r'coordinate'),
        address: mapValueOfType<String>(json, r'address'),
        contact: mapValueOfType<String>(json, r'contact'),
        businessImage: mapValueOfType<String>(json, r'businessImage'),
      );
    }
    return null;
  }

  static List<Business> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Business>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Business.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Business> mapFromJson(dynamic json) {
    final map = <String, Business>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Business.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Business-objects as value to a dart map
  static Map<String, List<Business>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Business>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Business.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

