import 'package:flutter/material.dart';
import 'package:flutter_application_1/modal/data_modal.dart';
import 'package:hive_flutter/hive_flutter.dart';

ValueNotifier<List<WorkModal>> worklistnotifier = ValueNotifier([]);
Future<void> addWorks(WorkModal value) async {
  worklistnotifier.value.add(value);

  final workDB = await Hive.openBox<WorkModal>('work_db');
  final _id = await workDB.add(value);
  value.id = _id;
  worklistnotifier.value.add(value);
  // print(value.toString());
  worklistnotifier.notifyListeners();
}

Future<void> getAllWorks() async {
  final workDB = await Hive.openBox<WorkModal>('work_db');
  worklistnotifier.value.clear();
  worklistnotifier.value.addAll(workDB.values);
  worklistnotifier.notifyListeners();
}

Future<void> deleteWork(int id) async {
  final workDB = await Hive.openBox<WorkModal>('work_db');
  // worklistnotifier.value.clear();
  await workDB.delete(id);
  getAllWorks();
  // worklistnotifier.value.addAll(workDB.values);
  // worklistnotifier.notifyListeners();
}
