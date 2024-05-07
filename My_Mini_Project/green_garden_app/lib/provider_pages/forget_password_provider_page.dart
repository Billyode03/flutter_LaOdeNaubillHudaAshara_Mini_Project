import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/icon_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';
import 'package:green_garden/provider/forget_password_provider.dart';
import 'package:green_garden/provider_pages/login_provider_page.dart';
import 'package:green_garden/widgets/reusableButtonSubmit.dart';
import 'package:green_garden/widgets/reusableTextField.dart';
import 'package:provider/provider.dart';

class ForgetPassPageProvider extends StatefulWidget {
  const ForgetPassPageProvider({super.key});

  @override
  State<ForgetPassPageProvider> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPassPageProvider> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ForgetPassProvider(),
      child: Consumer<ForgetPassProvider>(
          builder: (context, forgetPassProvider, _) => Scaffold(
                backgroundColor: ColorPlants.backgroundColor,
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Image.asset(
                          'assets/forgetPic.png',
                        ),
                      ),
                      SizedBox(
                        height: 120,
                      ),
                      Text(
                        'Forgot Password',
                        style: TextStyleUsable.interLogin,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          'Enter Your Email and we will send you a password reset link',
                          style: TextStyleUsable.interRegular,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: ReusableWidgetTextField(
                          controller: forgetPassProvider.emailController,
                          hintText: 'Email',
                          prefixIcon: IconConstant.emailIcon,
                          enable: true,
                          obscureText: false,
                          onChanged: (String value) {
                            forgetPassProvider.setEmail(value);
                          },
                          errorText: forgetPassProvider.errorEmail,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        height: 120,
                      ),
                      Center(
                        child: ReusableButtonSubmit(
                          onTap: () {
                            forgetPassProvider.passwordReset(context);
                          },
                          text: 'ٌReset Password',
                          textStyle: TextStyleUsable.interButton,
                          bgColor: ColorPlants.whiteSkull,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Remember your account ? ",
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
              )),
    );
  }
}
