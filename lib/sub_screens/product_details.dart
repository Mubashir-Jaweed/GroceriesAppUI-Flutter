import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails({super.key, required this.item});

  final dynamic item;
  int count = 1;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[50],
        actions: [
          IconButton(
            icon: Icon(Icons.keyboard_double_arrow_up_sharp),
            color: Colors.black,
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blueGrey[50],
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      )),
                  child: Image.asset(
                    widget.item['img'],
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  // color: Colors.blue,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.item['name'] ?? '',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                                Text(
                                  widget.item['qty'] ?? '',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              icon: Icon(Icons.favorite_outline),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.remove),
                                    iconSize: 25,
                                    color: widget.count > 1
                                        ? Color(0xff53B175)
                                        : Colors.grey,
                                    onPressed: () {
                                      setState(() {
                                        if (widget.count > 1) {
                                          widget.count--;
                                        }
                                      });
                                    },
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(15, 7, 15, 7),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1.5,
                                        color: Colors.grey[300]!,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Text(
                                      '${widget.count}',
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.add),
                                    iconSize: 25,
                                    color: Color(0xff53B175),
                                    onPressed: () {
                                      setState(() {
                                        widget.count++;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              '\$${widget.item['price']}',
                              style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(
                          top: BorderSide(
                            color: Colors.grey,
                            width: 1,
                          ),
                        )),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Product Detail",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                IconButton(
                                  icon:
                                      Icon(Icons.keyboard_arrow_down_outlined),
                                  iconSize: 30,
                                  color: Colors.black,
                                  onPressed: () {},
                                )
                              ],
                            ),
                            Text(
                              widget.item['details'] ?? '',
                              style: TextStyle(color: Colors.grey[800]),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(
                          top: BorderSide(
                            color: Colors.grey,
                            width: 1,
                          ),
                        )),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Nutritions",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    widget.item['nutritions'],
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ),
                                IconButton(
                                  icon:
                                      Icon(Icons.keyboard_arrow_right_outlined),
                                  iconSize: 30,
                                  color: Colors.black,
                                  onPressed: () {},
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(
                          top: BorderSide(
                            color: Colors.grey,
                            width: 1,
                          ),
                        )),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Review",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            Row(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        widget.item['review'],
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  icon:
                                      Icon(Icons.keyboard_arrow_right_outlined),
                                  iconSize: 30,
                                  color: Colors.black,
                                  onPressed: () {},
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xff53B175),
                          ),
                          child: Center(
                            child: Text(
                              "Add To Basket",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
