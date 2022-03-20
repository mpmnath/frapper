import 'package:flutter/material.dart';

Widget buyNow() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            print("Buy Now");
          },
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Text(
                "Buy Now",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
