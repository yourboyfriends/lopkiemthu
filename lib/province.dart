// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Province {
  String? id;
  String? name;
  String? lever;
  Province({
    this.id,
    this.name,
    this.lever,
  });

  Province copyWith({
    String? id,
    String? name,
    String? lever,
  }) {
    return Province(
      id: id ?? this.id,
      name: name ?? this.name,
      lever: lever ?? this.lever,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'lever': lever,
    };
  }

  factory Province.fromMap(Map<String, dynamic> map) {
    return Province(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      lever: map['lever'] != null ? map['lever'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Province.fromJson(String source) =>
      Province.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Province(id: $id, name: $name, lever: $lever)';

  @override
  bool operator ==(covariant Province other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name && other.lever == lever;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ lever.hashCode;
}
