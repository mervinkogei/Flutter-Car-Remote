import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonWidget extends StatelessWidget {
  IconData icon;
   ButtonWidget({super.key,required this.icon});

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 100,
      width: 100,
      decoration: const  BoxDecoration(
          shape: BoxShape.circle,
          color:  Color(0xff100e11),
          boxShadow: [
            BoxShadow(
                color: Color(0xff504f50),
                offset:  Offset(-8, -5),
                blurRadius: 10
            ),
              BoxShadow(
                color: Colors.lime,
                offset: Offset(8, 5),
                blurRadius: 10
            )
          ]
      ),
      padding: const  EdgeInsets.all(5),
      child: Container(
        decoration:  const  BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xff5e595d)
        ),
        padding: const  EdgeInsets.all(2),
        child: Container(
          decoration:const  BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors:[
                    Color(0xff141414),
                    Color(0xff5c5a5d),
                  ]
              )
          ),
          child:  ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (Rect bounds) => RadialGradient(
              center: Alignment.topCenter,
              stops: const [.2, 1],
              colors: [
                Colors.grey,
                Colors.grey.shade300,

              ],
            ).createShader(bounds),
            child:  Icon(
              icon,
              size: 35,

            ),
          ),
        ),

      ),
    );
  }
}