enum RoleEnum {
  ADMIN,
  PARENT,
  CHILD,
}

class UserModel {
  final String id;
  final String nickname;
  final String email;
  final RoleEnum role;
  final int score;

  UserModel({
    required this.id,
    required this.nickname,
    required this.email,
    required this.role,
    required this.score,
  }) {}
}
