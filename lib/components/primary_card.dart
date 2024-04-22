import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/data/cart_data.dart';
import 'package:myapp/sub_screens/product_details.dart';

class PrimartyCard extends StatefulWidget {
  const PrimartyCard({super.key, required this.data});

  final dynamic data;

  @override
  State<PrimartyCard> createState() => _PrimartyCardState();
}

class _PrimartyCardState extends State<PrimartyCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetails(
              item: widget.data,
            ),
          ),
        );
      },
      child: Container(
        height: 200,
        width: 150,
        margin: const EdgeInsets.only(
          right: 12,
        ),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.5,
            color: Colors.grey[300]!,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    widget.data['img'],
                    height: 80,
                    width: 80,
                  ),
                ),
                Text(
                  widget.data['name'] ?? '',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Text(
                  widget.data['qty'] ?? '',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '\$${widget.data['price']}',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF53B175),
                      borderRadius: BorderRadius.circular(20)),
                  child: IconButton(
                    icon: Icon(Icons.add),
                    iconSize: 30,
                    color: Colors.white,
                    onPressed: () {
                      Map<String, dynamic> itemToAdd = widget.data;
                      itemToAdd['count'] = 1;
                      Cart.add(itemToAdd);
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
