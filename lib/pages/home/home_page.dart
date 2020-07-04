import 'package:AppMercadoVirtual/shared/theme/color.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(Icons.access_alarms),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Mercado AR", style: Theme.of(context).textTheme.headline1,),
                    Text("A hackthon company.", style: Theme.of(context).textTheme.headline2,)
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.shopping_cart, color: Colors.white, size: 20,), 
                  onPressed: (){}
                ),
                SizedBox(width: 15,),
                ClipOval(
                  child: Image.network(
                    "https://us.123rf.com/450wm/olgaosa/olgaosa1802/olgaosa180200076/94905731-o-modelo-bonito-da-senhora-da-mulher-veste-o-chap%C3%A9u-negro-%C3%A0-moda-elegante-blusa-de-seda-transparente-bra.jpg?ver=6",
                    width: 30,
                    height: 30,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      backgroundColor: colorBackground,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}
