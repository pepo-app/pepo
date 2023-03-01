import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/piggy_bank.dart';
import '../controllers/piggy_bank_controller.dart';
import '../models/piggy_bank.dart';

class HomeScreen extends StatelessWidget {
  final controller = Get.put(PiggyBankController());

  @override
  Widget build(BuildContext context) {
    var colors = Theme.of(context).colorScheme;

    String displayPiggyBankAmount(PiggyBank piggyBank) {
      if (piggyBank.target == null) {
        return "${piggyBank.currentlySaved} \$";
      } else {
        return "${piggyBank.currentlySaved} / ${piggyBank.target} \$";
      }
    }

    void onTapPiggyBank(PiggyBank piggyBank) {
      if (piggyBank.index == 5) {
        Get.toNamed("/piggy/add");
        return;
      }

      controller.selectPiggyBank(piggyBank.index!);
    }

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Container(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: const Color(0xffa5e2d9),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.zero,
          border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: controller.piggyBanks
                      .map((element) => PiggyBankWidget(
                            index: element.index,
                            iconData: element.iconData,
                            name: element.name,
                            isSelected: element.index ==
                                controller.selectedPiggyBankIndex.value,
                            onTap: () => onTapPiggyBank(element),
                          ))
                      .toList(),
                )),
            Stack(
                alignment: Alignment.center.add(const Alignment(0, 0.15)),
                children: [
                  Image(
                    image: const AssetImage("assets/rich_piggy.png"),
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.scaleDown,
                  ),
                  Obx(() => Text(
                      displayPiggyBankAmount(controller.getCurrentPiggyBank()),
                      style:
                          const TextStyle(fontSize: 16, color: Colors.white)))
                ]),
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Image(
                  image: const AssetImage("assets/nav_mask.png"),
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.contain,
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.06,
                  left: MediaQuery.of(context).size.width * 0.1,
                  child: IconButton(
                      iconSize: 38,
                      icon: const Icon(Icons.add),
                      onPressed: () => Get.toNamed("/deposit"),
                      style: IconButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                      )),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.17,
                  left: MediaQuery.of(context).size.width * 0.16,
                  child: IconButton(
                      iconSize: 38,
                      icon: const Icon(Icons.remove),
                      onPressed: () => Get.toNamed("/withdraw"),
                      style: IconButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.orange,
                      )),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.23,
                  left: MediaQuery.of(context).size.width * 0.43,
                  child: IconButton(
                      iconSize: 38,
                      icon: const Icon(Icons.home),
                      onPressed: () {},
                      style: IconButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.yellow,
                      )),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.17,
                  right: MediaQuery.of(context).size.width * 0.16,
                  child: IconButton(
                      iconSize: 38,
                      icon: const Icon(Icons.settings),
                      onPressed: () => Get.toNamed("/settings"),
                      style: IconButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.green,
                      )),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.06,
                  right: MediaQuery.of(context).size.width * 0.1,
                  child: IconButton(
                      iconSize: 38,
                      icon: const Icon(Icons.phone),
                      onPressed: () {},
                      style: IconButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.blue,
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
