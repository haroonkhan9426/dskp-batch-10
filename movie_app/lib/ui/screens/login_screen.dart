import 'package:flutter/material.dart';
import 'package:movie_app/core/contants/colors.dart';
import 'package:movie_app/core/contants/styles.dart';
import 'package:movie_app/ui/custom_widgets/custom_text_field.dart';
import 'package:movie_app/ui/screens/movies_list_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Logo Icon
            SizedBox(height: 100),
            Center(
              child: Image(
                image: AssetImage('assets/images/movies_icon.png'),
                height: 80,
                width: 60,
              ),
            ),

            Center(
              child: Text(
                'Download Movies',
                style: whiteHeadTextStyle,
              ),
            ),

            SizedBox(height: 90),

            // Email Field
            CustomTextField(
              'Email',
              'Enter email',
              false,
            ),

            SizedBox(height: 30),
            // pasword field
            CustomTextField('Password', 'Enter Password', true),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MoviesListScreen()));
              },
              style: ElevatedButton.styleFrom(primary: secondaryColro),
              child: Text(
                'Login',
                style: whiteHeadTextStyle,
              ),
            ),
            // Login button
          ],
        ),
      ),
    );
  }
}
