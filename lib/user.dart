abstract class User {
  final String _email;
  String get email => _email;

  User(this._email);
}

mixin MailDomenExtractor on User {
  String getMailSystem() {
    return (email.contains('@')) ? email.substring(email.indexOf('@') + 1) : '';
  }
}

class AdminUser extends User with MailDomenExtractor {
  AdminUser(String email) : super(email);
}

class GeneralUser extends User {
  GeneralUser(String email) : super(email);
}
