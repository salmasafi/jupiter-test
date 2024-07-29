import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/services/auth_service.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/utils/styles.dart';
import '../../../profile/presentation/views/profile_screen.dart';
import '../../../sign_up/presentation/views/signup_screen.dart';
import '../widgets/custom_buttom.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/white_container.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.05,
                right: screenWidth * 0.05,
                top: screenHeight * 0.07,
                bottom: screenHeight * 0.028,
              ),
              child: SizedBox(
                height: screenHeight * 0.1,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Log In',
                    style: Styles().style4(
                      screenHeight: screenHeight,
                      color: AppColors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            WhiteBorderRadiusContainer(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: screenHeight * 0.04,
                  horizontal: screenWidth * 0.06,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Your Email',
                        style: Styles().style18(screenHeight: screenHeight),
                      ),
                    ),
                    CustomTextField(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      hintText: 'Cooper_Kristin@gmail.com',
                    ),
                    SizedBox(height: screenHeight * 0.032),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Password',
                        style: Styles().style18(screenHeight: screenHeight),
                      ),
                    ),
                    CustomTextField(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      hintText: '***************',
                      obscureText: true,
                    ),
                    SizedBox(height: screenHeight * 0.020),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forget password?',
                        style: Styles().style18(screenHeight: screenHeight),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.020),
                    CustomButtom(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfileScreen(),
                          ),
                        );
                      },
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      text: 'Log In',
                    ),
                    SizedBox(height: screenHeight * 0.030),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account? ',
                          style: Styles().style18(screenHeight: screenHeight),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignupScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Sign up',
                            style: Styles().style18(
                              screenHeight: screenHeight,
                              color: AppColors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.025),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: screenWidth * 0.22,
                          child: const Divider(
                            thickness: 1,
                            color: AppColors.mediumGrey,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.03,
                          ),
                          child: Text(
                            'Or login with',
                            style: Styles().style16(screenHeight: screenHeight),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.22,
                          child: const Divider(
                            thickness: 1,
                            color: AppColors.mediumGrey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.032),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: (){
                            AuthService().signInWithGoogle(context);
                          },
                          child: SizedBox(
                            height: screenHeight * 0.06,
                            width: screenHeight * 0.06,
                            child: Image.asset(
                              'assets/images/google_logo.svg.png',
                            ),
                          ),
                        ),
                        GestureDetector(
                          child: SizedBox(
                            height: screenHeight * 0.058,
                            width: screenHeight * 0.058,
                            child: SvgPicture.asset(
                              'assets/images/facebook_logo.svg',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
