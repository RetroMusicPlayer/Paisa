import 'package:device_info_plus/device_info_plus.dart';
import 'package:event_bus_plus/event_bus_plus.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:image_picker/image_picker.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:in_app_update/in_app_update.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/data/data_manager.dart';
import 'package:paisa/features/account/data/model/account_model.dart';
import 'package:paisa/features/category/data/model/category_model.dart';
import 'package:paisa/features/debit/data/models/debit_model.dart';
import 'package:paisa/features/debit_transaction/data/model/debit_transactions_model.dart';
import 'package:paisa/features/transaction/data/model/transaction_model.dart';
import 'package:paisa/main.dart';

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

@module
abstract class DataManagerModule {
  @singleton
  DataManager<AccountModel> providerAccountModel() {
    return DataManager<AccountModel>(box: getIt.get<Box<AccountModel>>());
  }

  @singleton
  DataManager<CategoryModel> providerCategoryModel() {
    return DataManager<CategoryModel>(box: getIt.get<Box<CategoryModel>>());
  }

  @singleton
  DataManager<DebitModel> providerDebitModel() {
    return DataManager<DebitModel>(box: getIt.get<Box<DebitModel>>());
  }

  @singleton
  DataManager<TransactionModel> providerTransactionModel() {
    return DataManager<TransactionModel>(
        box: getIt.get<Box<TransactionModel>>());
  }

  @singleton
  DataManager<DebitTransactionsModel> providerDebitTransactionsModel() {
    return DataManager<DebitTransactionsModel>(
        box: getIt.get<Box<DebitTransactionsModel>>());
  }
}
