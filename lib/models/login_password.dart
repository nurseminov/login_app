class UserPassword {
  UserPassword({
    required this.user,
    required this.passWord,
  });

  final String user;
  final String passWord;
}

final List<UserPassword> userdata = [
  UserPassword(
    user: 'nurs',
    passWord: 'nurs9494',
  ),
  UserPassword(
    user: 'tom',
    passWord: '12345',
  ),
];