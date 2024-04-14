import 'package:flutter/material.dart';

class shop extends StatefulWidget {
  const shop({super.key});

  @override
  State<shop> createState() => _shopState();
}

class _shopState extends State<shop> {
  Map data = {
    "exclusive_Offer": [
      {
        "img": "images/banana.jpg",
        "name": "Organic Bananas",
        "price": "4.99",
        "qty": "7pcs, Price",
        "nutritions": "100gr",
        "review": "5",
        "details":
            "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet."
      },
      {
        "img": "images/apple.png",
        "name": "Red Apple",
        "price": "7.99",
        "qty": "1kg, Price",
        "nutritions": "120gr",
        "review": "4",
        "details":
            "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet."
      },
      {
        "img": "images/mango.jpg",
        "name": "King Mango",
        "price": "14.99",
        "qty": "1kg, Price",
        "nutritions": "160gr",
        "review": "5",
        "details":
            "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet."
      }
    ],
    "best_selling": [
      {
        "img": "images/tomato.jpg",
        "name": "Tomatoes",
        "price": "1.99",
        "qty": "1kg, Price",
        "nutritions": "10gr",
        "review": "5",
        "details":
            "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet."
      },
      {
        "img": "images/ginger.jpg",
        "name": "Ginger",
        "price": "79.99",
        "qty": "1kg, Price",
        "nutritions": "20gr",
        "review": "3",
        "details":
            "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet."
      },
      {
        "img": "images/mango.jpg",
        "name": "King Mango",
        "price": "14.99",
        "qty": "1kg, Price",
        "nutritions": "160gr",
        "review": "5",
        "details":
            "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet."
      }
    ],
    "groceries": {
      "items": [
        {"img": "", "name": "Pulses"},
        {"img": "", "name": "Rice"}
      ],
      "products": [
        {
          "img": "images/beef.jpg",
          "name": "Beef Bones",
          "price": "9.99",
          "qty": "1kg, Price",
          "nutritions": "10gr",
          "review": "5",
          "details":
              "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet."
        },
        {
          "img": "images/chicken.jpg",
          "name": "Broiler Chicken",
          "price": "9.99",
          "qty": "1kg, Price",
          "nutritions": "20gr",
          "review": "3",
          "details":
              "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet."
        },
        {
          "img": "images/mango.jpg",
          "name": "King Mango",
          "price": "14.99",
          "qty": "1kg, Price",
          "nutritions": "160gr",
          "review": "5",
          "details":
              "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet."
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
                          return Container(
                            height: 200,
                            width: 150,
                            margin: EdgeInsets.only(
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
                                        item['img'],
                                        height: 80,
                                        width: 80,
                                      ),
                                    ),
                                    Text(
                                      item['name'] ?? '',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      item['qty'] ?? '',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '\$${item['price']}',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xFF53B175),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: IconButton(
                                        icon: Icon(Icons.add),
                                        iconSize: 30,
                                        color: Colors.white,
                                        onPressed: () {},
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          );
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
                          return Container(
                            height: 200,
                            width: 150,
                            margin: EdgeInsets.only(
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
                                        item['img'],
                                        height: 80,
                                        width: 80,
                                      ),
                                    ),
                                    Text(
                                      item['name'] ?? '',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      item['qty'] ?? '',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '\$${item['price']}',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xFF53B175),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: IconButton(
                                        icon: Icon(Icons.add),
                                        iconSize: 30,
                                        color: Colors.white,
                                        onPressed: () {},
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          );
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

//

                SizedBox(
                  height: 15,
                ),

                //  Groceries Map

                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: data['groceries']['products'].map<Widget>(
                        (item) {
                          return Container(
                            height: 200,
                            width: 150,
                            margin: EdgeInsets.only(
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
                                        item['img'],
                                        height: 80,
                                        width: 80,
                                      ),
                                    ),
                                    Text(
                                      item['name'] ?? '',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      item['qty'] ?? '',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '\$${item['price']}',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xFF53B175),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: IconButton(
                                        icon: Icon(Icons.add),
                                        iconSize: 30,
                                        color: Colors.white,
                                        onPressed: () {},
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          );
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
