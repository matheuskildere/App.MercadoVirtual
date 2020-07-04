import 'package:AppMercadoVirtual/shared/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final ProductModel productModel;
  
  ProductCard({@required this.productModel});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height /4.2,
      width: size.width/2.4,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image.asset(
            productModel.urlLink,
            height: size.width/5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 5.0),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    productModel.name,
                    style: Theme.of(context).textTheme.headline5,
                  )
                ),
                SizedBox(height: 5,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "R\$ ${productModel.value.toStringAsFixed(2)}",
                    style: Theme.of(context).textTheme.headline6,
                  )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
