import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: camel_case_types
class MainBottomNavigationBar extends StatelessWidget {
  const MainBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  Widget NavBarItemBuilder(String iconUrl, String title) {
    return IconButton(
      enableFeedback: false,
      onPressed: () {},
      icon: Column(children: [
        SvgPicture.asset(
          iconUrl,
          width: 28,
          height: 28,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 10),
        )
      ]),
      iconSize: 46,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Card(
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Container(
          width: 228,
          height: 74,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavBarItemBuilder('assets/images/Home.svg', 'home'),
              NavBarItemBuilder('assets/images/Calendar.svg', 'schedule'),
              NavBarItemBuilder(
                  'assets/images/Iconly-Light-Chat.svg', 'messages'),
              IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: Column(children: [
                  Icon(
                    Icons.more_horiz_outlined,
                    size: 28,
                    color: Colors.grey,
                  ),
                  Text(
                    'more',
                    style: TextStyle(fontSize: 10),
                  )
                ]),
                iconSize: 46,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
