import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UpcomingTab extends StatelessWidget {
  const UpcomingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 50),
          child: SvgPicture.asset(
            'assets/images/NoAvailableBooking.svg',
            width: 232,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'No Available Bookings',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
