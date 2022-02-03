//ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:willow_care/configs/app_colors.dart';

class DoctorOverviewAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final double height;

  const DoctorOverviewAppBar({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          color: AppColors.mainBlue,
          height: MediaQuery.of(context).viewPadding.top,
          width: double.infinity),
      Container(
          height: height,
          color: AppColors.mainBlue,
          child: Row(
            children: [
              IconButton(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: SvgPicture.asset(
                    'assets/icons/backArrow.svg',
                    height: 24,
                    width: 24,
                  )),
              Spacer(),
              IconButton(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icons/calendar1.svg',
                    height: 24,
                    width: 24,
                  )),
              IconButton(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icons/Alert.svg',
                    height: 20,
                    width: 20,
                  )),
            ],
          )),
    ]);
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
