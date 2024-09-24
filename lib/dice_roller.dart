import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    // we execute the constructor func of the state class
    return _DiceRollerState();
  }
}

// underscore means private
class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-images/dice-3.png';

//rollDice function
  void rollDice() {
    // print('Button pressed');
    setState(() {
      // random number generator
      final randomNumber = (1 +
              (6 * (DateTime.now().microsecondsSinceEpoch % 1000000) / 1000000))
          .floor();
      activeDiceImage = 'assets/images/dice-images/dice-$randomNumber.png';
    });
    // activeDiceImage = 'assets/images/dice-images/dice-4.png';
  }

// separate out the dice roller into stateful is not enough, since flutter wont automatically rebuild the widget with the new UI
  @override
  Widget build(context) {
    return Column(
      // mainAxisSize: MainAxisSize.min, to make the column as small as possible
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
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
    );
  }
}
