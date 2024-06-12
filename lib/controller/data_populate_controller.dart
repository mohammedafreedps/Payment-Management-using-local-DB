import 'package:paymentmanagementapp/data/local_constant_data.dart';
import 'package:paymentmanagementapp/models/activity_model.dart';
import 'package:paymentmanagementapp/models/senter_history_model.dart';
import 'package:paymentmanagementapp/models/user_model.dart';
import 'package:paymentmanagementapp/services/boxes.dart';
import 'package:paymentmanagementapp/services/hive_storage_service.dart';

class DataPopulateController {
  HiveStorageService hiveStorageService = HiveStorageService();
  List<UserModel> getUserDetail() {
    if (userBox.isEmpty) {
      hiveStorageService.addItem(
          box: userBox,
          key: 'user1',
          value: UserModel(
              name: userDetails['userName'].toString(),
              email: userDetails['userEmail'].toString(),
              profilePicUrl: userDetails['profileUrl'].toString()));
    }
    List<UserModel> users =
        hiveStorageService.getAllItem(box: userBox).cast<UserModel>();
    return users;
  }

  List<SenterHistoryModel> getSenterHistory() {
    if (senterHistoryBox.isEmpty) {
      for (int i = 0; i < firstNames.length; i++) {
        hiveStorageService.addItem(
            box: senterHistoryBox,
            key: '$i',
            value: SenterHistoryModel(
                firstName: firstNames[i],
                lastName: lastNames[i],
                profilePicUrl: imageUrls[i]));
      }
    }
    List<SenterHistoryModel> senters = hiveStorageService
        .getAllItem(box: senterHistoryBox)
        .cast<SenterHistoryModel>();
    return senters;
  }

  List<ActivityModel> getActivity() {
    if (activityBox.isEmpty) {
      for (int i = 0; i < products.length; i++) {
        hiveStorageService.addItem(
            box: activityBox,
            key: '$i',
            value: ActivityModel(
                productName: products[i],
                storeName: storeNames[i],
                returnTimeLeft: returnTimes[i],
                address: addresses[i],
                price: prices[i]));
      }
    }
    List<ActivityModel> activities =
        hiveStorageService.getAllItem(box: activityBox).cast<ActivityModel>();
    return activities;
  }
}
