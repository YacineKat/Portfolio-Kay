// ignore_for_file: deprecated_member_use, unnecessary_import, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';
import 'area_info_text.dart';
import 'coding.dart';
import 'Services.dart';
import 'my_info.dart';
import 'skills.dart';

final Uri url1 =
    Uri.parse('https://www.linkedin.com/in/yacine-katrouci-32224b29a/');
final Uri url2 = Uri.parse('https://github.com/YacineKat');
final Uri url3 = Uri.parse('https://www.instagram.com/yacine__kay/');
final Uri DownloadCv = Uri.parse(
    'https://drive.usercontent.google.com/u/0/uc?id=1-lGxYxkhCQQ8DYcGXZf4o2F9pMHto1Gq&export=download');

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    const AreaInfoText(
                      title: "City",
                      text: "Mostaganem",
                    ),
                    const AreaInfoText(
                      title: "District",
                      text: "Tijdit",
                    ),
                    const AreaInfoText(
                      title: "Age",
                      text: "21",
                    ),
                    const Skills(),
                    const SizedBox(height: defaultPadding),
                    const Coding(),
                    const Services(),
                    const Divider(),
                    const SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () async {
                        if (!await launchUrl(DownloadCv)) {
                          throw Exception('Could not launch $DownloadCv');
                        }
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .color,
                              ),
                            ),
                            const SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg"),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: defaultPadding),
                      color: const Color(0xFF24242E),
                      child: Row(
                        children: [
                          const Spacer(),
                          IconButton(
                            onPressed: () async {
                              if (!await launchUrl(url1)) {
                                throw Exception('Could not launch $url1');
                              }
                            },
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () async {
                              if (!await launchUrl(url2)) {
                                throw Exception('Could not launch $url2');
                              }
                            },
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: () async {
                              if (await launchUrl(url3)) {
                                throw Exception('Could not launch $url3');
                              }
                            },
                            icon: SizedBox(
                              height: 18,
                              width: 18,
                              child: SvgPicture.asset(
                                  "assets/icons/instagram_dark.svg"),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
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
