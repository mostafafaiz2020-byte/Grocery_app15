// screens/9-favorite.dart

// screens/9-favorite.dart

import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Title
            const Padding(
              padding: EdgeInsets.only(top: 6, right: 32, left: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '𓆩♡𓆪 𝑭𝒂𝒗𝒐𝒓𝒊𝒕𝒆 𓆩♡𓆪',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            const Divider(color: Colors.black),

            // Products List
            Expanded(
              child: ListView(
                children: [
                  buildProductItem(
                    image: "assets/images/Group 6874.png",
                    name: "Sprite Can",
                    detail: "325ml, Price",
                    price: "\$1.50",
                  ),

                  const Divider(color: Colors.black),

                  buildProductItem(
                    image: "assets/images/2.png",
                    name: "Diet Coke",
                    detail: "325ml, Price",
                    price: "\$1.95",
                  ),

                  const Divider(color: Colors.black),

                  buildProductItem(
                    image: "assets/images/3.png",
                    name: "Apple & Grape Juice",
                    detail: "2L, Price",
                    price: "\$15.50",
                  ),

                  const Divider(color: Colors.black),

                  buildProductItem(
                    image: "assets/images/4.png",
                    name: "Coca Cola Can",
                    detail: "325ml, Price",
                    price: "\$4.99",
                  ),

                  const Divider(color: Colors.black),

                  buildProductItem(
                    image: "assets/images/5.png",
                    name: "Pepsi Can",
                    detail: "325ml, Price",
                    price: "\$4.99",
                  ),

                  const Divider(color: Colors.black),

                  buildProductItem(
                    image: "assets/images/4.png",
                    name: "Coca Cola Can",
                    detail: "325ml, Price",
                    price: "\$4.99",
                  ),
                  const Divider(color: Colors.black),
                ],
              ),
            ),

            // Add All To Cart Button
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                right: 25,
                left: 25,
                bottom: 24,
              ),
              child: Container(
                width: double.infinity,
                height: 67,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xff53B175),
                  borderRadius: BorderRadius.circular(19),
                ),
                child: const Text(
                  "Add All To Cart",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProductItem({
    required String image,
    required String name,
    required String detail,
    required String price,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image, width: 70, height: 70),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  detail,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),

          Text(
            price,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),

          const SizedBox(width: 10),

          const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black54),
        ],
      ),
    );
  }
}
