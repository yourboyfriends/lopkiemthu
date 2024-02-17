// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Ward {
  String? id;
  String? name;
  String? lever;
  String? disstrictId;
  String? provinceId;
  Ward({
    this.id,
    this.name,
    this.lever,
    this.disstrictId,
    this.provinceId,
  });

  Ward copyWith({
    String? id,
    String? name,
    String? lever,
    String? disstrictId,
    String? provinceId,
  }) {
    return Ward(
      id: id ?? this.id,
      name: name ?? this.name,
      lever: lever ?? this.lever,
      disstrictId: disstrictId ?? this.disstrictId,
      provinceId: provinceId ?? this.provinceId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'lever': lever,
      'disstrictId': disstrictId,
      'provinceId': provinceId,
    };
  }

  factory Ward.fromMap(Map<String, dynamic> map) {
    return Ward(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      lever: map['lever'] != null ? map['lever'] as String : null,
      disstrictId:
          map['disstrictId'] != null ? map['disstrictId'] as String : null,
      provinceId:
          map['provinceId'] != null ? map['provinceId'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Ward.fromJson(String source) =>
      Ward.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Ward(id: $id, name: $name, lever: $lever, disstrictId: $disstrictId, provinceId: $provinceId)';
  }

  @override
  bool operator ==(covariant Ward other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.lever == lever &&
        other.disstrictId == disstrictId &&
        other.provinceId == provinceId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        lever.hashCode ^
        disstrictId.hashCode ^
        provinceId.hashCode;
  }
}
