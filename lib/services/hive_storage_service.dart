import 'package:hive_flutter/hive_flutter.dart';
import 'package:paymentmanagementapp/services/boxes.dart';

class HiveStorageService {
  Future<void> addItem({required Box box,required String key,required var value})async{
    box.put(key, value);
  }

  List getAllItem({required Box box}){
    return box.values.toList();
  }

  void deleteAllData()async{
    await activityBox.deleteFromDisk();
    await userBox.deleteFromDisk();
    await senterHistoryBox.deleteFromDisk();
  }
}