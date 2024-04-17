import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/sub_screens/product_details.dart';

class FavouriteCard extends StatefulWidget {
  const FavouriteCard({super.key, required this.favouriteItem});

  final dynamic favouriteItem;

  @override
  State<FavouriteCard> createState() => _FavouriteCardState();
}

class _FavouriteCardState extends State<FavouriteCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black12,
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            widget.favouriteItem['img'],
            height: 70,
            width: 70,
          ),
          SizedBox(
            width: 30,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.favouriteItem["name"],
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      widget.favouriteItem["qty"],
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '\$${widget.favouriteItem['price'].toStringAsFixed(2)}', //issue here
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    IconButton(
                      icon: const Icon(Icons.keyboard_arrow_right),
                      color: Colors.black,
                      iconSize: 27,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetails(
                              item: widget.favouriteItem,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
