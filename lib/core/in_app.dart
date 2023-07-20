import 'package:in_app_review/in_app_review.dart';
import 'package:in_app_update/in_app_update.dart';
import 'package:injectable/injectable.dart';

@singleton
class InApp {
  InApp(this.inAppReview);

  final InAppReview inAppReview;

  Future<void> requestReview() async {
    if (await inAppReview.isAvailable()) {
      inAppReview.requestReview();
    }
  }

  Future<AppUpdateInfo> checkForUpdate() {
    return InAppUpdate.checkForUpdate();
  }

  Future<AppUpdateResult> performImmediateUpdate() {
    return InAppUpdate.performImmediateUpdate();
  }
}
