import 'package:flutter/material.dart';
import 'package:myapp/components/explore_card.dart';

class explore extends StatefulWidget {
  const explore({super.key});

  @override
  State<explore> createState() => _exploreState();
}

class _exploreState extends State<explore> {
  List<Map<String, dynamic>> data = [
    {
      "color": "0xFFFFE8D6",
      "border_color": "0xFFFFA927",
      "name": "Fresh Fruits & Vegetable",
      "img": "images/1.png",
      "products": [
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
      ]
    },
    {
      "color": "0xFFF2FFF0",
      "border_color": "0xFF7ECB80",
      "name": "Cooking Oil & Ghee",
      "img": "images/2.png",
      "products": [
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
      ]
    },
    {
      "color": "0xFFF8FBFF",
      "border_color": "0xFF94DDFF",
      "name": "Meat & Fish",
      "img": "images/3.png",
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
    },
    {
      "color": "0xFFFFDEDE",
      "border_color": "0xFFFF9F9F",
      "name": "Bakery & Snacks",
      "img": "images/4.png",
      "products": [
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
      ]
    },
    {
      "color": "0xFFFEFFEC",
      "border_color": "0xFFFFED94",
      "name": "Dairy & Eggs",
      "img": "images/5.png",
      "products": [
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
      ]
    },
    {
      "color": "0xFFFFECFF",
      "border_color": "0xFFF694FF",
      "name": "Beverages",
      "img": "images/6.png",
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
    },
  ];

  List<Map<String, dynamic>> filteredData = [];

  @override
  void initState() {
    filteredData = data;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                  onChanged: (query) {
                    setState(() {
                      filteredData = data
                          .where((item) => item['name']
                              .toLowerCase()
                              .contains(query.toLowerCase()))
                          .toList();
                    });
                  },
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
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.95,
                ),
                itemCount: filteredData.length,
                itemBuilder: (BuildContext context, int index) {
                  return ExploreCard(data: filteredData[index]);
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
