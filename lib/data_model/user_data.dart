class UserModel {
 String name;
 String profilePic;
 String createdAt;
 String phoneNumber;
 String uid;

  UserModel({
    required this.name,
    required this.profilePic,
    required this.createdAt,
    required this.phoneNumber,
    required this.uid,
  });


  factory UserModel.fromMap(Map<String, dynamic> map){
    return UserModel(
        name: map['name'] ?? '',
        profilePic: map['profilePic'] ?? '',
        createdAt: map['createdAt'] ?? '',
        phoneNumber: map['phoneNumber'] ?? '',
        uid: map['uid'] ?? '',
    );
  }


  Map<String, dynamic> toMap() {
    return {
    "name": name,
    "uid": uid,
    "profilePic": profilePic,
    "phoneNumber": phoneNumber,
      "createdAt": createdAt,


    };
  }
}