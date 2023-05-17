// import 'dart:async';
// import 'dart:io';

// import 'package:flutter/services.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:kidneysmart/global/db.dart';
// import 'package:kidneysmart/shared/log/log.dart';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';

// final dbProvider = Provider<DbProvider>((ref) {
//   throw UnimplementedError();
// });

// class DbProvider {
//   Database get db => _db;
//   late Database _db;

//   Future<DbProvider> load() async {
//     _db = await copyDb();

//     return this;
//   }

//   Future<Database> copyDb() async {
//     log.i('Get DB patch');

//     final databasesPath = await getDatabasesPath();
//     final path = join(databasesPath, AppDBConst.name);
// // delete existing if any
//     log.i('delete DB');
//     await deleteDatabase(path);
// // Make sure the parent directory exists
//     try {
//       final _ = await Directory(dirname(path)).create(recursive: true);
//     } on Object catch (e, stackTrace) {
//       Error.throwWithStackTrace(e, stackTrace);
//     }
//     log.i('copy DB from asset');
//     // Copy from asset
//     final data = await rootBundle.load(join('assets', 'db', AppDBConst.name));
//     final bytes =
//         data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

//     final _ = await File(path).writeAsBytes(bytes, flush: true);

// // open the database
//     log.i('open DB');

//     return openDatabase(path, readOnly: true);
//   }
// }
