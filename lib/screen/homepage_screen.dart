import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_olshop/profile.dart';
import 'package:flutter_olshop/screen/category_product_screen.dart';
import 'package:flutter_olshop/screen/detail_product_screen.dart';
import 'package:flutter_olshop/screen/login_screen.dart';
import 'package:flutter_olshop/screen/searchpage_screen.dart';
import 'package:flutter_olshop/services/product.dart';
import 'package:image_card/image_card.dart';
import 'package:ionicons/ionicons.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<List<dynamic>> _fecthDataProducts() async {
      var result = await ProductService().getProduct();
      return result;
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                  ),
                )),
                child: SearchInput(),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Kategori',
                    style: TextStyle(fontSize: 16, color: Color(0xff00689D)),
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CardCategory(context, 1, 'Lifting', Ionicons.barbell),
                      CardCategory(
                          context, 2, 'Bicycle', Icons.pedal_bike_sharp),
                      CardCategory(context, 3, 'Sport Shoes',
                          Icons.ice_skating_outlined),
                      CardCategory(context, 4, 'Hiking', Icons.terrain_sharp),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CardCategory(context, 5, 'Sport Shirt', Ionicons.shirt),
                      CardCategory(
                          context, 6, 'Water Sport', Icons.surfing_sharp),
                      CardCategory(context, 7, 'Golf', Icons.golf_course_sharp),
                      CardCategory(context, 8, 'Winter Sport',
                          Icons.sports_hockey_sharp),
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Produk Terbaru',
                    style: TextStyle(fontSize: 16, color: Color(0xff00689D)),
                  ),
                ),
              ),
              Container(
                child: FutureBuilder<List<dynamic>>(
                  future: _fecthDataProducts(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return GridView.builder(
                        padding: EdgeInsets.all(5),
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        itemBuilder: (_, index) =>
                            CardProduct(context, snapshot.data[index]),
                        itemCount: snapshot.data.length,
                      );
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (value) {
          if (value == 2) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProfileScreen()));
          }
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Account',
          ),
        ],
      ),
    );
  }

  Card CardProduct(BuildContext context, data) {
    return Card(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailProductScreen(
                        productDetail: data,
                      )));
        },
        child: FillImageCard(
          color: Color(0xff00689D),
          width: 200,
          heightImage: 110,
          imageProvider: Image.network(data['img_path']).image,
          // tags: [_tag('Category', () {}), _tag('Product', () {})],
          title: Text(
            data['name'].replaceRange(10, data['name'].length, '...').trim(),
            style: TextStyle(color: Color(0xffB7B7B7), fontSize: 12),
          ),
          description: Column(children: [
            Container(
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  data['name']
                      .replaceRange(7, data['name'].length, '...')
                      .trim(),
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 5),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  data['price'],
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }

  GestureDetector CardCategory(
      BuildContext context, int category_id, String name, IconData icon) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CategoryProductpageScreen(
                      searchInput: category_id,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xffE7F3F9), borderRadius: BorderRadius.circular(15)),
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Icon(
              icon,
              size: 30,
            ),
            Text(name)
          ],
        ),
      ),
    );
  }
}

class SearchInput extends StatefulWidget {
  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      padding: EdgeInsets.all(10.0),
      color: Color(0xffE7F3F9),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 4,
                child: SizedBox(
                  height: 45,
                  child: TextField(
                    controller: searchController,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      hintText: 'type to search...',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SearchpageScreen(
                                  searchInput: searchController.text,
                                )));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Container(
                        child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 24,
                    )),
                    width: 25,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
