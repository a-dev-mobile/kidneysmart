import 'package:in_app_review/in_app_review.dart';
import 'package:kidneysmart/core/storage/app_storage.dart';

/// RateAndReviewApp Singleton class
class RateAndReviewApp {
  factory RateAndReviewApp() => _internalSingleton;
  RateAndReviewApp._internal();

  static final RateAndReviewApp _internalSingleton =
      RateAndReviewApp._internal();

  /// Показывает нативное окно для оценки приложения.
  /// У Android есть ограничения на количество показов и на эмуляторе Android окно не показывается окно.
  /// https://developer.android.com/guide/playcore/in-app-review#quotas
  /// При показе окна в SharedPreferences записывается true что бы больше не показывать его.
  /// SharedPreferences может выбросить throw
  static Future<void> rateAndReviewApp({required AppStorage storage}) async {
    try {
      // задержка на подзагрузку экрана
      await Future<void>.delayed(const Duration(seconds: 3));
      final isShowRateApp = await storage.isShowRateApp();
      if (isShowRateApp) {
        final inAppReview = InAppReview.instance;

        // Показывается окно с оценкой в зависимости от платформы
        if (await inAppReview.isAvailable()) await inAppReview.requestReview();

        // Записываем в SharedPreferences что-бы больше не показывать окно
        await storage.setOffShowRateApp();
      }
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    }
  }

  /// В SharedPreferences записывается true что-бы показывать окно с оценкой
  static Future<void> resetRateAndReviewApp({
    required AppStorage storage,
  }) async {
    await storage.setOnShowRateApp();
  }
}
