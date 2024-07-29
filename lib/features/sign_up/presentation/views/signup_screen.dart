import 'package:flutter/material.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/utils/styles.dart';
import '../../../login/presentation/widgets/custom_buttom.dart';
import '../../../login/presentation/widgets/custom_textfield.dart';
import '../../../login/presentation/widgets/white_container.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                top: screenHeight * 0.105,
                bottom: screenHeight * 0.01,
              ),
              child: SizedBox(
                width: screenWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sign Up',
                      style: Styles().style4(
                        screenHeight: screenHeight,
                        color: AppColors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Enter your details below & free sign up',
                      style: Styles().style18(
                        screenHeight: screenHeight,
                        color: AppColors.mediumGrey,
                      ),
                    ),
                  ],
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
                    SizedBox(height: screenHeight * 0.030),
                    CustomButtom(
                      onTap: (){},
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      text: 'Create account',
                    ),
                    SizedBox(height: screenHeight * 0.030),
                    Row(
                      children: [
                        const Icon(Icons.check_box_outline_blank),
                        SizedBox(width: screenWidth * 0.020),
                        Flexible(
                          child: Text(
                            'By creating an account you have to agree with our them & condication.',
                            style: Styles().style18(
                              screenHeight: screenHeight,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.030),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account? ',
                          style: Styles().style18(screenHeight: screenHeight),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Log In',
                            style: Styles().style18(
                              screenHeight: screenHeight,
                              color: AppColors.blue,
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
