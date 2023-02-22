import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../models/piggy_bank.dart';

class PiggyBankController extends GetxController {
  var piggyBanks = [
    const PiggyBank(
        index: 1,
        iconData: CupertinoIcons.airplane,
        name: "iPhone",
        target: 1000,
        currentlySaved: 500),
    const PiggyBank(
        index: 2,
        iconData: CupertinoIcons.car,
        name: "Car",
        target: 5000,
        currentlySaved: 1000),
    const PiggyBank(
        index: 3,
        iconData: CupertinoIcons.gift,
        name: "Gifts",
        target: 321,
        currentlySaved: 404),
    const PiggyBank(
        index: 4,
        iconData: CupertinoIcons.flame,
        name: "Emergency",
        currentlySaved: 250),
    const PiggyBank(index: 5, iconData: CupertinoIcons.plus, name: "Add new"),
  ].obs;

  var selectedPiggyBankIndex = 1.obs;

  void selectPiggyBank(int index) {
    selectedPiggyBankIndex.value = index;
  }

  PiggyBank getCurrentPiggyBank() {
    return piggyBanks[selectedPiggyBankIndex.value];
  }
}
