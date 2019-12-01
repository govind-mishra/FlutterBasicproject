import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  //const Products({Key key}) : super(key: key);
  final List<String> products;//making immutable using final keyword
  Products([this.products=const []]);//make argument optional
  @override
  Widget build(BuildContext context) {
    return Column(
      children: products
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assests/877.JPG'),
                    Text(element)
                  ],
                ),
              ))
          .toList(),
    );
  }
}
