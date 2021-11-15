import 'package:flutter/material.dart';
import 'package:sidehustle_capstone2_group3/src/constants/constants.dart';
import 'package:sidehustle_capstone2_group3/src/views/hifi_sign_in.dart';

class LofiScreen extends StatelessWidget {
  static const id = 'LofiView';
  const LofiScreen({Key? key}) : super(key: key);

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

            //Sign In Button
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "SIGN IN",
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[700],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
