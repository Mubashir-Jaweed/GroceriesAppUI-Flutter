import 'package:flutter/material.dart';
import 'package:myapp/sub_screens/explore_products.dart';

class ExploreCard extends StatefulWidget {
  ExploreCard({super.key, required this.data});

  final dynamic data;

  @override
  State<ExploreCard> createState() => _ExploreCardState();
}

class _ExploreCardState extends State<ExploreCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ExploreProducts(
                      products: widget.data,
                    )));
      },
      child: Container(
        // add random color to container
        decoration: BoxDecoration(
          color: Color(int.parse(widget.data['color'])),
          border: Border.all(
            width: 1,
            color: Color(int.parse(widget.data['border_color'])),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        height: 70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              widget.data['img'],
              height: 80,
            ),
            Text(
              widget.data['name'] ?? '',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
