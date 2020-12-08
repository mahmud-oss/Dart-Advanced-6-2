import 'package:sqljocky5/sqljocky.dart';
import 'dart:convert';
//import 'package:sqljocky5/utils.dart';
import 'package:sqljocky5/constants.dart';
import 'dart:io';
void main(List<String> arguments) async{
  var pool= new ConnectionSettings(
      user: "bryan",
      password: "password",
      host: "localhost",
      port: 3306,
      db: "school"
  );
  var conn=await MySqlConnection.connect(pool);
  var results = await conn.execute('select * from teacher');
  //print('${await results.length}');
  results.forEach((Row row) {
    print(row[0].toString()+' : '+row[1].toString()+' -> '+row[2].toString());
  });
  conn.close();
}
