import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class HomeFragment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeFragmentState();
  }
}

class HomeFragmentState extends State<HomeFragment> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: 226.0,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, position) {
            return Container(
              height: 226.0,
              width: 216,
              color: Colors.transparent,
              child: new Container(
                margin: EdgeInsets.fromLTRB(16, 16, 0, 0),
                decoration: new BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0, // has the effect of softening the shadow
                        spreadRadius:
                            1.0, // has the effect of extending the shadow
                        offset: Offset(
                          1.0, // horizontal, move right 10
                          1.0, // vertical, move down 10
                        ),
                      )
                    ],
                    color: Color(0xffEFF5F5),
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(4.0),
                        topRight: const Radius.circular(4.0),
                        bottomLeft: const Radius.circular(4.0),
                        bottomRight: const Radius.circular(4.0))),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topLeft,
                          child: Image(
                            height: 130,
                            width: 200,
                            image: NetworkImage(
                                "https://media.gettyimages.com/photos/woman-dress-picture-id184354439?s=612x612"),
                            fit: BoxFit.fill,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 76,
                          width: 196,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.all(2),
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8.0, 8.0, 0, 0),
                                    child: Text("Product name is here",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Colors.grey.shade800,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8.0, 5.0, 0, 0),
                                    child: Text("\$100",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal)),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8.0, 3.0, 0, 0),
                                    child: SmoothStarRating(
                                        allowHalfRating: false,
                                        /*    onRatingChanged: (v) {
                                      rating = v;
                                      setState(() {});
                                    },*/
                                        starCount: 5,
                                        rating: 3.7,
                                        size: 20.0,
                                        color: Colors.yellow,
                                        borderColor: Colors.yellow,
                                        spacing: 0.0),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    // padding: EdgeInsets.fromLTRB(16,0, 0, 0),
                                    // alignment: Alignment.topRight,
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 8.0, 8.0, 0),
                                    child: Image(
                                      image: AssetImage("images/ic_favorite.png"),
                                      height: 20,
                                      width: 20,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        0, 8.0, 10.0, 0),
                                    //   padding: EdgeInsets.fromLTRB(16,0, 0, 0),
                                    // alignment: Alignment.topRight,
                                    child: Image(
                                      image: AssetImage("images/ic_favorite.png"),
                                      height: 20,
                                      width: 20,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: productList.length,
        ),
      ),
    );
  }
}

class Product {
  const Product({this.title, this.imageUrl});

  final String title;
  final String imageUrl;
}

const List<Product> productList = const <Product>[
  const Product(
      title: 'Women Dress',
      imageUrl:
          "https://media.gettyimages.com/photos/woman-dress-picture-id184354439?s=612x612"),
  const Product(
      title: 'Men Dress',
      imageUrl:
          "https://media.gettyimages.com/photos/woman-dress-picture-id184354439?s=612x612"),
];
