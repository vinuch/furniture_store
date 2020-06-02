import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'MenuItem.dart';
import 'Product.dart';

const List<String> icons = <String>[
  // 'assets/notfound.svg', // uncomment to test an asset that doesn't exist.
  'assets/icons/chair.svg',
  'assets/icons/desk-lamp.svg',
  'assets/icons/desk.svg',
  'assets/icons/interior.svg',
  'assets/icons/wash.svg',
  'assets/icons/monitor.svg',
];
void main() => runApp(MyApp());

/// This Widget is the main application widget.

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.grey[200],
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.short_text,
                        size: 35.0,
                      ),
                      Icon(Icons.shopping_cart)
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 270.0,
                      margin: EdgeInsets.symmetric(horizontal: 8.0),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(90.0))),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'search',
                            icon: Icon(Icons.search)),
                      ),
                    ),
                    Container(
                      height: 50.0,
                      width: 60.0,
                      child: RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xff5a5474), Color(0xff2a2740)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Container(
                              constraints: BoxConstraints(
                                  maxWidth: 60.0, minHeight: 50.0),
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.swap_horiz,
                                color: Colors.orange[300],
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 55.0,
                  child: MenuList(),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 400.0,
                  child: ProductList(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _menuList(context);
  }
}

Widget _menuList(BuildContext context) {
  return ListView.builder(
    itemCount: icons.length,
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index) {
      return MenuItem(
        icon: icons[index],
      );
    },
  );
}

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<Product> products = [
    Product(
        img: 'assets/images/chair1.png', top: 'Savanah easy chair', amt: 290),
    Product(
        img: 'assets/images/chair2.png', top: 'Savanah easy chair', amt: 290),
    Product(
        img: 'assets/images/chair3.png', top: 'Savanah easy chair', amt: 290),
    Product(
        img: 'assets/images/chair4.png', top: 'Savanah easy chair', amt: 290),
    Product(
        img: 'assets/images/chair5.png', top: 'Savanah easy chair', amt: 290),
    Product(
        img: 'assets/images/chair6.jpg', top: 'Savanah easy chair', amt: 290),
    Product(
        img: 'assets/images/chair7.png', top: 'Savanah easy chair', amt: 290),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: products.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Stack(children: <Widget>[
            Transform.translate(
              offset: const Offset(0.0, 150.0),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                height: 200.0,
                child: Ink(
                  child: Card(
                      color: Colors.grey[50],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      elevation: 7.0,
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(12.0, 50.0, 12.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                  products[index].title,
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w900,),
                                ),
                                Text('\$' + products[index].price.toString(), textAlign: TextAlign.left,)
                              ],
                            ),
                            Container(
                              width: 40.0,
                              height: 40.0,
                              child: RaisedButton(
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(60.0)),
                                padding: EdgeInsets.all(0.0),
                                child: Ink(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xff5a5474),
                                          Color(0xff2a2740)
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(50.0)),
                                  child: Container(
                                      padding: EdgeInsets.all(8.0),
                                      constraints: BoxConstraints(
                                          maxWidth: 40.0, minHeight: 10.0),
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.orange[300],
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
              ),
            ),
            Transform.translate(
                offset: const Offset(28.0, -0.0),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.grey[300],
                    ),
                    padding: EdgeInsets.all(20.0),
                    height: 200.0,
                    width: 200.0,
                    child: Image.asset(products[index].image)))
          ]);
        });
  }
}
