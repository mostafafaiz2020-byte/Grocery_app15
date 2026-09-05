// widgets/Filters.dart

import 'package:flutter/material.dart';
import 'package:flutter_checkbox/flutter_checkbox.dart';
import 'package:grocery_app1/screens/4-BottomNavigationBar.dart';
import 'package:grocery_app1/screens/7-explor.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Filters extends StatefulWidget {
  const Filters({super.key});

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
  bool isChecked6 = false;
  bool isChecked7 = false;
  bool isChecked8 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      showMaterialModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return BottomNavigationScreen();
                        },
                      );
                    },
                    child: Icon(Icons.close),
                  ),
                  const SizedBox(width: 140),

                  const Text(
                    'Filters',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff181725),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Container(
              width: double.infinity,
              height: 740,

              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Color.fromARGB(255, 223, 222, 222),
              ),

              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 25),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 25),

                    Row(
                      children: [
                        FlutterCheckbox(
                          value: isChecked1,
                          onChanged: (value) {
                            setState(() {
                              isChecked1 = value!;
                            });
                          },
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Eggs",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(
                      children: [
                        FlutterCheckbox(
                          value: isChecked2,
                          onChanged: (value) {
                            setState(() {
                              isChecked2 = value!;
                            });
                          },
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Noodles & Pasta",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(
                      children: [
                        FlutterCheckbox(
                          value: isChecked3,
                          onChanged: (value) {
                            setState(() {
                              isChecked3 = value!;
                            });
                          },
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Chips & Crisps",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(
                      children: [
                        FlutterCheckbox(
                          value: isChecked4,
                          onChanged: (value) {
                            setState(() {
                              isChecked4 = value!;
                            });
                          },
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Fast Food",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),

                    ////////////////////////////////////////
                    Text(
                      'Brand',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 25),

                    Row(
                      children: [
                        FlutterCheckbox(
                          value: isChecked5,
                          onChanged: (value) {
                            setState(() {
                              isChecked5 = value!;
                            });
                          },
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Individual Callection",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(
                      children: [
                        FlutterCheckbox(
                          value: isChecked6,
                          onChanged: (value) {
                            setState(() {
                              isChecked6 = value!;
                            });
                          },
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Cocola",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(
                      children: [
                        FlutterCheckbox(
                          value: isChecked7,
                          onChanged: (value) {
                            setState(() {
                              isChecked7 = value!;
                            });
                          },
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Ifad",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(
                      children: [
                        FlutterCheckbox(
                          value: isChecked8,
                          onChanged: (value) {
                            setState(() {
                              isChecked8 = value!;
                            });
                          },
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Kazi Farmas",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
