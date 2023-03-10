import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../gen/assets.gen.dart';

class SummarySection extends StatelessWidget {
  const SummarySection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(Assets.svg.icon),
        const SelectableText(
          "As a mobile developer with over three years of experience, I specialize in using Flutter to create innovative and high-quality products. My expertise in Flutter has allowed me to deliver solutions that are fast, smooth, and visually appealing. ",
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
