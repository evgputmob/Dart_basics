import 'user.dart';

class UserManager<T extends User> {
  final Set<T> _users = {};

  //UserManager(...);

  void addUser(T newUser) => _users.add(newUser);

  void removeUser(T user) {
    if (_users.contains(user)) {
      _users.remove(user);
    }
  }

  void printUsers() {
    for (var user in _users) {
      if (user is AdminUser) {
        print(user.getMailSystem());
      } else {
        print(user.email);
      }
    }
  }
}
