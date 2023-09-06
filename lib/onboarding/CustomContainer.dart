import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
 
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return ClipPath(
      clipper: CustomShape(),
      child: Container(
        width: double.infinity,
        height: 400,
        color: Colors.black,
      ),
    ) ;
  }
}
class CustomShape extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path=Path();
    path.lineTo(0, size.height-150);
    path.quadraticBezierTo(size.width/2, size.height, size.width, size.height-150);
    path.lineTo(size.width, 0);
    path.close();

    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}
