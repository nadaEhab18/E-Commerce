import 'package:flutter/material.dart';
import 'package:register_page/features/screens/login_screen.dart';

import '../widgets/custome_textField.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isObscureText = true ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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

              // Create an new account text
              Text(
                'Create an new account',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xff9098B1),
                ),
              ),
              SizedBox(height: 10,),

              // full name text field
              CustomeTexeField(
                hint: 'Your password',
                icon: Icons.account_box_rounded,

              ),
              SizedBox(height: 10,),

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
                        isObscureText = !isObscureText ;
                      });
                    },
                    icon: isObscureText ? Icon(Icons.visibility_off) : Icon(Icons.visibility)),
              ),
              SizedBox(height: 10,),

              // password again text field
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
                        isObscureText = !isObscureText ;
                      });
                    },
                    icon: isObscureText ? Icon(Icons.visibility_off) : Icon(Icons.visibility)),
              ),
              SizedBox(height: 10,),

              // sign up button
              SizedBox(
                height: 50,
                 width: MediaQuery.of(context).size.width * 0.5,
                //width: 350,
                child: ElevatedButton(
                    child: Text('Sign up'),
                    onPressed: () {
                      print('Hello you are signed up ');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff40BFFF),
                      shadowColor: Color(0xff40BFFF).withOpacity(0.24),
                    )),
              ),

              SizedBox(height: 10,),
              //  have account text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('have a account? ',
                    style: TextStyle(
                      color: Color(0xff9098B1),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: Text('sign in',
                      style: TextStyle(
                        color: Color(0xff40BFFF),
                      ),),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
