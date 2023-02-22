import 'package:flutter/material.dart';

class PiggyBank {
  final int? index;
  final IconData? iconData;
  final String? name;
  final int? target;
  final int? currentlySaved;

  const PiggyBank(
      {this.index, this.iconData, this.name, this.target, this.currentlySaved});
}
