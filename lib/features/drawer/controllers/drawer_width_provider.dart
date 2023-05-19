import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kidneysmart/core/utils/utils.dart';

final StateProvider<double> drawerWidthProvider =
    StateProvider<double>((StateProviderRef<double> ref) {
  return drawerWidth();
});
