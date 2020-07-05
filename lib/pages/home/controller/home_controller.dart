import 'package:AppMercadoVirtual/pages/init/init_page.dart';
import 'package:AppMercadoVirtual/pages/product/productInfo_page.dart';
import 'package:AppMercadoVirtual/pages/settings/settings_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store{
  PanelController panelController = PanelController();
  
  List<Widget> pagesList =[
    InitPage(),
    Container(),
    Container(),
    Container(),
    SettingsPage(),
  ];

  List<Widget> pages =[
    InitPage(),
    Container(),
    Container(),
    Container(),
    SettingsPage(),
    ProductInfoPage(),
  ];

  @observable
  int selectedIndex= 0;

  @action
  onChangeSelectedIndex(value){
    selectedIndex = value;
  }

}
