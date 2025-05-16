import 'package:cars/core/constants/named_routes.dart';
import 'package:cars/core/dialog.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class PopMenuButtons extends StatelessWidget {
  const PopMenuButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      margin: EdgeInsets.only(top: 22.h),
      child: PopupMenuButton<String>(
        shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.only(topLeft: Radius.elliptical(30, 30))),
        menuPadding: EdgeInsets.all(5.w),
        elevation: 0.0,
        color: Colors.white,
        icon: Icon(
          Icons.more_horiz,
          color: Colors.white,
          size: 28.w,
        ),
        onSelected: (value) async {
          if (value == 'privacy') {
            Navigator.pushNamed(context, Routes.privacyAndPolicy);
          } else if (value == 'contact') {
            final Uri url = Uri.parse("https://wa.me/963939140515");
            if (await canLaunchUrl(url)) {
              await launchUrl(url, mode: LaunchMode.externalApplication);
            } else {
              showDialogs(context);
            }
          }
        },
        itemBuilder: (BuildContext context) => [
          PopupMenuItem(
            value: 'contact',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  EvaIcons.phone,
                  color: Colors.grey,
                ),
                Text(
                  "تواصل معنا",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey[700]),
                ),
              ],
            ),
          ),
          PopupMenuItem(
            value: 'privacy',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.privacy_tip,
                  color: Colors.grey,
                ),
                Text(
                  "سياسة الخصوصية",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey[700]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
