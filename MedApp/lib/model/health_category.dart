import 'dart:convert';

class HealthCategory {
  int? id;
  String? name;
  String? imagePath;

  HealthCategory({
    this.id,
    this.name,
    this.imagePath,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'imagePath': imagePath,
    };
  }

  factory HealthCategory.fromMap(Map<String, dynamic>? map) {
    if (map == null) return HealthCategory();

    return HealthCategory(
      id: map['id'],
      name: map['name'],
      imagePath: map['imagePath'],
    );
  }

  String toJson() => json.encode(toMap());

  factory HealthCategory.fromJson(String source) =>
      HealthCategory.fromMap(json.decode(source));
}

final healthCategories = [
  HealthCategory(
    id: 0,
    name: 'Family Law',
    imagePath: 'assets/images/lawyericon.png',
  ),
  HealthCategory(
    id: 1,
    name: 'Immigration Law',
    imagePath: 'assets/images/lawyericon.png',
  ),
  HealthCategory(
    id: 2,
    name: 'Corporate Law',
    imagePath: 'assets/images/lawyericon.png',
  ),
  HealthCategory(
    id: 3,
    name: 'Criminal Law',
    imagePath: 'assets/images/lawyericon.png',
  ),
  HealthCategory(
    id: 4,
    name: 'Contract Law',
    imagePath: 'assets/images/lawyericon.png',
  ),
  HealthCategory(
    id: 5,
    name: 'Family Law',
    imagePath: 'assets/images/lawyericon.png',
  ),
  HealthCategory(
    id: 6,
    name: 'Family Law',
    imagePath: 'assets/images/lawyericon.png',
  ),
  HealthCategory(
    id: 7,
    name: 'Family Law',
    imagePath: 'assets/images/lawyericon.png',
  ),
  HealthCategory(
    id: 8,
    name: 'Family Law',
    imagePath: 'assets/images/lawyericon.png',
  ),
  HealthCategory(
    id: 9,
    name: 'Family Law',
    imagePath: 'assets/images/lawyericon.png',
  ),
  HealthCategory(
    id: 10,
    name: 'Family Law',
    imagePath: 'assets/images/lawyericon.png',
  ),
  HealthCategory(
    id: 11,
    name: 'Family Law',
    imagePath: 'assets/images/lawyericon.png',
  ),
  HealthCategory(
    id: 12,
    name: 'Family Law',
    imagePath: 'assets/images/lawyericon.png',
  ),
  HealthCategory(
    id: 13,
    name: 'Family Law',
    imagePath: 'assets/images/lawyericon.png',
  ),
  HealthCategory(
    id: 14,
    name: 'Family Law',
    imagePath: 'assets/images/lawyericon.png',
  ),
  HealthCategory(
    id: 15,
    name: 'Family Law',
    imagePath: 'assets/images/lawyericon.png',
  ),
  HealthCategory(
    id: 16,
    name: 'Family Law',
    imagePath: 'assets/images/lawyericon.png',
  ),
  HealthCategory(
    id: 17,
    name: 'Family Law',
    imagePath: 'assets/images/lawyericon.png',
  ),
  HealthCategory(
    id: 18,
    name: 'Family Law',
    imagePath: 'assets/images/lawyericon.png',
  ),
];
