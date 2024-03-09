import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LockWidget extends StatelessWidget {
  const LockWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 320,
        width: 320,
        padding: const EdgeInsets.all(5),
        decoration:  const  BoxDecoration(
            shape: BoxShape.circle,
            color:  Color(0xff100e11),
            boxShadow: [
              BoxShadow(

                color: Color(0xff5e5d5f),
                  offset:  Offset(-10, -10),
                  blurRadius: 15
              ),
                BoxShadow(
                  color: Colors.black54,

                  offset: Offset(10, 10),
                  blurRadius: 15
              )
            ]
        ),
        child:  Stack(
          children: [
            Container(
              height: 320,
              width: 320,
              decoration:  const  BoxDecoration(
                  shape: BoxShape.circle,

                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors:[
                        Color(0xff5c5a5d),
                        Color(0xff141414)
                      ]
                  )

              ),
              alignment: Alignment.center,
              child: Container(
                  height: 150,
                  width: 150,
                  decoration:    BoxDecoration(
                      shape: BoxShape.circle,

                      gradient:const  LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors:[
                            Colors.black,
                            Colors.lime

                          ]
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade600,
                            offset:const  Offset(3, 5),
                            blurRadius: 5
                        ),
                        const  BoxShadow(
                            color: Colors.black,
                            offset: Offset(-5, -5),
                            blurRadius: 5
                        )
                      ]

                  ),
                  alignment: Alignment.center,
                  child: Container(
                    height: 130,
                    width: 130,
                    decoration:   const  BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors:[
                              Color(0xff5c5a5d),
                              Color(0xff141414)
                            ]
                        )


                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ShaderMask(
                          blendMode: BlendMode.srcIn,
                          shaderCallback: (Rect bounds) => RadialGradient(
                            center: Alignment.topCenter,
                            stops: [.2, 1],
                            colors: [
                              Colors.grey,
                              Colors.grey.shade300,

                            ],
                          ).createShader(bounds),
                          child:const  Icon(
                            CupertinoIcons.lock,
                            size: 35,

                          ),
                        ),
                        const  SizedBox(
                            height: 40,
                            child: VerticalDivider(color: Colors.grey,thickness: 2,)),
                        ShaderMask(
                          blendMode: BlendMode.srcIn,
                          shaderCallback: (Rect bounds) => RadialGradient(
                            center: Alignment.topCenter,
                            stops: [.2, 1],
                            colors: [
                              Colors.grey,
                              Colors.grey.shade300,

                            ],
                          ).createShader(bounds),
                          child: const Icon(
                            CupertinoIcons.lock_open,
                            size: 35,

                          ),
                        ),
                      ],
                    ),

                  )


              ),
            ),
            Positioned(
              top: 10,
              left: MediaQuery.of(context).size.width/2-40,
              child: Container(
                height: 25,
                width: 5,
                decoration: BoxDecoration(
                    color: const Color(0xff3c3a3d),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade700,
                          offset:const  Offset(-2, -2),
                          blurRadius: 1
                      ),
                      const  BoxShadow(
                          color: Colors.lime,
                          offset: Offset(2, 2),
                          blurRadius: 2
                      )
                    ]

                ),
              ),
            )
          ],
        )



    );
  }
}