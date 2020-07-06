import 'package:AppMercadoVirtual/components/buttons/rounded_button.dart';
import 'package:AppMercadoVirtual/shared/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class CamARPage extends StatefulWidget {
  @override
  _CamARPageState createState() => _CamARPageState();
}

class _CamARPageState extends State<CamARPage> {
  UnityWidgetController _unityWidgetController;
  double _sliderValue = 0.0;
  bool status =  false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          UnityWidget(
            onUnityViewCreated: onUnityCreated,
            isARScene: true,
            onUnityMessage: (controller, handler){
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: 60,
                      height: 40,
                      buttonColor: Colors.white,
                      child: RaisedButton(
                        onPressed: ()=> Navigator.pop(context),
                        shape: CircleBorder(),
                        child: Icon(FontAwesomeIcons.times, size: 18, color: colorTheme,),
                      ),
                    ),
                    LiteRollingSwitch(
                      value: status,
                      textOn: "AR",
                      textOff: "3D",
                      colorOff: Color(0xFF808080),
                      colorOn: Color(0xFF808080),
                      iconOn: FontAwesomeIcons.image,
                      iconOff: FontAwesomeIcons.camera,
                      textSize: 12,
                      onChanged: (bool state) {
                        status = state;
                      },
                    ),
                    ButtonTheme(
                      minWidth: 60,
                      height: 40,
                      buttonColor: Colors.white,
                      child: RaisedButton(
                        onPressed: (){},
                        shape: CircleBorder(),
                        child: Icon(FontAwesomeIcons.camera, size: 18, color: colorTheme,),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(),
              SizedBox(),
              SizedBox(),
              SizedBox(),
              SizedBox(),
              SizedBox(),
              Container(
                height: 120,
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text("TV 14 Polegadas", style: TextStyle(fontSize: 25, color: colorGreyText),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        RoundedButton(
                          name: '14"',
                          icon: FontAwesomeIcons.tv,
                          size: 35,
                          iconSize: 15,
                        ),
                        RoundedButton(
                          name: '24"',
                          icon: FontAwesomeIcons.tv,
                          size: 35,
                          iconSize: 15,
                        ),
                        RoundedButton(
                          name: '49"',
                          icon: FontAwesomeIcons.tv,
                          size: 35,
                          iconSize: 15,
                        ),
                      ],
                    ),
                    // Widget to rotate object  
                    // Slider(
                    //   activeColor: colorTheme,
                    //   inactiveColor: Color(0xFF808080),
                    //   onChanged: (value) {
                    //     setState(() {
                    //       _sliderValue = value;
                    //     });
                    //     setRotationSpeed(value.toString());
                    //   },
                    //   value: _sliderValue,
                    //   min: 0,
                    //   max: 20,
                    // ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  void onUnityCreated(controller){
    this._unityWidgetController = controller;
  }

  void setRotationSpeed(String speed) {
    _unityWidgetController.postMessage(
      'MI SMART TV',
      'SetRotationSpeed',
      speed,
    );
  }
}
