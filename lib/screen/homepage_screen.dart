import 'package:flutter/material.dart';
import 'package:flutter_olshop/screen/login_screen.dart';
import 'package:flutter_olshop/services/product.dart';
import 'package:image_card/image_card.dart';

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
                      CardCategory(context),
                      CardCategory(context),
                      CardCategory(context),
                      CardCategory(context),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CardCategory(context),
                      CardCategory(context),
                      CardCategory(context),
                      CardCategory(context),
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
              // Column(
              //   children: [
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       children: [
              //         CardProduct(context),
              //         CardProduct(context),
              //       ],
              //     ),
              //     SizedBox(height: 10),
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       children: [
              //         CardProduct(context),
              //         CardProduct(context),
              //       ],
              //     )
              //   ],
              // ),
              // SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  Card CardProduct(BuildContext context, data) {
    print(data);
    return Card(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginScreen2()));
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

  GestureDetector CardCategory(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginScreen2()));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xffE7F3F9), borderRadius: BorderRadius.circular(15)),
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
