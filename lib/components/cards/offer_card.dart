import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  final String urlLink;
  final Widget widget;

  OfferCard({@required this.urlLink, this.widget});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5),
      height: size.height/4.3,
      width: size.width/2 + size.width/2.5,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(urlLink),
          fit: BoxFit.cover
        ),
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color: Colors.black12,
            offset: Offset(1.0, 2.5),
          )
        ],
      ),
      child: widget != null ? widget : Container(),
    );
  }
}
