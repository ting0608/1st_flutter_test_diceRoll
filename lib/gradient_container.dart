import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

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

class GradientContainer extends StatelessWidget {
  //super refers to the parent class
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(254, 255, 255, 255),
            Color.fromARGB(255, 36, 204, 255)
          ],
          begin: startAlignment,
          end: endAlignment,

          //since the color here was hardcoded, we can simply put const here
          // colors: [
          //   Color.fromARGB(254, 255, 255, 255),
          //   Color.fromARGB(255, 36, 204, 255)
          // ],
        ),
      ),
      child: const Center(child: StyledText('hello world!')),
    );
  }
}
