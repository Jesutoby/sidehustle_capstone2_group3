

import 'package:flutter/material.dart';
import 'package:sidehustle_capstone2_group3/src/constants/constants.dart';

import 'package:sidehustle_capstone2_group3/src/views/lofi_sign.dart';

class HifiScreen extends StatelessWidget {
  static const id = 'HifiView';
  const HifiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // created an app bar for navigation to the other Lofi screen. it will be removed in the final product.
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          TextButton.icon(
              onPressed: () => Navigator.pushNamed(context, LofiScreen.id),
              icon: const Icon(Icons.arrow_forward_ios_rounded),
              label: const Text('Go to LoFi Screen'))
        ],
      ),
      backgroundColor: kHifiScafoldColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
        
              children: [
                Center(
                  child: CircleAvatar(
                      radius: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.purple, Colors.blue],
                            ),
                          ),
                        ),
                      )),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Email or Username',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const ReusableTextfield(hintText: 'Enter your email or username'),
                //  Password input
               const SizedBox(
                  height: 30,
                ),
               const Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
               const SizedBox(height: 10),
                const ReusableTextfield(
                  hintText: '*****************',
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Theme(
                          child: Checkbox(
                            value: false,
                            onChanged: (value) {},
                          ),
                          data: ThemeData(
                            primarySwatch: Colors.blue,
                            unselectedWidgetColor: Colors.blue, // Your color
                          ),
                        ),
                        const Text(
                          'Remember Me',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    const Text(
                      'Forget Password?',
                      style: TextStyle(fontSize: 15),
                    ),
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
                          EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                    ),
                  ),
                ),

               const SizedBox(
                  height: 20,
                ),

                Center(
                  child: RichText(
                      text: TextSpan(
                          text: 'Don\'t have an account? ',
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                          children: <TextSpan>[
                        TextSpan(
                          text: 'Sign Up',
                          style: TextStyle(
                            color: Colors.blue[800],
                          ),
                        )
                      ])),
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
          borderSide: const BorderSide(color: kOutlineTextfieldBorder),
          borderRadius: BorderRadius.circular(9),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: kOutlineTextfieldBorder, width: 2),
          borderRadius: BorderRadius.circular(9),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: kOutlineTextfieldBorder, width: 2),
          borderRadius: BorderRadius.circular(9),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: kOutlineTextfieldBorder, width: 2),
          borderRadius: BorderRadius.circular(9),
        ),
      ),
    );
  }
}
