import 'package:AppMercadoVirtual/components/buttons/rounded_button.dart';
import 'package:AppMercadoVirtual/components/cards/offer_card.dart';
import 'package:AppMercadoVirtual/components/cards/product_card.dart';
import 'package:AppMercadoVirtual/pages/home/controller/home_controller.dart';
import 'package:AppMercadoVirtual/pages/init/init_page.dart';
import 'package:AppMercadoVirtual/pages/settings/settings_page.dart';
import 'package:AppMercadoVirtual/shared/models/product_model.dart';
import 'package:AppMercadoVirtual/shared/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController _controller = HomeController();
  List<Widget> pagesList =[
    InitPage(),
    buildBuilder(),
    buildQRCode(),
    buildNotification(),
    SettingsPage()
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset(
                  "assets/logo/logoML.png",
                  height: 30,
                  width: 50,
                ),
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
                  icon: Icon(FontAwesomeIcons.shoppingCart, color: Colors.white, size: 15,), 
                  onPressed: (){}
                ),
                SizedBox(width: 15,),
                ClipOval(
                  child: Image.asset(
                    "assets/profile.png",
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
        child: Observer(builder: (context) => pagesList[_controller.selectedIndex],)
      ),
      bottomNavigationBar: Observer(
        builder:(context)=> BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.home, color: Theme.of(context).iconTheme.color,),
              title: Text("Início", style: Theme.of(context).textTheme.bodyText1,)
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.shapes, color: Theme.of(context).iconTheme.color,),
              title: Text("Builder", style: Theme.of(context).textTheme.bodyText1,)
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.qrcode, color: Theme.of(context).iconTheme.color,),
              title: Text("QR Code", style: Theme.of(context).textTheme.bodyText1,)
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bell, color: Theme.of(context).iconTheme.color,),
              title: Text("Notificações", style: Theme.of(context).textTheme.bodyText1,)
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bars, color: Theme.of(context).iconTheme.color,),
              title: Text("Mais", style: Theme.of(context).textTheme.bodyText1,)
            ),
          ],
          selectedFontSize: 20,
          unselectedFontSize: 15,
          iconSize: 20,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: _controller.selectedIndex,
          selectedItemColor: colorTheme,
          onTap: (value) => _controller.onChangeSelectedIndex(value),
        ),
      ),
    );
  }
  static Widget buildBuilder(){
    return Text("BUILDER");
  }

  static Widget buildQRCode(){
    return Text("QRCODE");
  }

  static Widget buildNotification(){
    return Text("NOTIFICATION");
  }
}
