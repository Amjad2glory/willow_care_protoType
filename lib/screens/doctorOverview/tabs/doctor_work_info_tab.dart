import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:willow_care/configs/app_colors.dart';

class DoctorWorkInfoTab extends StatelessWidget {
  const DoctorWorkInfoTab({Key? key}) : super(key: key);

  Widget HeaderInfoBuilder(String iconPath, String title, Function onEditTap) {
    return Row(
      children: [
        CircleAvatar(
            backgroundColor: AppColors.lightBlue.withOpacity(0.1),
            child: SvgPicture.asset(
              iconPath,
              width: 16,
            ),
            radius: 32),
        const SizedBox(width: 18),
        Text(title, style: TextStyle(fontSize: 14)),
        Spacer(),
        FlatButton(
            height: 24,
            minWidth: 56,
            color: AppColors.lightBlue.withOpacity(0.1),
            onPressed: () {
              onEditTap();
            },
            child: const Text(
              'edit',
              style: TextStyle(fontSize: 10, color: AppColors.lightBlue),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(24),
        color: AppColors.backgorundColor,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 64,
            decoration: BoxDecoration(
                color: AppColors.cardColor,
                borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  CircleAvatar(
                      backgroundColor: AppColors.lightBlue.withOpacity(0.1),
                      child: SvgPicture.asset(
                        'assets/icons/infoIcon.svg',
                        width: 16,
                      ),
                      radius: 32),
                  SizedBox(width: 18),
                  Text('Clinical Information', style: TextStyle(fontSize: 14)),
                  Spacer(),
                  FlatButton(
                      height: 24,
                      minWidth: 56,
                      color: AppColors.lightBlue.withOpacity(0.1),
                      onPressed: () {},
                      child: Text(
                        'edit',
                        style:
                            TextStyle(fontSize: 10, color: AppColors.lightBlue),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)))
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          const SizedBox(height: 24),
          Container(
            height: 64,
            decoration: BoxDecoration(
                color: AppColors.cardColor,
                borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  CircleAvatar(
                      backgroundColor: AppColors.lightBlue.withOpacity(0.1),
                      child: SvgPicture.asset(
                        'assets/icons/certIcon.svg',
                        width: 16,
                      ),
                      radius: 32),
                  SizedBox(width: 18),
                  Text('Consultation ', style: TextStyle(fontSize: 14)),
                  Spacer(),
                  FlatButton(
                      height: 24,
                      minWidth: 56,
                      color: AppColors.lightBlue.withOpacity(0.1),
                      onPressed: () {},
                      child: Text(
                        'edit',
                        style:
                            TextStyle(fontSize: 10, color: AppColors.lightBlue),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)))
                ],
              ),
            ),
          ),
          SizedBox(height: 24),
        ]),
      ),
    );
  }
}
