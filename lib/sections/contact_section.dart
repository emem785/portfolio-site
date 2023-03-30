import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_site/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

import '../gen/assets.gen.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          Assets.svg.logoInt,
          height: 50,
        ),
        const Gap(8),
        const SelectableText(
          "If you liked my work and you need me, I'm ready to talk to you.",
        ),
        const Gap(32),
        SelectableText(
          "Сontacts",
          style: Theme.of(context).textTheme.headline3,
        ),
        ContactTile(
          onTap: () {},
          contactField: "ememisong62@gmail.com",
          svgPath: Assets.svg.contactMail1,
        ),
        ContactTile(
          onTap: () async {
            if (!await launchUrl(Constants.githubLink)) {
              print('Could not launch ${Constants.githubLink}');
            }
          },
          contactField: "emem785",
          svgPath: Assets.svg.contactGithub1,
        ),
      ],
    );
  }
}

class ContactTile extends StatelessWidget {
  final String contactField;
  final String svgPath;
  final Function() onTap;

  const ContactTile({
    Key? key,
    required this.svgPath,
    required this.contactField,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            const Gap(8),
            SvgPicture.asset(
              svgPath,
              height: 30,
            ),
            const Gap(16),
            SelectableText(contactField),
          ],
        ),
      ),
    );
  }
}
