import 'dart:convert';

AuthRes authResFromJson(String str) => AuthRes.fromJson(json.decode(str));

String authResToJson(AuthRes data) => json.encode(data.toJson());

class AuthRes {
  AuthRes({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.companyId,
    required this.createdAt,
    required this.token,
  });

  int id;
  String firstName;
  String lastName;
  String email;
  int companyId;
  DateTime createdAt;
  String token;

  factory AuthRes.fromJson(Map<String, dynamic> json) => AuthRes(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        companyId: json["company_id"],
        createdAt: DateTime.parse(json["created_at"]),
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "company_id": companyId,
        "created_at": createdAt.toIso8601String(),
        "token": token,
      };
}
