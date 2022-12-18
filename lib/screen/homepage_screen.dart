import 'package:flutter/material.dart';
import 'package:image_card/image_card.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffE7F3F9),
                            borderRadius: BorderRadius.circular(15)),
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Icon(
                              Icons.cyclone,
                              size: 30,
                            ),
                            Text("Lifting")
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffE7F3F9),
                            borderRadius: BorderRadius.circular(15)),
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Icon(
                              Icons.cyclone,
                              size: 30,
                            ),
                            Text("Lifting")
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffE7F3F9),
                            borderRadius: BorderRadius.circular(15)),
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Icon(
                              Icons.cyclone,
                              size: 30,
                            ),
                            Text("Lifting")
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffE7F3F9),
                            borderRadius: BorderRadius.circular(15)),
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Icon(
                              Icons.cyclone,
                              size: 30,
                            ),
                            Text("Lifting")
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffE7F3F9),
                            borderRadius: BorderRadius.circular(15)),
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Icon(
                              Icons.cyclone,
                              size: 30,
                            ),
                            Text("Lifting")
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffE7F3F9),
                            borderRadius: BorderRadius.circular(15)),
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Icon(
                              Icons.cyclone,
                              size: 30,
                            ),
                            Text("Lifting")
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffE7F3F9),
                            borderRadius: BorderRadius.circular(15)),
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Icon(
                              Icons.cyclone,
                              size: 30,
                            ),
                            Text("Lifting")
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffE7F3F9),
                            borderRadius: BorderRadius.circular(15)),
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Icon(
                              Icons.cyclone,
                              size: 30,
                            ),
                            Text("Lifting")
                          ],
                        ),
                      ),
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
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FillImageCard(
                        color: Color(0xff00689D),
                        width: 190,
                        heightImage: 140,
                        imageProvider: AssetImage('image/halodek.jpg'),
                        // tags: [_tag('Category', () {}), _tag('Product', () {})],
                        title: Text(
                          "Toko Sejahtera",
                          style: TextStyle(color: Color(0xffB7B7B7)),
                        ),
                        description: Column(children: [
                          Container(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Barbel 5 Kilogram',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 5),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                'Rp 80.000',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ]),
                      ),
                      FillImageCard(
                        color: Color(0xff00689D),
                        width: 190,
                        heightImage: 140,
                        imageProvider: AssetImage('image/halodek.jpg'),
                        // tags: [_tag('Category', () {}), _tag('Product', () {})],
                        title: Text(
                          "Toko Sejahtera",
                          style: TextStyle(color: Color(0xffB7B7B7)),
                        ),
                        description: Column(children: [
                          Container(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Barbel 5 Kilogram',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 5),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                'Rp 80.000',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ]),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FillImageCard(
                        color: Color(0xff00689D),
                        width: 190,
                        heightImage: 140,
                        imageProvider: AssetImage('image/halodek.jpg'),
                        // tags: [_tag('Category', () {}), _tag('Product', () {})],
                        title: Text(
                          "Toko Sejahtera",
                          style: TextStyle(color: Color(0xffB7B7B7)),
                        ),
                        description: Column(children: [
                          Container(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Barbel 5 Kilogram',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 5),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                'Rp 80.000',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ]),
                      ),
                      FillImageCard(
                        color: Color(0xff00689D),
                        width: 190,
                        heightImage: 140,
                        imageProvider: AssetImage('image/halodek.jpg'),
                        // tags: [_tag('Category', () {}), _tag('Product', () {})],
                        title: Text(
                          "Toko Sejahtera",
                          style: TextStyle(color: Color(0xffB7B7B7)),
                        ),
                        description: Column(children: [
                          Container(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Barbel 5 Kilogram',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 5),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                'Rp 80.000',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ]),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 50),
            ],
          ),
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
            ],
          )
        ],
      ),
    );
  }
}
