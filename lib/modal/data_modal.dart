import 'package:hive_flutter/adapters.dart';
part 'data_modal.g.dart';

@HiveType(typeId: 1)
class WorkModal {
  @HiveField(0)
  int? id;

  @HiveField(1)
  final String place;

  @HiveField(2)
  final String name;

  @HiveField(3)
  final String rooms;

  @HiveField(4)
  final String sqft;

  @HiveField(5)
  final String balaath;

  @HiveField(6)
  final String price;

  WorkModal(
      {required this.place,
      required this.name,
      required this.rooms,
      required this.sqft,
      required this.balaath,
      required this.price,
      this.id});
}
