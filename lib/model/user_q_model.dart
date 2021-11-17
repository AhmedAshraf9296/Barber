import 'dart:convert';

UserQModel mapSclFromJson(String str) => UserQModel.fromJson(json.decode(str));

String mapSclToJson(UserQModel data) => json.encode(data.toJson());

class UserQModel {
  UserQModel({
    this.id,
    this.pass,
    this.email,
    this.name,
    this.areaid,
    this.areaname,
    this.branchcount,
  });

  int id;
  String pass;
  String email;
  String name;
  int areaid;
  String areaname;
  int branchcount;

  factory UserQModel.fromJson(Map<dynamic, dynamic> json) => UserQModel(
    id: json["id"],
    pass: json["pass"],
    email: json["email"],
    name: json["name"],
    areaid: json["areaid"],
    areaname: json["areaname"],
    branchcount: json["branchcount"],
  );

  Map<dynamic, dynamic> toJson() => {
    "id": id,
    "pass": pass,
    "email": email,
    "name": name,
    "areaid": areaid,
    "areaname": areaname,
    "branchcount": branchcount,
  };
}












//
//
//
//
// class UserQModel {
//   int id, areaid, branchcount;
//   String pass, email, name, areaname;
//
//   UserQModel(
//       {this.id,
//       this.areaid,
//       this.branchcount,
//       this.pass,
//       this.email,
//       this.name,
//       this.areaname});
//
//   UserQModel.fromJson(Map<dynamic, dynamic> map) {
//     if (map == null) {
//       return;
//     }
//
//     id = map['id'];
//     areaid = map['areaid'];
//     branchcount = map['branchcount'];
//     pass = map['pass'];
//     email = map['email'];
//     name = map['name'];
//     areaname = map['areaname'];
//   }
//
//   toJson() {
//     return {
//       'id': id,
//       'areaid': areaid,
//       'branchcount': branchcount,
//       'pass': pass,
//       'email': email,
//       'name': name,
//       'areaname': areaname
//     };
//   }
// }
