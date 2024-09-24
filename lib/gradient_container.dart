import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';
import 'package:first_app/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// class GradientContainer extends StatelessWidget {
//   //super refers to the parent class
//   const GradientContainer({super.key, required this.colors});
//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           begin: startAlignment,
//           end: endAlignment,

//           //since the color here was hardcoded, we can simply put const here
//           colors: [
//             Color.fromARGB(254, 255, 255, 255),
//             Color.fromARGB(255, 36, 204, 255)
//           ],
//         ),
//       ),
//       child: const Center(child: StyledText('hello world!')),
//     );
//   }
// }

// the reason of image wont change is because this StatelessWidget is immutable
// since changing image internally is a state change action, we need to change it to StatefulWidget
// but we should also notice that overall this widget is not really data related, only image changing required state, hence the best way is to separate the image changing to another widget
class GradientContainer extends StatelessWidget {
  //super refers to the parent class
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.bg({super.key})
      : color1 = const Color.fromARGB(255, 203, 217, 3),
        color2 = const Color.fromARGB(255, 183, 181, 153);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,

          //since the color here was hardcoded, we can simply put const here
          // colors: [
          //   Color.fromARGB(254, 255, 255, 255),
          //   Color.fromARGB(255, 36, 204, 255)
          // ],
        ),
      ),
      // child: const Center(child: StyledText('hello world!')),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
