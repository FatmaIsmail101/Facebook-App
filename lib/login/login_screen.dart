import 'package:facebook_app/core/assets/app_assets.dart';
import 'package:facebook_app/core/assets/app_strings.dart';
import 'package:facebook_app/core/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});
  static const String routeName = 'login screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool visible = false;

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children:[ ListView(physics: ClampingScrollPhysics(),
            padding: EdgeInsets.all(16),
            children: [
              SizedBox(height: 200, child: Image.asset(AppAssets.loginLogo)),
              SizedBox(height: 20),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: emailValidator,
                controller: emailController,
                decoration: InputDecoration(
                  hintText: AppStrings.emailHintText,
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: AppColors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.grey, width: 1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.grey, width: 1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: passwordValidator,
                obscureText: visible,
                obscuringCharacter: "*",
                controller: passwordController,
                decoration: InputDecoration(
                  suffixIcon: Bounceable(
                    onTap: () {
                      visible = !visible;
                      setState(() {});
                    },
                    child: Icon(
                      visible ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                  hintText: AppStrings.passwordHintText,
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: AppColors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.grey, width: 1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.grey, width: 1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              SizedBox(height: 50),
              FilledButton(
                style: FilledButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  foregroundColor: AppColors.white,
                  backgroundColor: AppColors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),

                onPressed: () {
                  //todo:login logic
                },
                child: Text(
                  AppStrings.login,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),

              SizedBox(height: 20,),
              Text(AppStrings.forgetPassword,textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.grey,fontSize: 16,
                fontWeight: FontWeight.w500
              ),)
            ],
          ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 16,horizontal: 8),
                        backgroundColor: AppColors.white,
                        foregroundColor: AppColors.blue,
                side: BorderSide(color: AppColors.grey,width: 1)

               , shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),

                        )
                      ),

                      onPressed: (){}, child:Text(AppStrings.createAccount) ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Image.asset(
                        height: 40,
                        width: 98,
                        AppAssets.metaLogo)
                  ],)
                ],
              ),
            )
          ]),
      ),
    );
  }

  String? emailValidator(String? value) {
    if (RegExp(
      r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$',
    ).hasMatch(value!)) {
      return null;
    } else {
      return AppStrings.invalidEmail;
    }
  }

  String? passwordValidator(String? value) {
    if (value!.length < 8) {
      return AppStrings.invalidPasswordLength;
    }

    if (RegExp(
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$',
    ).hasMatch(value!)) {
      return null;
    } else {
      return AppStrings.invalidPassword;
    }
  }
}
