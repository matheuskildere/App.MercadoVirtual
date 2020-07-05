import 'package:AppMercadoVirtual/shared/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left:23, right: 23,top: 35 , bottom: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            height: 100,
            padding: EdgeInsets.all(23),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 5.0,
                  color: Colors.black12,
                  offset: Offset(1.0, 2.5),
                )
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //SizedBox(),
                ClipOval(
                  child: Image.asset(
                    "assets/profile.png",
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Olá Daiana,",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    Text(
                      "Nível 32 - Mercado Pontos",
                      style: Theme.of(context).textTheme.subtitle1,
                    )
                  ],
                ),
                SizedBox()
              ],
            ),
          ),
          SizedBox(height: 30,),
          Container(
            padding: EdgeInsets.only(left:23, right: 23),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 5.0,
                  color: Colors.black12,
                  offset: Offset(1.0, 2.5),
                )
              ],
            ),
            child: Column(
              children: <Widget>[
                button(
                  name: "Início", 
                  icon: FontAwesomeIcons.home, 
                  function: (){}
                ),
                Container(
                  width: double.maxFinite,
                  height: 1,
                  decoration: BoxDecoration(
                    color: colorLineSettings,
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
                button(
                  name: "Favoritos", 
                  icon: FontAwesomeIcons.heart, 
                  function: (){}
                ),
                Container(
                  width: double.maxFinite,
                  height: 1,
                  decoration: BoxDecoration(
                    color: colorLineSettings,
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
                button(
                  name: "Build", 
                  icon: FontAwesomeIcons.shapes, 
                  function: (){}
                ),
                Container(
                  width: double.maxFinite,
                  height: 1,
                  decoration: BoxDecoration(
                    color: colorLineSettings,
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
                button(
                  name: "Notificações", 
                  icon: FontAwesomeIcons.bell, 
                  function: (){}
                ),
                Container(
                  width: double.maxFinite,
                  height: 1,
                  decoration: BoxDecoration(
                    color: colorLineSettings,
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
                button(
                  name: "Histórico", 
                  icon: FontAwesomeIcons.clock, 
                  function: (){}
                ),
                Container(
                  width: double.maxFinite,
                  height: 1,
                  decoration: BoxDecoration(
                    color: colorLineSettings,
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
                button(
                  name: "Ajuda", 
                  icon: FontAwesomeIcons.questionCircle, 
                  function: (){}
                ),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Row(
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  onPressed: (){},
                  child: Text("Sair", style: TextStyle(fontSize: 20, color: Colors.white),)
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  GestureDetector button({@required String name,@required IconData icon,@required Function function}){
    return GestureDetector(
      onTap: function, 
      child: Padding(
        padding: const EdgeInsets.only(top:20.0, bottom: 20),
        child: Row(
          children: <Widget>[
            Icon(icon, color: colorGreyText,),
            SizedBox(width: 20,),
            Text(name, style: Theme.of(context).textTheme.bodyText2,)
          ],
        ),
      )
    );
  }
}
