import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/utils/styles.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.title,
  });

  final double screenHeight;
  final double screenWidth;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: screenHeight * 0.010,
        left: screenWidth * 0.010,
      ),
      child: ListTile(
        leading: Text(
          title,
          style: Styles().style2(
            screenHeight: screenHeight,
            fontWeight: FontWeight.w500,
            color: AppColors.black,
          ),
        ),
        trailing: SizedBox(
          height: screenHeight * 0.05,
          width: screenWidth * 0.05,
          child: SvgPicture.asset(
            'assets/images/arrow_eye.svg',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
