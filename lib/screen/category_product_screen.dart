import 'package:flutter/material.dart';
import 'package:flutter_olshop/screen/detail_product_screen.dart';
import 'package:flutter_olshop/services/product.dart';
import 'package:image_card/image_card.dart';

class CategoryProductpageScreen extends StatelessWidget {
  const CategoryProductpageScreen({required this.searchInput, Key? key})
      : super(key: key);

  final dynamic searchInput;

  @override
  Widget build(BuildContext context) {
    Future<List<dynamic>> _fecthDataProducts() async {
      var result = await ProductService().searchProductByCategory(searchInput);
      return result;
    }

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff002C42),
        ),
        backgroundColor: Color(0xffE7F3F9),
        title: Text(
          "Product Category",
          style: TextStyle(color: Color(0xff002C42)),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
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
