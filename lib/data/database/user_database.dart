import 'package:sqflite/sqflite.dart';

class UserDatabase{

  static final UserDatabase _userDatabase = UserDatabase._internal();

  factory UserDatabase(){
    return _userDatabase;
  }

  UserDatabase._internal();

  late Database database;

  Future initDatabase() async {
        var databasePath = await getDatabasesPath();
        String path = databasePath+ "/user.db";
        database = await openDatabase(path, version: 1, onCreate: (Database db, version) async => {
          await db.execute("CREATE TABLE IF NOT EXISTS User (email TEXT, username TEXT, bio TEXT, image TEXT, token TEXT");
        });
  }

  Future<String> getUser() async {
    var asd = await database.rawQuery("SELECT * FROM User");
    return asd;
  }


}