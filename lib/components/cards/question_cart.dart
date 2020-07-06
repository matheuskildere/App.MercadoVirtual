import 'package:AppMercadoVirtual/shared/theme/color.dart';
import 'package:flutter/material.dart';

class QuestionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          stops: [0.02, 0.02],
          colors: [Color(0xFFD1D1D1), Colors.white]
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color: Colors.black12,
            offset: Offset(1.0, 2.5),
          )
        ],
      ),
      child: ListTile(
        contentPadding: EdgeInsets.only(top: 7,right: 15, left: 15, bottom: 7),
<<<<<<< HEAD
        title: Text("Olá, quais as dimensões deste TV?",style: Theme.of(context).textTheme.bodyText2,),
=======
        title: Text("Olá, quais as dimensões deste sofá?",style: Theme.of(context).textTheme.bodyText2,),
>>>>>>> 9b90f8f105b005c097dea6490ffc2006c721a92c
        subtitle: Padding(
          padding: const EdgeInsets.only(top:15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("R:", style: TextStyle(fontSize: 25, color: colorTheme),),
              SizedBox(width: 10,),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Oi ! Recomendo utilizar a dunção AR para visualizar como ficaria no seu espaço",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      "Respondido por Mercado Livre",
                      style: TextStyle(color: colorGreyText, fontSize: 13),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
