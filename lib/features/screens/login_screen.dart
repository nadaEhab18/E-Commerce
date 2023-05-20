import 'package:flutter/material.dart';
import 'package:register_page/features/screens/home_screen.dart';
import 'package:register_page/features/screens/register_screen.dart';

import '../widgets/custome_textField.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: heightScreen * 0.05,
              ),
              // image
              Image.asset(
                'assets/images/logo.png',
                height: 72,
                width: 72,
              ),
              SizedBox(
                height: 10,
              ),

              // welcome text
              Text(
                'Welcome to lafyuu',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xff223263),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              // sign in text
              Text(
                'Sign in to continue',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xff9098B1),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              // email text field
              CustomeTexeField(
                hint: 'Your email',
                icon: Icons.email_outlined,
              ),

              // password text field
              CustomeTexeField(
                hint: 'Your password',
                icon: Icons.lock_outline,
                obscureText: isObscureText,
                suffixIcon: IconButton(
                    onPressed: () {
                      // on click
                      // visibility off to on
                      // obscure text from true to false

                      setState(() {
                        // if(isObscureText){
                        //   isObscureText = false;
                        // }else{
                        //   isObscureText = true;
                        // }
                        isObscureText = !isObscureText;
                      });
                    },
                    icon: isObscureText
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility)),
              ),
              SizedBox(
                height: 10,
              ),

              // sign in button
              SizedBox(
                height: 50,
                // width: MediaQuery.of(context).size.width * 0.5,
                width: 350,
                child: ElevatedButton(
                    child: Text('Sign in'),
                    onPressed: () {
                      print('Hello you are signed in ');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff40BFFF),
                      shadowColor: Color(0xff40BFFF).withOpacity(0.24),
                    )),
              ),

              SizedBox(
                height: 12,
              ),

              // or
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 1,
                    // width: MediaQuery.of(context).size.width,
                    width: 140,
                    color: Colors.grey,
                  ),
                  Text('Or'),
                  Container(
                    height: 1,
                    // width: MediaQuery.of(context).size.width,
                    width: 140,
                    color: Colors.grey,
                  ),
                ],
              ),

              SizedBox(
                height: 12,
              ),

              // login in with google
              Container(
                width: 350,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffE5E5E5),
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/images/google.png',
                    height: 20,
                  ),
                  label: Text(
                    'Login with Google',
                    style: TextStyle(
                      color: Color(0xff9098B1),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 12,
              ),

              // login in with facebook
              Container(
                width: 350,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffE5E5E5),
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.facebook,
                    color: Color(0xff4092FF),
                  ),
                  label: Text(
                    'Login with facebook',
                    style: TextStyle(
                      color: Color(0xff9098B1),
                    ),
                  ),
                ),
              ),

              // forget password text clickable
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Color(0xff40BFFF),
                  ),
                ),
              ),

              // don’t have account text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have a account? ',
                    style: TextStyle(
                      color: Color(0xff9098B1),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Color(0xff40BFFF),
                      ),
                    ),
                  )
                ],
              ),
              // TextButton(
              //   onPressed: () {},
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                // ),
                child: Text(
                  'Home',
                  style: TextStyle(
                    color: Color(0xff40BFFF),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
