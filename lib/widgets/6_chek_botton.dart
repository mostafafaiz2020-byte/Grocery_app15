// widgets/6_chek_botton.dart

// widgets/ChekBotton.dart

import 'package:flutter/material.dart';
import 'package:grocery_app1/widgets/Orderaccepted%20.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ChekBotton extends StatelessWidget {
  const ChekBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,

      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      ),

      child: SingleChildScrollView(
        controller: ModalScrollController.of(context),

        child: Container(
          width: double.infinity,
          height: 500,
          padding: const EdgeInsets.all(25),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Checkout",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Icon(Icons.close, size: 28),
                ],
              ),
              SizedBox(height: 20),
              Divider(),
              Row(
                children: [
                  Text(
                    'Delivery',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Text(
                    "Select Method",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Text(
                    'Pament',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Text(
                    "Select Method",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Text(
                    'Promo Code',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Text(
                    "Pick discount",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Icon(Icons.arrow_forward_ios),
                  Divider(),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Text(
                    'Total Cost',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Text(
                    "\$13.97",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
              Divider(),
              SizedBox(height: 40),
              Text(
                "By placing an order you agree to ourTerms And Conditions",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  showMaterialModalBottomSheet(
                    context: context,

                    builder: (context) {
                      return const Orderaccepted();
                    },
                  );
                },

                child: Container(
                  width: double.infinity,
                  height: 67,

                  alignment: Alignment.center,

                  decoration: BoxDecoration(
                    color: const Color(0xff53B175),
                    borderRadius: BorderRadius.circular(19),
                  ),

                  child: const Text(
                    "Place Order",

                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Color(0XFFFCFCFC),
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
