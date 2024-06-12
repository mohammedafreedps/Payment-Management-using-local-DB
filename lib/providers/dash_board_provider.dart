import 'package:flutter/material.dart';
import 'package:paymentmanagementapp/controller/data_populate_controller.dart';
import 'package:paymentmanagementapp/models/activity_model.dart';
import 'package:paymentmanagementapp/models/senter_history_model.dart';
import 'package:paymentmanagementapp/models/user_model.dart';

class DashBoardProvider extends ChangeNotifier {
  DataPopulateController dataPopulateController = DataPopulateController();
  bool isSearchFocus = true;
  bool showDetail = true;
  List<UserModel> userList = [];
  List<SenterHistoryModel> senterHistoryList = [];
  List<ActivityModel> activityList = [];
  List<ActivityModel> activitySearchResult = [];
  bool isAllLoaded = false;

  void populateData() async {
    userList = dataPopulateController.getUserDetail();
    senterHistoryList = dataPopulateController.getSenterHistory();
    activityList = dataPopulateController.getActivity();
    activitySearchResult = activityList;
    await Future.delayed(const Duration(seconds: 3));
    isAllLoaded = true;
    notifyListeners();
  }

  void checkSearchFocused(bool isFocus) {
    isSearchFocus = isFocus;
    showDetail = isFocus;
    notifyListeners();
  }

  void test(bool isFocus) {
    notifyListeners();
  }

  void searchResults(String value) {
    if (value.isEmpty) {
      activitySearchResult = activityList;
      notifyListeners();
    }
    if (!isSearchFocus) {
      activitySearchResult = activityList;
      notifyListeners();
    }
    activitySearchResult = activityList.where((item) {
      return item.productName.toLowerCase().contains(value.toLowerCase());
    }).toList();
    notifyListeners();
  }
}
