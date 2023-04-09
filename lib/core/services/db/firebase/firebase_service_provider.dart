import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/info/app_info.dart';
import 'package:nutrition/core/log/log.dart';
import 'package:nutrition/core/services/db/firebase/firebase.dart';

import 'package:universal_io/io.dart';

final firebaseServiceProvider = Provider<FirebaseServiceProvider>((ref) {
  throw UnimplementedError();
});

class FirebaseServiceProvider {
  late final FirebaseFirestore _fireStoreDb;
  late final FirebaseDatabase _realtimeDb;

  FireStoreDbModel _firestoreOnlineDbModel = const FireStoreDbModel();

  // int get onlineDbUpdateVersion => _onlineVersionRealtimeDb;
  int _buildNumberApp = 1;
  Future<FirebaseServiceProvider> load() async {
    _fireStoreDb = FirebaseFirestore.instance;
    _realtimeDb = FirebaseDatabase.instance;

    _firestoreOnlineDbModel = await _getFirestoreDbModel();

    _buildNumberApp = await AppInfo.getBuildNumber();

    return this;
  }

  Future<FireStoreDbModel> _getFirestoreDbModel() async {
    try {
      final doc = (await _fireStoreDb
              .collection('app_build_number')
              .doc(_buildNumberApp.toString())
              .get())
          .data();

      return FireStoreDbModel.fromMap(doc);
    } on Object catch (e, stackTrace) {
      logger.e(e, '', stackTrace);

      return const FireStoreDbModel();
    }
  }

  int getVersionOnlineDb() {
    return _firestoreOnlineDbModel.db_version;
  }

  /// url storage
  String getUrlDb() {
    final build = _buildNumberApp;
    final versionDb = _firestoreOnlineDbModel.db_version;

    return 'https://storage.googleapis.com/prod-ckd-nutrition.appspot.com/db/app_build_$build/v_$versionDb.db';
  }

  Future<DownloadTask> downloadDb({
  
    required String path,
  }) async {




    final httpsReference = FirebaseStorage.instance.refFromURL(getUrlDb());

    return httpsReference.writeToFile(File(path));
  }

  // Future<RealtimeDbModel> getRealtimeDbModel({
  //   required AppStorageService storage,
  // }) async {
  //   final firestoreOfflineDb = storage.getFirestoreDbModel();

  //   final versionOfflineRealtimeDB = firestoreOfflineDb.version_realtime_db;
  //   final versionOnlineRealtimeDB = _firestoreOnlineDbModel.version_realtime_db;

  //   // choice from whom take data
  //   if (versionOfflineRealtimeDB < versionOnlineRealtimeDB) {
  //     // do not save in the debug to test queries
  //     final realmDb = await _getOnlineRealmDb();

  //     if (kReleaseMode) {
  //       await storage.setFirestoreDbModel(_firestoreOnlineDbModel);
  //     }
  //     if (kReleaseMode) await storage.setRealtimeDbModel(realmDb);

  //     return realmDb;
  //   } else {
  //     return storage.getRealtimeDbModel();
  //   }
  // }

  // ignore: unused_element
  Future<RealtimeDbModel> _getOnlineRealmDb() async {
    try {
      final ref = _realtimeDb.ref();
      final snapshot = await ref.once();
      if (snapshot.snapshot.exists) {
        return RealtimeDbModel.fromMap(
          snapshot.snapshot.value! as Map<dynamic, dynamic>,
        );
      }

      return const RealtimeDbModel();
    } on Object catch (e, stackTrace) {
      logger.e(e, '', stackTrace);

      return const RealtimeDbModel();
    }
  }

  // Future<FeaturesDbModel> _getOflineVersion({
  //   required AppStorageService storage,
  // }) async {
  //   return storage.getRealtimeDbModel();
  // }
}
