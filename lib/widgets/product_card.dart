import 'dart:async';

import 'package:flutter/material.dart';
import 'package:frapper/screens/product_view/product_view.dart';

// Picture
// Added time
// Added by
// Bookmark
// Comments
// To Deal button
// title, description, price
// deal demand?

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  bool bookMarked = false;
  int dealValue = 200;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
        ),
        height: 250,
        child: Column(
          children: [
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const ProductView();
                  },
                ),
              ),
              child: SizedBox(
                width: double.infinity,
                height: 160,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        'https://m.media-amazon.com/images/I/71ZOtNdaZCL._SX679_.jpg',
                        width: 150,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 30,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "🔥 Hot Deal 🔥",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 4.0),
                                      child: Text(
                                        "35m",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.0),
                                child: Text(
                                  "2022 Apple iPhone SE (64 GB) - Polarstern (3. Generation)",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              const Text(
                                "A14 Bionic chip, the fastest chip ever in a smartphone",
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "₹50,999.00",
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Text("+"),
                                    ),
                                    Icon(
                                      Icons.local_shipping_outlined,
                                      size: 16.0,
                                    ),
                                    SizedBox(width: 5.0),
                                    Text(
                                      "₹20.00",
                                      style: TextStyle(
                                        fontSize: 10.0,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Text(
                                "You Save:	₹11,901.00 (15%)",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.grey,
                                ),
                              ),
                              /*Text(
                                "Deal Expires in $_expiryTimer",
                                style: const TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.red,
                                ),
                              )*/
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(),
            const Divider(
              indent: 0,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    // Added By
                    InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(10.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            CircleAvatar(
                              backgroundColor: Colors.purple,
                              radius: 14.0,
                              child: Text(
                                "M",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                "Manjunath",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),

                    //Counter - Not sure if this is even necessary
                    /*Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.remove_rounded),
                              onPressed: () {
                                setState(() {
                                  _decrementDeal();
                                });
                              },
                              padding: const EdgeInsets.all(0),
                              splashRadius: 10.0,
                              iconSize: 18.0,
                            ),
                            SizedBox(
                              width: 30,
                              child: Text(
                                dealValue.toString(),
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.add_rounded),
                              onPressed: () {
                                setState(() {
                                  _incrementDeal();
                                });
                              },
                              padding: const EdgeInsets.all(0),
                              splashRadius: 10.0,
                              iconSize: 18.0,
                            ),
                          ],
                        ),
                      ),
                    ),*/

                    // Bookmark
                    IconButton(
                      onPressed: () {
                        setState(() {
                          bookMarked = !bookMarked;
                        });
                      },
                      splashRadius: 20.0,
                      alignment: Alignment.topCenter,
                      icon: Icon(
                        bookMarked
                            ? Icons.bookmark_rounded
                            : Icons.bookmark_outline_rounded,
                      ),
                    ),
                    // Comments
                    IconButton(
                      onPressed: () {},
                      splashRadius: 20.0,
                      alignment: Alignment.topCenter,
                      icon: const Icon(Icons.comment_outlined),
                    ),
                    // To Deal Button
                    IconButton(
                      onPressed: () {},
                      splashRadius: 20.0,
                      alignment: Alignment.topCenter,
                      icon: const Icon(Icons.open_in_new_rounded),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

/*  expiryCounter(DateTime time) {
    setState(() {
      if (time.isAfter(DateTime.now())) {
        _expiryTimer = daysBetween(DateTime.now(), time);
      } else {
        _expiryTimer = "Expired";
      }
    });
  }

  String daysBetween(DateTime from, DateTime to) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);
    return (to.difference(from).inHours / 24).round().toString();
  }*/

  /*  _incrementDeal() {
    return dealValue += 1;
  }

  _decrementDeal() {
    return dealValue -= 1;
  }*/

}
