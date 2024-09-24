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
  GradientContainer(this.color1, this.color2, {super.key});

  GradientContainer.bg({super.key})
      : color1 = const Color.fromARGB(255, 203, 217, 3),
        color2 = const Color.fromARGB(255, 183, 181, 153);

  final Color color1;
  final Color color2;
  var activeDiceImage = 'assets/images/dice-images/dice-3.png';

//rollDice function
  void rollDice() {
    print('Button pressed');
    activeDiceImage = 'assets/images/dice-images/dice-4.png';
  }

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
      child: Center(
        child: Column(
          // mainAxisSize: MainAxisSize.min, to make the column as small as possible
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-images/dice-3.png',
              width: 200,
            ),
            const SizedBox(height: 20),
            // Container(
            //   height: 0,
            //   color: Colors.red, // Set the background color here
            // ),
            ElevatedButton(
                // function like this couldnt be use in any other places, named anynomous function
                // onPressed: () {
                //   print('Button pressed');
                // },
                // function like this is actually point to the function above, you dont call it like rollDice(), doesnt add parentheses
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 0, 0, 0),
                  onPrimary: const Color.fromARGB(255, 255, 255, 255),
                  textStyle: const TextStyle(fontSize: 16),
                  // padding: const EdgeInsets.only(top: 8, bottom: 8),
                ),
                onPressed: rollDice,
                child: const Text('Roll Dice')),
          ],
        ),
      ),
    );
  }
}
