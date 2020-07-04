import 'package:AppMercadoVirtual/components/buttons/rounded_button.dart';
import 'package:AppMercadoVirtual/components/cards/offer_card.dart';
import 'package:AppMercadoVirtual/components/cards/product_card.dart';
import 'package:AppMercadoVirtual/shared/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InitPage extends StatefulWidget {
  @override
  _InitPageState createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SingleChildScrollView(
          padding: EdgeInsets.only(top: 15),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              OfferCard(
                urlLink: "assets/products/sale.png",
              ),
              OfferCard(
                urlLink: "assets/fundo.png",
                widget: Row(
                  children: <Widget>[
                    Image.asset(
                      "assets/products/pc.png",
                      height: 150,
                      width: 200,
                    ),
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("As melhores ofertas de informática!", style: Theme.of(context).textTheme.headline6,),
                          RaisedButton(
                            onPressed: (){},
                            child: Text("Confira já!", style: Theme.of(context).textTheme.headline1,)
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10,)
                  ],
                ),
              ),
              OfferCard(
                urlLink: "assets/products/sale.png",
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RoundedButton(
                icon: FontAwesomeIcons.tags,
                name: "Ofertar",
              ),
              RoundedButton(
                icon: FontAwesomeIcons.couch,
                name: "Móveis",
              ),
              RoundedButton(
                icon: FontAwesomeIcons.solidBookmark,
                name: "Livros",
              ),
              RoundedButton(
                icon: FontAwesomeIcons.shoppingBasket,
                name: "Mercado",
              ),
              RoundedButton(
                icon: FontAwesomeIcons.ellipsisH,
                name: "Outros",
              ),
            ],
          ),
        ),
        Wrap(
          spacing: 20,
          runSpacing: 20,
          children: <Widget>[
            ProductCard(
              productModel: ProductModel(
                name: "Sofá Ferrari",
                value: 600.00,
                urlLink: "assets/products/couch.png"
              ),
            ),
            ProductCard(
              productModel: ProductModel(
                name: "Livro Atuiti",
                value: 153.00,
                urlLink: "assets/products/book.png"
              ),
            ),
            ProductCard(
              productModel: ProductModel(
                name: "Estante para Sala",
                value: 430.50,
                urlLink: "assets/products/tv.png"
              ),
            ),
            ProductCard(
              productModel: ProductModel(
                name: "Iphone 7 Preto",
                value: 5000.00,
                urlLink: "assets/products/iphone.png"
              ),
            ),
          ],
        )
      ],
    );
  }
}
