import 'package:flutter/material.dart';
import 'package:myapp/components/favourite_card.dart';
import 'package:myapp/data/favourite_data.dart';

class favourite extends StatefulWidget {
  const favourite({super.key});

  @override
  State<favourite> createState() => _favouriteState();
}

class _favouriteState extends State<favourite> {
  List favouriteItems = [];

  @override
  void initState() {
    super.initState();
    getFavouriteItems();
  }

  void getFavouriteItems() {
    setState(() {
      favouriteItems = Favourite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 20),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black12,
                      width: 1,
                    ),
                  ),
                ),
                child: const Text(
                  "Favourite",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),

              // ...........................

              // ...........................

              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: ListView.builder(
                    itemCount: favouriteItems.length,
                    itemBuilder: (BuildContext context, int index) {
                      return FavouriteCard(
                          favouriteItem: favouriteItems[index]);
                    },
                  ),
                ),
              ),

              // ...........................

              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Add all to Cart'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              // ...........................

              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
