import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nutrition/core/info/device_info.dart';
import 'package:nutrition/core/log/log.dart';
import 'package:nutrition/core/services/db/db.dart';

import 'package:nutrition/core/services/storage/app_storage_service.dart';

final firebaseServiceProvider = Provider<FirebaseServiceProvider>((ref) {
  throw UnimplementedError();
});

class FirebaseServiceProvider {
  late final FirebaseFirestore _fireStoreDb;
  late final FirebaseDatabase _realtimeDb;

  FireStoreDbModel _firestoreDbModel = const FireStoreDbModel();

  // int get onlineDbUpdateVersion => _onlineVersionRealtimeDb;
  String _buildNumberApp = '1';
  Future<FirebaseServiceProvider> load() async {
    _fireStoreDb = FirebaseFirestore.instance;
    _realtimeDb = FirebaseDatabase.instance;

    _firestoreDbModel = await _getFirestoreDbModel();

    _buildNumberApp = await DeviceInfo.getBuildNumber();

    return this;
  }

  Future<FireStoreDbModel> _getFirestoreDbModel() async {
    try {
      final doc = (await _fireStoreDb
              .collection('app_build_number')
              .doc(_buildNumberApp)
              .get())
          .data();

      return FireStoreDbModel.fromMap(doc);
    } on Object catch (e, stackTrace) {
      logger.e(e, '', stackTrace);

      return const FireStoreDbModel();
    }
  }

  Future<RealtimeDbModel> getRealtimeDbModel({
    required AppStorageService storage,
  }) async {
    final firestoreOfflineDb = storage.getFirestoreDbModel();

    final versionOfflineRealtimeDB = firestoreOfflineDb.version_realtime_db;
    final versionOnlineRealtimeDB = _firestoreDbModel.version_realtime_db;

    // choice from whom take data
    if (versionOfflineRealtimeDB < versionOnlineRealtimeDB) {
      // do not save in the debug to test queries
      final realmDb = await _getOnlineRealmDb();

      if (kReleaseMode) await storage.setFirestoreDbModel(_firestoreDbModel);
      if (kReleaseMode) await storage.setRealtimeDbModel(realmDb);

      return realmDb;
    } else {
      return storage.getRealtimeDbModel();
    }
  }

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
