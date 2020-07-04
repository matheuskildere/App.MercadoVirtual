import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String name;
  final IconData icon;

  RoundedButton({this.name, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  blurRadius: 5.0,
                  color: Colors.black12,
                  offset: Offset(1.0, 2.5),
                )
              ],
            ),
            child: Icon(icon, size: 20,),
          ),
          SizedBox(height: 10,),
          Text(
            name,
            style: Theme.of(context).textTheme.headline3
          )
        ],
      ),
    );
  }
}
