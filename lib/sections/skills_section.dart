import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../color_pallete.dart';
import '../gen/assets.gen.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectableText(
          "My Skills",
          style: Theme.of(context).textTheme.headline3,
        ),
        const Gap(32),
        ResponsiveRowColumn(
          rowMainAxisAlignment: MainAxisAlignment.center,
          layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          children: [
            ResponsiveRowColumnItem(
              child: ResponsiveRowColumn(
                layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
                    ? ResponsiveRowColumnType.COLUMN
                    : ResponsiveRowColumnType.ROW,
                rowMainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ResponsiveRowColumnItem(
                      child: SkillCard(
                    skillName: "Flutter",
                    svgPath: Assets.svg.bxlFlutter,
                  )),
                  ResponsiveRowColumnItem(
                      child: SkillCard(
                    skillName: "Android",
                    svgPath: Assets.svg.icSharpAndroid,
                  )),
                  ResponsiveRowColumnItem(
                      child: SkillCard(
                    skillName: "IOS",
                    svgPath: Assets.svg.icRoundApple,
                  )),
                ],
              ),
            ),
            ResponsiveRowColumnItem(
              child: SkillCard(
                skillName: "Git",
                svgPath: Assets.svg.mdiGit,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class SkillCard extends StatelessWidget {
  final String skillName;
  final String svgPath;
  const SkillCard({
    Key? key,
    required this.skillName,
    required this.svgPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorPalette.backgroundLightColor,
        ),
        width: ResponsiveWrapper.of(context).isSmallerThan(TABLET) ? 300 : 150,
        height: ResponsiveWrapper.of(context).isSmallerThan(TABLET) ? 50 : 200,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: ResponsiveRowColumn(
            layout: ResponsiveWrapper.of(context).isLargerThan(MOBILE)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            rowCrossAxisAlignment: CrossAxisAlignment.center,
            columnMainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ResponsiveRowColumnItem(child: Gap(16)),
              ResponsiveRowColumnItem(
                child: SvgPicture.asset(
                  svgPath,
                  height: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
                      ? 40
                      : 80,
                ),
              ),
              const ResponsiveRowColumnItem(child: Gap(8)),
              ResponsiveRowColumnItem(child: Text(skillName)),
            ],
          ),
        ),
      ),
    );
  }
}
