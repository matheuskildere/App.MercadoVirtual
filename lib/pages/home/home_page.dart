
import 'package:AppMercadoVirtual/pages/home/controller/home_controller.dart';
import 'package:AppMercadoVirtual/shared/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    HomeController _controller = Provider.of<HomeController>(context);
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
      body: Observer(builder: (context) => _controller.pagesList[_controller.selectedIndex],),
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
              icon: Icon(FontAwesomeIcons.solidBell, color: Theme.of(context).iconTheme.color,),
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
}
