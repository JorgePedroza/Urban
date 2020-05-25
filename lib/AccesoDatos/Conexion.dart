
import 'package:mysql1/mysql1.dart';

class Conexion{

   var settings = new ConnectionSettings(
      host: 'mysql://u3hytgoaavpikzap:MqpxPJzZKVa6pqMxOS4H@berjhnu44f9xwripgiam-mysql.services.clever-cloud.com:3306/berjhnu44f9xwripgiam',
      port: 3306,
      user: 'berjhnu44f9xwripgiam',
      password: 'MqpxPJzZKVa6pqMxOS4H',
      db: 'berjhnu44f9xwripgiam');

  get conexionBD async {
  var conn = await MySqlConnection.connect(settings);
  return conn;
}
}
