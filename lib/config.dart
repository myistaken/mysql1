import 'package:mysql1/mysql1.dart';

class Mysql {
  static String host = '10.34.18.98',
      user = 'root',
      password = '!password1',
      db = 'testdb';
  static int port = 3306;

  Mysql();

  Future<MySqlConnection> getConnection() async {
    var settings = new ConnectionSettings(
        host: host,
        port: port,
        user: user,
        password: password,
        db: db
    );
    return await MySqlConnection.connect(settings);
  }
}