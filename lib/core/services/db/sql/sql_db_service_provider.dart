// import 'dart:async';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:nutrition/core/info/device_info.dart';
// import 'package:nutrition/core/log/log.dart';
// import 'package:nutrition/core/services/db/firebase/firebase.dart';

// import 'package:nutrition/core/services/storage/app_storage_service.dart';
// import 'package:sqflite/sqflite.dart';

// final sqlDbProvider = Provider<SqlDbProvider>((ref) {
//   throw UnimplementedError();
// });

// class SqlDbProvider {
//   final String path;
//   Helper(this.path);
//  late Future<Database> _db;

//   Future<Database> getDb() {
//     _db ??= _initDb();

//     return _db;
//   }

//   // Guaranteed to be called only once.
//   Future<Database> _initDb() async {
//     final db = await openDatabase(this.path);
//     // do "tons of stuff in async mode"
//     return db;
//   }
// }
