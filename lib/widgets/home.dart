import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'button_widget.dart';
import 'lock_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:const   Color(0xff403e41),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const Center(
              child: LockWidget()
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonWidget(icon:  CupertinoIcons.antenna_radiowaves_left_right,),
                ButtonWidget(icon:  CupertinoIcons.wind,),
                ButtonWidget(icon:  CupertinoIcons.sun_max,)
              ],
            ),
            const Spacer(),



          ],
        ),
      ),

    );
  }
}




