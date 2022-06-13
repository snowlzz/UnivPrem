// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Usuario {
  String? email;
  String? pass;
  Usuario({
    this.email,
    this.pass,
  });

  Usuario copyWith({
    String? email,
    String? pass,
  }) {
    return Usuario(
      email: email ?? this.email,
      pass: pass ?? this.pass,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'pass': pass,
    };
  }

  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
      email: map['email'] != null ? map['email'] as String : null,
      pass: map['pass'] != null ? map['pass'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Usuario.fromJson(String source) =>
      Usuario.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Usuario(email: $email, pass: $pass)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Usuario && other.email == email && other.pass == pass;
  }

  @override
  int get hashCode => email.hashCode ^ pass.hashCode;
}
