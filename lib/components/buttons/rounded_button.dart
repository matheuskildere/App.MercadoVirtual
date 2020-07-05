import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String name;
  final IconData icon;
  final Function onTap;
  final double iconSize;
  final double size;

  RoundedButton({@required this.name,@required this.icon,@required this.onTap, this.iconSize, this.size});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: size != null ? size: 50,
              width: size != null ? size: 50,
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
              child: Icon(icon, size: iconSize != null ? iconSize : 20,),
            ),
            SizedBox(height: 10,),
            Text(
              name,
              style: Theme.of(context).textTheme.headline3
            )
          ],
        ),
      ),
    );
  }
}
