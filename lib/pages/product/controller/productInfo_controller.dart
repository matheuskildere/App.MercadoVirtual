import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'productInfo_controller.g.dart';

class ProductInfoController = _ProductInfoBase with _$ProductInfoController;

abstract class _ProductInfoBase with Store{
  

  @observable
  Color colorIconInfo = Color(0xFFAAAAAA);

  @observable
  Color colorIconDesc = Colors.white;

  @observable
  Color colorIconQuest = Colors.white;

  @observable
  int selectedIcon = 0;

  @action
  onTapInfo(){
    selectedIcon = 0;
    colorIconInfo = Color(0xFFAAAAAA);
    colorIconDesc = Colors.white;
    colorIconQuest = Colors.white;
  } 

  @action
  onTapDesc(){
    selectedIcon = 1;
    colorIconInfo = Colors.white;
    colorIconDesc = Color(0xFFAAAAAA);
    colorIconQuest = Colors.white;
  }

  @action
  onTapQuest(){
    selectedIcon = 2;
    colorIconInfo = Colors.white;
    colorIconQuest = Color(0xFFAAAAAA);
    colorIconDesc = Colors.white;
  } 
}
