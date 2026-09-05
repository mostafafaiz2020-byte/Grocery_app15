// widgets/explor_product.dart

import 'package:flutter/material.dart';

Widget explor_product({
  required String image,
  required String titel,
  required int color,
}) {
  return Column(
    children: [
      Container(
        height: 189,
        width: 174,
        decoration: BoxDecoration(
          color: Color(color),
          borderRadius: BorderRadius.circular(19),
        ),
        padding: EdgeInsets.only(top: 27, right: 32, left: 32),
        child: Column(
          children: [
            Image.asset(image),

            SizedBox(height: 8),

            Text(
              titel,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    ],
  );
}
