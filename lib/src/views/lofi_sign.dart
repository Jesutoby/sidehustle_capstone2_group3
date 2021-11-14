import 'package:flutter/material.dart';
import 'package:sidehustle_capstone2_group3/src/constants/constants.dart';
import 'package:sidehustle_capstone2_group3/src/views/hifi_sign_in.dart';

class LofiScreen extends StatelessWidget {
  static const id = 'LofiView';
  const LofiScreen({Key? key}) : super(key: key);

  final bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // created an app bar for navigation to the other Hifi screen. it will be removed in the final product.
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: TextButton.icon(
          onPressed: () => Navigator.pushNamed(context, HifiScreen.id),
          icon: const Icon(Icons.arrow_back_ios, color: Colors.blue),
          label: const Text('Go to HiFi Screen'),
        ),
      ),
      backgroundColor: kLofiScafoldColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // All OUR WIDGETS WILL GO IN HERE

            const SizedBox(
              width: 30,
            ),
            Row(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Checkbox(
                        value: isChecked,
                        onChanged: (bool? newValue) {
                          // setState(() {
                          //   isChecked = newValue!;
                          // });
                        }),
                    const Text(
                      'Remember Me',
                    ),
                  ],
                ),
                const SizedBox(
                  width: 150,
                ),
                const Text('Forget Password?'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
