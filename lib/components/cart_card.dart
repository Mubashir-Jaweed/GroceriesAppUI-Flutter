import 'package:flutter/material.dart';
import 'package:myapp/data/cart_data.dart';

class CartCard extends StatefulWidget {
  const CartCard({super.key, required this.cartItem});

  final dynamic cartItem;

  @override
  State<CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black12,
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset(
                widget.cartItem['img'],
                height: 70,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.cartItem["name"],
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Text(
                    widget.cartItem["qty"],
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        // padding: EdgeInsets.all(3),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1.5,
                            color: Colors.grey[300]!,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.remove),
                          color: widget.cartItem['count'] > 1
                              ? Color(0xff53b175)
                              : Colors.grey[600],
                          iconSize: 20,
                          onPressed: () {
                            if (widget.cartItem['count'] > 1) {
                              setState(() {
                                widget.cartItem['count'] =
                                    widget.cartItem['count'] - 1;
                              });
                            }
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          widget.cartItem['count'].toString(),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1.5,
                            color: Colors.grey[300]!,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.add),
                          color: Color(0xff53b175),
                          iconSize: 20,
                          onPressed: () {
                            setState(() {
                              widget.cartItem['count'] =
                                  widget.cartItem['count'] + 1;
                            });
                          },
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                icon: const Icon(Icons.close),
                color: Colors.grey[600],
                iconSize: 20,
                onPressed: () {
                  setState(() {
                    Cart.removeWhere(
                        (element) => element['id'] == widget.cartItem['id']);

                        
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                '\$${(widget.cartItem['price'] * widget.cartItem['count']).toStringAsFixed(2)}', //issue here
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ],
          )
        ],
      ),
    );
  }
}
