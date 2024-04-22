import 'package:flutter/material.dart';
import 'package:myapp/components/grocery_tabs.dart';
import 'package:myapp/components/primary_card.dart';
import 'package:myapp/sub_screens/product_details.dart';

class shop extends StatefulWidget {
  const shop({super.key});

  @override
  State<shop> createState() => _shopState();
}

class _shopState extends State<shop> {
  Map data = {
    "exclusive_Offer": [
      {
        "id": 1,
        "img": "images/banana.jpg",
        "name": "Organic Bananas",
        "price": 2.99,
        "qty": "7pcs, Price",
        "nutritions": "100gr",
        "review": "5",
        "details":
            "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healthful and varied diet."
      },
      {
        "id": 2,
        "img": "images/apple.png",
        "name": "Red Apple",
        "price": 7.99,
        "qty": "1kg, Price",
        "nutritions": "120gr",
        "review": "4",
        "details":
            "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healthful and varied diet."
      },
      {
        "id": 3,
        "img": "images/mango.jpg",
        "name": "King Mango",
        "price": 14.99,
        "qty": "1kg, Price",
        "nutritions": "160gr",
        "review": "5",
        "details":
            "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healthful and varied diet."
      }
    ],
    "best_selling": [
      {
        "id": 4,
        "img": "images/tomato.jpg",
        "name": "Tomatoes",
        "price": 1.99,
        "qty": "1kg, Price",
        "nutritions": "10gr",
        "review": "5",
        "details":
            "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healthful and varied diet."
      },
      {
        "id": 5,
        "img": "images/ginger.jpg",
        "name": "Ginger",
        "price": 79.99,
        "qty": "1kg, Price",
        "nutritions": "20gr",
        "review": "3",
        "details":
            "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healthful and varied diet."
      },
      {
        "id": 6,
        "img": "images/mango.jpg",
        "name": "King Mango",
        "price": 14.99,
        "qty": "1kg, Price",
        "nutritions": "160gr",
        "review": "5",
        "details":
            "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healthful and varied diet."
      }
    ],
    "groceries": {
      "items": [
        {"img": "", "name": "Pulses"},
        {"img": "", "name": "Rice"}
      ],
      "products": [
        {
          "id": 7,
          "img": "images/beef.jpg",
          "name": "Beef Bones",
          "price": 9.99,
          "qty": "1kg, Price",
          "nutritions": "10gr",
          "review": "5",
          "details":
              "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healthful and varied diet."
        },
        {
          "id": 8,
          "img": "images/chicken.jpg",
          "name": "Broiler Chicken",
          "price": 9.99,
          "qty": "1kg, Price",
          "nutritions": "20gr",
          "review": "3",
          "details":
              "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healthful and varied diet."
        },
        {
          "id": 9,
          "img": "images/mango.jpg",
          "name": "King Mango",
          "price": 14.99,
          "qty": "1kg, Price",
          "nutritions": "160gr",
          "review": "5",
          "details":
              "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healthful and varied diet."
        }
      ]
    }
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // color: Colors.blue,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 25),
                const Icon(
                  Icons.beach_access,
                  color: Colors.deepOrangeAccent,
                  size: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_pin,
                      color: Color(0xFF4C4F4D),
                      size: 25,
                    ),
                    Text(
                      ' Dhaka, Banassre',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF4C4F4D),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15),
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
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 115,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(
                    'images/slider1.PNG',
                    width: MediaQuery.of(context).size.width,
                    height: 115,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),

                Container(
                  width: MediaQuery.of(context).size.width,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Exclusive Offer",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                          color: Color(0xFF53B175),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),

                // exclusive offer map

                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: data['exclusive_Offer'].map<Widget>(
                        (item) {
                          return PrimartyCard(data: item);
                        },
                      ).toList(),
                    ),
                  ),
                ),

                //
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Best Selling",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                          color: Color(0xFF53B175),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),

                //  Best selling Map

                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: data['best_selling'].map<Widget>(
                        (item) {
                          return PrimartyCard(data: item);
                        },
                      ).toList(),
                    ),
                  ),
                ),

                //
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Groceries",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                          color: Color(0xFF53B175),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                //..............  grocery tab Component
                GroceryTabs(),
                SizedBox(
                  height: 15,
                ),

                //................  Groceries Map

                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: data['groceries']['products'].map<Widget>(
                        (item) {
                          return PrimartyCard(data: item);
                        },
                      ).toList(),
                    ),
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
