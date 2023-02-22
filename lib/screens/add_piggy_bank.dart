import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddPiggyBankScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Container(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xFFFFE3A9), Color(0xFF73CAF2)],
          transform: GradientRotation(120.2),
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "ADD A PIGGY BANK",
                textAlign: TextAlign.center,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  fontSize: 22,
                  color: Color(0xff000000),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              width: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                ///***If you have exported images you must have to copy those images in assets directory.
                Image(
                  image: AssetImage("assets/rich_piggy.png"),
                  height: 36,
                  width: 36,
                  fit: BoxFit.scaleDown,
                ),
                Expanded(
                  flex: 1,
                  child: TextField(
                    controller: TextEditingController(),
                    obscureText: false,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    decoration: InputDecoration(
                      disabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: "Pepo Name",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Color(0xff000000),
                      ),
                      filled: false,
                      fillColor: Color(0xfff2f2f3),
                      isDense: false,
                      contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                ///***If you have exported images you must have to copy those images in assets directory.
                Image(
                  image: AssetImage("assets/rich_piggy.png"),
                  height: 36,
                  width: 36,
                  fit: BoxFit.scaleDown,
                ),
                Expanded(
                  flex: 1,
                  child: TextField(
                    controller: TextEditingController(),
                    obscureText: false,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    decoration: InputDecoration(
                      disabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: "Set Goal",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Color(0xff000000),
                      ),
                      filled: false,
                      fillColor: Color(0xfff2f2f3),
                      isDense: false,
                      contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.expand_more),
                  onPressed: () {},
                  color: Color(0xff212435),
                  iconSize: 24,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                ///***If you have exported images you must have to copy those images in assets directory.
                Image(
                  image: AssetImage("assets/rich_piggy.png"),
                  height: 36,
                  width: 36,
                  fit: BoxFit.scaleDown,
                ),
                Expanded(
                  flex: 1,
                  child: TextField(
                    controller: TextEditingController(),
                    obscureText: false,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    decoration: InputDecoration(
                      disabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: "Time Interval",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Color(0xff000000),
                      ),
                      filled: false,
                      fillColor: Color(0xfff2f2f3),
                      isDense: false,
                      contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.expand_more),
                  onPressed: () {},
                  color: Color(0xff212435),
                  iconSize: 24,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                ///***If you have exported images you must have to copy those images in assets directory.
                Image(
                  image: AssetImage("assets/rich_piggy.png"),
                  height: 36,
                  width: 36,
                  fit: BoxFit.scaleDown,
                ),
                Expanded(
                  flex: 1,
                  child: TextField(
                    controller: TextEditingController(),
                    obscureText: false,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    decoration: InputDecoration(
                      disabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: "Monthly Deposit",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Color(0xff000000),
                      ),
                      filled: false,
                      fillColor: Color(0xfff2f2f3),
                      isDense: false,
                      contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              width: 16,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "Want to set deposit limit manually?",
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 16,
                    color: Color(0xff000000),
                  ),
                ),
                SizedBox(
                  height: 16,
                  width: 16,
                ),
                Text(
                  "GO",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontSize: 17,
                    color: Color(0xff000000),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.24,
              width: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 48,
                  width: 80,
                  padding: const EdgeInsets.only(right: 18),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xffffffff)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF176e36))),
                      onPressed: () => Get.back(),
                      child: const Icon(Icons.arrow_back_sharp)),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF40DF9F))),
                      onPressed: () => Get.offAllNamed("/home"),
                      child: const Text("Create your Pepo")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
