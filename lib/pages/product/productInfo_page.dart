import 'package:AppMercadoVirtual/components/cards/question_cart.dart';
import 'package:AppMercadoVirtual/pages/product/controller/productInfo_controller.dart';
import 'package:AppMercadoVirtual/shared/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductInfoPage extends StatefulWidget {
  @override
  _ProductInfoPageState createState() => _ProductInfoPageState();
}

class _ProductInfoPageState extends State<ProductInfoPage> {
  ProductInfoController _controller = ProductInfoController();
  
  @override
  Widget build(BuildContext context) {
    List<Widget> buttonsList =[
      buttonInfo(),
      buttonDesc(),
      buttonQuestion()
    ];
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(FontAwesomeIcons.arrowLeft, size: 20,), 
                onPressed: ()=> Navigator.pop(context)
              ),
              SizedBox(height: 30,),
              Center(
                child: Image.asset(
                  'assets/products/SOFA.png',
                  width: size.width/1.2,
                ),
              ),
              Center(
                child: Image.asset(
                  'assets/products/item.png',
                  width: size.width/2,
                ),
              ),
            ],
          ),
          Container(
            height: size.height/2,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)
              )
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Observer(
                    builder: (context)=> Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        ButtonTheme(
                          minWidth: 60,
                          height: 40,
                          buttonColor: _controller.colorIconInfo,
                          child: RaisedButton(
                            onPressed: ()=> _controller.onTapInfo(),
                            shape: CircleBorder(),
                            child: Icon(FontAwesomeIcons.info, size: 14, color: colorTheme,),
                          ),
                        ),
                        ButtonTheme(
                          minWidth: 60,
                          height: 40,
                          buttonColor: _controller.colorIconDesc,
                          child: RaisedButton(
                            onPressed: ()=> _controller.onTapDesc(),
                            shape: CircleBorder(),
                            child: Icon(FontAwesomeIcons.alignLeft, size: 14, color: colorTheme,),
                          ),
                        ),
                        ButtonTheme(
                          minWidth: 60,
                          height: 40,
                          buttonColor: _controller.colorIconQuest,
                          child: RaisedButton(
                            onPressed: ()=> _controller.onTapQuest(),
                            shape: CircleBorder(),
                            child: Icon(FontAwesomeIcons.question, size: 14, color: colorTheme,),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  Observer(
                    builder: (context) => buttonsList[_controller.selectedIcon],
                  ),
                  
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: ButtonTheme(
                          height: 55,
                          minWidth: 40,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          buttonColor: colorTheme,
                          child: RaisedButton(
                            child: Icon(FontAwesomeIcons.shoppingCart, size: 19,color: Colors.white,),
                            onPressed: (){}
                          ),
                        ),
                      ),
                      SizedBox(width: 12,),
                      Expanded(
                        flex: 3,
                        child: ButtonTheme(
                          height: 55,
                          buttonColor: colorTheme,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: RaisedButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(FontAwesomeIcons.camera, size: 19,color: Colors.white,),
                                SizedBox(width: 10,),
                                Text("AR", style: TextStyle(color: Colors.white, fontSize: 18),)
                              ],
                            ),
                            onPressed: (){}
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buttonInfo(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Sofá Ferrari",style: TextStyle(fontSize: 25, color: colorGreyText2),),
                Text("R\$ 600,00",style: TextStyle(fontSize: 25, color: colorGreyText2),)
              ],
            ),
            SizedBox(height: 5,),
            Text("Móveis", style: TextStyle(fontSize: 15, color: colorGreyText),),
          ],
        ),
        SizedBox(height: 20,),
        Row(
          children: <Widget>[
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFFBECEDC),
                shape: BoxShape.circle
              ),
            ),
            SizedBox(width: 15,),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFFBEDCCC),
                shape: BoxShape.circle
              ),
            ),
            SizedBox(width: 15,),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xFFDCBEBE),
                shape: BoxShape.circle
              ),
            )
          ],
        ),
        SizedBox(height: 40,),
        Align(alignment: Alignment.centerLeft,child: Text("Descrição do produto",style: TextStyle(fontSize: 20, color: Color(0xFF333333)),)),
        SizedBox(height: 10,),
        Text(
          "Com muito conforto e bom gosto, o sofá Ferrari oferece o melhor dos mundo, bem na sua sala!",
          style: Theme.of(context).textTheme.headline6,
        ),
        
      ],
    );
  }

  Widget buttonDesc(){
    return Column(
      children: <Widget>[
        Align(alignment: Alignment.centerLeft,child: Text("Descrição do produto",style: TextStyle(fontSize: 20, color: Color(0xFF333333)),)),
        SizedBox(height: 10,),
        Text(
          "Com muito conforto e bom gosto, o sofá Ferrari"
            "oferece o melhor dos mundo, bem na sua sala!\n\n"
            "Com muito conforto e bom gosto, o sofá Ferrari oferece o melhor dos mundo, bem na sua sala!"
            "Com muito conforto e bom gosto, o sofá Ferrari oferece o melhor dos mundo, bem na sua sala!"
            "Com muito conforto e bom gosto, o sofá Ferrari oferece o melhor dos mundo, bem na sua sala!",
          style: Theme.of(context).textTheme.headline6,
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }

  Widget buttonQuestion(){
    return Column(
      children: <Widget>[
        Align(alignment: Alignment.centerLeft,child: Text("Perguntas e Respostas",style: TextStyle(fontSize: 20, color: Color(0xFF333333)),)),
        SizedBox(height: 20,),
        QuestionCard()
      ],
    );
  }
}
