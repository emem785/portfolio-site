import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../gen/assets.gen.dart';
import 'widgets/project_banner.dart';

class WorksSection extends StatelessWidget {
  const WorksSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectableText(
          "My Works",
          style: Theme.of(context).textTheme.headline3,
        ),
        ResponsiveRowColumn(
          rowMainAxisAlignment: MainAxisAlignment.center,
          layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          children: [
            ResponsiveRowColumnItem(
              child: ProjectBannerThree(
                assetPath: Assets.png.libertyPay3.path,
                projectTitle: "Liberty Pay",
                projectKey: "libertyPay",
              ),
            ),
            ResponsiveRowColumnItem(
              child: ProjectBannerThree(
                assetPath: Assets.png.beeep3.path,
                projectTitle: "Beeep",
                projectKey: "beeep",
              ),
            ),
          ],
        ),
        ResponsiveRowColumn(
          rowMainAxisAlignment: MainAxisAlignment.center,
          layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          children: [
            ResponsiveRowColumnItem(
              child: ProjectBannerThree(
                assetPath: Assets.png.smartParcel3.path,
                projectTitle: "Smart Parcel",
                projectKey: "smartParcel",
              ),
            ),
            ResponsiveRowColumnItem(
              child: ProjectBannerThree(
                assetPath: Assets.png.whisperSms3.path,
                projectTitle: "WhisperSMS",
                projectKey: "whisperSms",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
