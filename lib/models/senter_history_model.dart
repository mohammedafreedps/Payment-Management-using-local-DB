import 'package:hive/hive.dart';

part 'senter_history_model.g.dart';

@HiveType(typeId: 2)
class SenterHistoryModel {
  @HiveField(0)
  String firstName;

  @HiveField(1)
  String lastName;

  @HiveField(2)
  String profilePicUrl;

  SenterHistoryModel({required this.firstName, required this.lastName,required this.profilePicUrl});
}
