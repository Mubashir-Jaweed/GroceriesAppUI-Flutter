import 'package:flutter/material.dart';

class GroceryTabs extends StatelessWidget {
  const GroceryTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              width: 200,
              height: 80,
              margin: EdgeInsets.only(right: 12),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.orange[100],
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Image.asset(
                    'images/pulses.png',
                    height: 70,
                    width: 70,
                  ),
                  Text(
                    'Pulses',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Container(
              width: 200,
              height: 80,
              margin: EdgeInsets.only(right: 12),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Image.asset(
                    'images/rice.png',
                    height: 70,
                    width: 70,
                  ),
                  Text(
                    'Rice',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
