import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:willow_care/configs/app_colors.dart';

class DoctorInfoCard extends StatelessWidget {
  final String doctorName;
  final String description;
  final String imageUrl;
  final String date;
  final bool isConfirmed;
  final Function onTap;
  DoctorInfoCard(
      {required this.doctorName,
      required this.imageUrl,
      required this.description,
      required this.date,
      required this.isConfirmed,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Card(
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Container(
          height: 230,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 26),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Container(
                    height: 48,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(doctorName,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: AppColors.main2TextColor)),
                            Text(description,
                                style: TextStyle(
                                    color: AppColors.main2TextColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300))
                          ],
                        ),
                        CircleAvatar(
                          radius: 24,
                          backgroundImage: AssetImage(imageUrl),
                        )
                      ],
                    ),
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/noun_date_1757903.svg',
                        width: 13,
                        height: 13,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 156,
                        child: Text(date,
                            style: TextStyle(fontSize: 12, color: Colors.grey)),
                      ),
                      Spacer(),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 3.5,
                              backgroundColor:
                                  isConfirmed ? Colors.green : Colors.red,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                isConfirmed ? 'Confirmed' : 'Unconfirmed',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      FlatButton(
                          height: 40,
                          minWidth: 156,
                          onPressed: () {},
                          color: AppColors.mainBlue,
                          child: Text('Start examinaation',
                              style: TextStyle(color: Colors.white))),
                      Spacer(),
                      FlatButton(
                          height: 40,
                          minWidth: 100,
                          onPressed: () {},
                          color: AppColors.lightBlue.withOpacity(0.1),
                          child: Text('Reshedule',
                              style: TextStyle(color: AppColors.lightBlue)))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
