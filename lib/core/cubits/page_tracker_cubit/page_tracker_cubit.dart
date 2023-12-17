import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kidneysmart/core/enum/enum_project.dart';
import 'package:kidneysmart/core/enum/enum_store.dart';

import 'package:kidneysmart/core/storage/local_storage.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'page_tracker_state.dart';
part 'page_tracker_cubit.freezed.dart';

class PageTrackerCubit extends Cubit<PageTrackerState> {
  PageTrackerCubit({
    required LocalStorage storage,
  })  : _storage = storage,
        super(
          const PageTrackerState(),
        );

  final LocalStorage _storage;

  void setPage(String? page) {
    emit(state.copyWith(page: page));
  }
}
