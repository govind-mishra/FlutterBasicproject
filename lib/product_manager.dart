import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  String  startingProduct;
  ProductManager({this.startingProduct});//making named arguments
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }
}

//class for getting linking productmanager
class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];
  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                _products.add('Advanced View Tester');
              });
            },
            child: Text('Add product'),
          ),
        ),
        Products(_products)
      ],
    );
  }
}
