import 'package:device_info_plus/device_info_plus.dart';
import 'package:event_bus_plus/event_bus_plus.dart';
import 'package:image_picker/image_picker.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:in_app_update/in_app_update.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ServiceBoxModule {
  @singleton
  DeviceInfoPlugin providesDeviceInfoPlugin() {
    return DeviceInfoPlugin();
  }

  @singleton
  InAppReview providesInAppReview() {
    return InAppReview.instance;
  }

  @singleton
  InAppUpdate providesInAppUpdate() {
    return InAppUpdate();
  }

  @singleton
  ImagePicker providesImagePicker() {
    return ImagePicker();
  }

  @singleton
  EventBus providerEventBus() {
    return EventBus();
  }
}
