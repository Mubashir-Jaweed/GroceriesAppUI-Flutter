import 'package:flutter/material.dart';
import 'package:myapp/components/explore_card.dart';

class explore extends StatefulWidget {
  const explore({super.key});

  @override
  State<explore> createState() => _exploreState();
}

class _exploreState extends State<explore> {
  List data = [
    {
      "color": "Colors.orange[100]",
      "name": "Fresh Fruits & Vegetable",
      "img": "images/1.png",
      "products": []
    },
    {
      "color": "Colors.green[100]",
      "name": "Cooking Oil & Ghee",
      "img": "images/2.png",
      "products": []
    },
    {
      "color": "Colors.blue[100]",
      "name": "Meat & Fish",
      "img": "images/3.png",
      "products": []
    },
    {
      "color": "Colors.red[100]",
      "name": "Bakery & Snacks",
      "img": "images/4.png",
      "products": []
    },
    {
      "color": "Colors.yellow[100]",
      "name": "Dairy & Eggs",
      "img": "images/5.png",
      "products": []
    },
    {
      "color": "Colors.pink[100]",
      "name": "Beverages",
      "img": "images/6.png",
      "products": []
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Find Products",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xffF2F3F2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search Store",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                  ),
                ),

                // grid view cards here
              ],
            ),
          ),
        ),
      ),
    );
  }
}
