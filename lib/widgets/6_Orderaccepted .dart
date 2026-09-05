// widgets/Orderaccepted .dart

// widgets/Orderaccepted.dart

import 'package:flutter/material.dart';
import 'package:grocery_app1/screens/1-home.dart';
import 'package:grocery_app1/screens/4-BottomNavigationBar.dart';
import 'package:grocery_app1/screens/5-Shop.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Orderaccepted extends StatefulWidget {
  const Orderaccepted({super.key});

  @override
  State<Orderaccepted> createState() => _OrderacceptedState();
}

class _OrderacceptedState extends State<Orderaccepted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 51, left: 58, right: 75),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Container(
                width: double.infinity,
                height: 300,

                decoration: const BoxDecoration(color: Colors.white),

                child: Image.asset("assets/images/Group 6872.png"),
              ),
              SizedBox(height: 40),

              Text(
                "Your Order has been",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff181725),
                ),
              ),
              Text(
                "accepted ",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff181725),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Your items has been placcd and is on ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff7C7C7C),
                ),
              ),
              Text(
                "it’s way to being processed ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff7C7C7C),
                ),
              ),
              SizedBox(height: 125),

              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  showMaterialModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return BottomNavigationScreen();
                    },
                  );
                },

                child: Container(
                  width: double.infinity,
                  height: 67,

                  alignment: Alignment.center,

                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 101, 194, 101),
                    borderRadius: BorderRadius.circular(19),
                  ),

                  child: const Text(
                    "Track Order",

                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Color.fromARGB(255, 235, 234, 234),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  showMaterialModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return const Home();
                    },
                  );
                },

                child: Container(
                  width: double.infinity,
                  height: 67,

                  alignment: Alignment.center,

                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 216, 217, 216),
                    borderRadius: BorderRadius.circular(19),
                  ),

                  child: const Text(
                    "Back to home",

                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
