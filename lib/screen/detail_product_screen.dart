import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailProductScreen extends StatelessWidget {
  const DetailProductScreen({required this.productDetail, Key? key})
      : super(key: key);

  final dynamic productDetail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff002C42),
        ),
        backgroundColor: Color(0xffE7F3F9),
        title: Text(
          "Detail Product",
          style: TextStyle(color: Color(0xff002C42)),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: Image.network(productDetail['img_path']).image,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: new BoxDecoration(
                        color: Color(0xff00689D),
                        borderRadius: new BorderRadius.only(
                          bottomRight: const Radius.circular(15.0),
                        )),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(productDetail['toko'],
                              style: TextStyle(
                                  color: Color(0xffB7B7B7), fontSize: 12)),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(productDetail['name'],
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Text(productDetail['price'],
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Overview',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Text(""" 
Rating : ${productDetail['rating']}
Stock  : ${productDetail['stock']}
Toko   : ${productDetail['toko']}
            """),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Deskripsi Produk',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                productDetail['desc'],
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
