class UserModel {
  final String uid;
  final String? displayName;
  final String? email;
  final String? photoURL;
  final DateTime? dateOfBirth;

  UserModel({
    required this.uid,
    this.displayName,
    this.email,
    this.photoURL,
    this.dateOfBirth,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'] ?? '',
      displayName: map['displayName'],
      email: map['email'],
      photoURL: map['photoURL'],
      dateOfBirth: map['dateOfBirth'] != null
          ? DateTime.tryParse(map['dateOfBirth'])
          : null,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'displayName': displayName,
      'email': email,
      'photoURL': photoURL,
      'dateOfBirth': dateOfBirth?.toIso8601String(),
    };
  }
}