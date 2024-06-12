import 'package:hive/hive.dart';

part 'activity_model.g.dart';

@HiveType(typeId: 3)
class ActivityModel {
  @HiveField(0)
  String productName;

  @HiveField(1)
  String storeName;

  @HiveField(2)
  String returnTimeLeft;

  @HiveField(3)
  String address;

  @HiveField(4)
  String price;

  ActivityModel({required this.productName, required this.storeName, required this.returnTimeLeft, required this.address, required this.price});
}
