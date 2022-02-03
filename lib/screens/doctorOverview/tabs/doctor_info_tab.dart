import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:willow_care/configs/app_colors.dart';

class DoctorInfoTab extends StatelessWidget {
  final String basicInformation;
  final List<String> certificates;
  const DoctorInfoTab(
      {required this.basicInformation, required this.certificates});
//'assets/icons/infoIcon.svg'
//'Basic Information'
  Widget HeaderInfoBuilder(String iconPath, String title, Function onEditTap) {
    return Container(
        height: 64,
        decoration: BoxDecoration(
            color: AppColors.cardColor, borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
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
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)))
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(24),
        color: AppColors.backgorundColor,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          HeaderInfoBuilder(
              'assets/icons/infoIcon.svg', 'Basic Information', () {}),
          const SizedBox(height: 16),
          Text(
            basicInformation,
            softWrap: true,
            style: const TextStyle(
                color: AppColors.main2TextColor,
                fontSize: 12,
                fontWeight: FontWeight.w300),
          ),
          const SizedBox(height: 24),
          HeaderInfoBuilder('assets/icons/certIcon.svg', 'Certificates', () {}),
          const SizedBox(
            height: 16,
          ),
          Container(
            height: 56,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: certificates
                    .map((c) => Image.asset(
                          c,
                          width: 88,
                          height: 58,
                        ))
                    .toList(),
              ),
            ),
          ),
          const SizedBox(height: 24),
          HeaderInfoBuilder(
              'assets/icons/compIcon1.svg', 'Insurance companies', () {}),
          const SizedBox(
            height: 60,
          ),
          const Text(
            'Romania Company',
            style: TextStyle(
                fontSize: 14,
                color: AppColors.main2TextColor,
                fontWeight: FontWeight.w300),
          ),
          const Text(
            'Romania Co',
            style: TextStyle(
                fontSize: 14,
                color: AppColors.main2TextColor,
                fontWeight: FontWeight.w300),
          ),
        ]),
      ),
    );
  }
}
