import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/icon_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';
import 'package:green_garden/provider/register_provider.dart';
import 'package:green_garden/provider_pages/login_provider_page.dart';
import 'package:green_garden/widgets/reusableButtonSubmit.dart';
import 'package:green_garden/widgets/reusableTextField.dart';
import 'package:provider/provider.dart';

class RegisterPageProvider extends StatelessWidget {
  const RegisterPageProvider({super.key, required this.toLoginPage});

  final VoidCallback toLoginPage;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RegisterProvider(), // Inisialisasi LoginProvider
      child: Consumer<RegisterProvider>(
        builder: (context, registerProvider, _) => Scaffold(
          backgroundColor: ColorPlants.backgroundColor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    'assets/regisPic.png',
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Register',
                  style: TextStyleUsable.interLogin,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Create Your Account',
                  style: TextStyleUsable.interRegular,
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: ReusableWidgetTextField(
                    controller: registerProvider.emailController,
                    hintText: 'Email',
                    prefixIcon: IconConstant.emailIcon,
                    enable: true,
                    obscureText: false,
                    onChanged: (String value) {
                      registerProvider.setName(value);
                    },
                    errorText: registerProvider.errorName,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: ReusableWidgetTextField(
                    controller: registerProvider.passwordController,
                    hintText: 'Password',
                    prefixIcon: IconConstant.passwordIcon,
                    enable: true,
                    obscureText: true,
                    onChanged: (String value) {
                      registerProvider.setPass(value);
                    },
                    errorText: registerProvider.errorPass,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: ReusableWidgetTextField(
                    controller: registerProvider.confirmPassController,
                    hintText: 'Confirm Password',
                    prefixIcon: IconConstant.passwordIcon,
                    enable: true,
                    obscureText: true,
                    onChanged: (String value) {
                      registerProvider.setPassConfirm(value);
                    },
                    errorText: registerProvider.errorConfirmPass,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    'By registering, your are agreeing to our terms of use and Privaci Policy',
                    style: TextStyleUsable.interRegular,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Center(
                  child: ReusableButtonSubmit(
                      onTap: () {
                        registerProvider.signUp(context);
                      },
                      text: 'Sign Up',
                      textStyle: TextStyleUsable.interButton,
                      bgColor: ColorPlants.whiteSkull),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account ? ",
                      style: TextStyleUsable.interRegular,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPageProvider(
                              toRegisterPage: () {},
                            ),
                          ),
                        );
                      },
                      child: Text(
                        'Sign in',
                        style: TextStyleUsable.interRegularTwo,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
