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
      //created an app bar for navigation to the other Hifi screen. it will be removed in the final product.
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: kLoFiStaticColor,
                    child: Text(
                      'LOGO',
                      style: TextStyle(
                        letterSpacing: 4,
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Email or Username',
                  style: TextStyle(
                      color: kLoFiStaticColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),

                const ReusableTextfield(
                    hintText: 'Enter your email or username'),
                //  Password input
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Password',
                  style: TextStyle(
                    color: kLoFiStaticColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const ReusableTextfield(
                  hintText: '*****************',
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                    const Text(
                      'Remebmber me',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    const Text('Forget Password?'),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),

                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: kLoFiStaticColor,
                        shape: const StadiumBorder()),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                Center(
                  child: RichText(
                    text: const TextSpan(
                      text: 'Don\'t have an account? ',
                      style: TextStyle(
                          color: kLoFiStaticColor, fontWeight: FontWeight.w500),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Sign Up',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ReusableTextfield extends StatelessWidget {
  final String hintText;

  const ReusableTextfield({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.visiblePassword,
      style: const TextStyle(color: Colors.black87),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: kLoFiStaticColor,
        ),
        prefix: const SizedBox(
          width: 15,
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: kLoFiStaticColor),
          borderRadius: BorderRadius.circular(9),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kLoFiStaticColor, width: 3),
          borderRadius: BorderRadius.circular(9),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kLoFiStaticColor, width: 3),
          borderRadius: BorderRadius.circular(9),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kLoFiStaticColor, width: 3),
          borderRadius: BorderRadius.circular(9),
        ),
      ),
    );
  }
}
