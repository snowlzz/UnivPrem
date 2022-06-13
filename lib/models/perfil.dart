// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Perfil {
  String? name;
  String? mName;
  String? birth;
  int? gesAge;
  bool? gender;

  Perfil({
    this.name,
    this.mName,
    this.birth,
    this.gesAge,
    this.gender,
  });

  Perfil copyWith({
    String? name,
    String? mName,
    String? birth,
    int? gesAge,
    bool? gender,
  }) {
    return Perfil(
      name: name ?? this.name,
      mName: mName ?? this.mName,
      birth: birth ?? this.birth,
      gesAge: gesAge ?? this.gesAge,
      gender: gender ?? this.gender,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'mName': mName,
      'birth': birth,
      'gesAge': gesAge,
      'gender': gender,
    };
  }

  factory Perfil.fromMap(Map<String, dynamic> map) {
    return Perfil(
      name: map['name'] != null ? map['name'] as String : null,
      mName: map['mName'] != null ? map['mName'] as String : null,
      birth: map['birth'] != null ? map['birth'] as String : null,
      gesAge: map['gesAge'] != null ? map['gesAge'] as int : null,
      gender: map['gender'] != null ? map['gender'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Perfil.fromJson(String source) =>
      Perfil.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Perfil(name: $name, mName: $mName, birth: $birth, gesAge: $gesAge, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Perfil &&
        other.name == name &&
        other.mName == mName &&
        other.birth == birth &&
        other.gesAge == gesAge &&
        other.gender == gender;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        mName.hashCode ^
        birth.hashCode ^
        gesAge.hashCode ^
        gender.hashCode;
  }
}
