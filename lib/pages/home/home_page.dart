
import 'package:AppMercadoVirtual/components/buttons/rounded_button.dart';
import 'package:AppMercadoVirtual/pages/home/controller/home_controller.dart';
import 'package:AppMercadoVirtual/shared/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    HomeController _controller = Provider.of<HomeController>(context);
    var size = MediaQuery.of(context).size;
    return SlidingUpPanel(
      controller: _controller.panelController,
      panel: openOptions(),
      backdropEnabled: true,
      backdropOpacity: 0.7,
      minHeight: 0,
      maxHeight: size.height/1.3 ,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25)
      ),
      body: Scaffold(
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
      ),
    );
  }

  Widget openOptions(){
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          height: size.height/1.3 - size.height/17,
          padding: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25)
            )
          ),
          margin: EdgeInsets.only(top: 15,left: 10, right: 10, bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 5,
                width: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFD0D0D0),
                  borderRadius: BorderRadius.circular(5)
                ),
              ),

              Container(
                height: 46,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.go,cursorColor: colorTheme,
                  decoration: InputDecoration(
                    fillColor: colorTheme,
                    focusColor: colorTheme,
                    hoverColor: colorTheme,
                    hintText: "Pesquisar",
                    hintStyle: TextStyle(fontSize: 20, color: Color(0xFF7B7B7B)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: colorTheme)
                    ),
                    suffixIcon: Icon(FontAwesomeIcons.search,color: colorTheme,)
                  ),
                  
                ),
              ),
              

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Categorias em destaque", style: TextStyle(color: colorBlackBodyText2, fontSize: 20),),
                  SizedBox(height: 26,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      SizedBox(),
                      RoundedButton(
                        onTap: (){},
                        name: "Móveis",
                        icon: FontAwesomeIcons.couch,
                        size: 55,
                        iconSize: 18,
                      ),
                      RoundedButton(
                        onTap: (){},
                        name: "Viagem",
                        icon: FontAwesomeIcons.suitcase,
                        size: 55,
                        iconSize: 18,
                      ),
                      RoundedButton(
                        onTap: (){},
                        name: "Eletrônicos",
                        icon: FontAwesomeIcons.desktop,
                        size: 55,
                        iconSize: 18,
                      ),
                      RoundedButton(
                        onTap: (){},
                        name: "jogos",
                        icon: FontAwesomeIcons.gamepad,
                        size: 55,
                        iconSize: 18,
                      ),
                      SizedBox()
                    ],
                  ),
                ],
              ),
              

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Todas categorias", style: TextStyle(color: colorBlackBodyText2, fontSize: 20),),
                  SizedBox(height: 26,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      RoundedButton(
                        onTap: (){},
                        name: "Alimentos",
                        icon: FontAwesomeIcons.utensils,
                        size: 55,
                        iconSize: 18,
                      ),
                      RoundedButton(
                        onTap: (){},
                        name: "Animais",
                        icon: FontAwesomeIcons.dog,
                        size: 55,
                        iconSize: 18,
                      ),
                      RoundedButton(
                        onTap: (){},
                        name: "Arte",
                        icon: FontAwesomeIcons.palette,
                        size: 55,
                        iconSize: 18,
                      ),
                      RoundedButton(
                        onTap: (){},
                        name: "Bebidas",
                        icon: FontAwesomeIcons.glassCheers,
                        size: 55,
                        iconSize: 18,
                      ),
                      SizedBox()
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(),
                  RoundedButton(
                    onTap: (){},
                    name: "Beleza",
                    icon: FontAwesomeIcons.couch,
                    size: 55,
                    iconSize: 18,
                  ),
                  RoundedButton(
                    onTap: (){},
                    name: "Brinquedos",
                    icon: FontAwesomeIcons.shapes,
                    size: 55,
                    iconSize: 18,
                  ),
                  RoundedButton(
                    onTap: (){},
                    name: "Informática",
                    icon: FontAwesomeIcons.desktop,
                    size: 55,
                    iconSize: 18,
                  ),
                  RoundedButton(
                    onTap: (){},
                    name: "jogos",
                    icon: FontAwesomeIcons.gamepad,
                    size: 55,
                    iconSize: 18,
                  ),
                  SizedBox()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
