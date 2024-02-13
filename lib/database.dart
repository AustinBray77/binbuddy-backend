import 'package:binbuddy_shared/binbuddy_shared.dart';

class Database {
  String databaseURI;

  Database(this.databaseURI);

  Future<User> checkUserExists(String email, String password) async {
    return User("", "", "" ,0,0);
  }
}