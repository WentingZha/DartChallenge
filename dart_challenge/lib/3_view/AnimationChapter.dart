import 'package:flutter/material.dart';

class AnimationChapter extends StatefulWidget {
  const AnimationChapter({super.key});

  @override
  State<AnimationChapter> createState() => _State();
}

class _State extends State<AnimationChapter> with TickerProviderStateMixin {

  late AnimationController animationController;
  late Animation animation;
  late Animation animationColor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
        duration: Duration(milliseconds: 1000),
        vsync: this
    );

    animation = Tween(begin: 31.0,end: 100.0).animate(animationController);

    animationColor = ColorTween(begin: Colors.red,end: Colors.red[900]).animate(animationController);

    //Output each frame of the animation
    animationController.addListener(() {
      print('${animationController.value}');
    });

    animationController.addStatusListener((status) {
      print(status);
    });
    // animationController.forward();

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        // child: ActionChip(
        //   label: Text('${animationController.value}'),
        //   onPressed: (){
        //     animationController.forward();
        //   },
        // )

        child: IconButton(
          icon: Icon(Icons.cable),
          iconSize: animation.value,
          color: animationColor.value,
          onPressed: (){
            switch(animationController.status){
              case AnimationStatus.completed:
                animationController.reverse();
                break;
              default:
                animationController.forward();
                break;
            }
          },
        ),
    );
  }
}