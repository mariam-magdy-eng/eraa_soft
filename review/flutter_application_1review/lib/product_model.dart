// ignore_for_file: non_constant_identifier_names

import 'package:hive/hive.dart';
import 'package:flutter/material.dart';

Future<void> check() async {
  if (Hive.isBoxOpen('settings')) {
    await Hive.openBox('settings');
  }
}

Future<void> checkAndAdd() async {
  var box = Hive.box('settings');
  await box.putAll({'name': 'roma', 'age': '23'});
}

bool usertoke() {
  var box = Hive.box('settings');
  if (box.containsKey('token')) {
    return true;
  } else {
    return false;
  }
}

void getvalues() {
  var box = Hive.box('getdata');
  List alldata = box.values.toList();
}
