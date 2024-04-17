import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/components/primary_card.dart';
import 'package:myapp/sub_screens/filter.dart';

class ExploreProducts extends StatefulWidget {
  const ExploreProducts({super.key, required this.products});

  final dynamic products;

  @override
  State<ExploreProducts> createState() => _ExploreProductsState();
}

class _ExploreProductsState extends State<ExploreProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.products['name'],
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.filter_alt_outlined),
              color: Colors.black,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Filter(),
                  ),
                );
              },
            )
          ],
        ),
        body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
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
                SizedBox(
                  height: 15,
                ),
                Expanded(
                    child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.75,
                  ),
                  itemCount: widget.products['products'].length,
                  itemBuilder: (BuildContext context, int index) {
                    return PrimartyCard(
                        data: widget.products['products'][index]);
                  },
                ))
              ],
            ),
          ),
        ));
  }
}
