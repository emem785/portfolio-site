import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_site/project_detail.dart';
import 'package:portfolio_site/sections/header_section.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'sections/contact_section.dart';

class ProjectWrapperPage extends StatefulWidget {
  const ProjectWrapperPage({
    super.key,
    @PathParam("title") required this.title,
  });
  final String title;
  @override
  State<ProjectWrapperPage> createState() => _ProjectWrapperPageState();
}

class _ProjectWrapperPageState extends State<ProjectWrapperPage> {
  @override
  Widget build(BuildContext context) {
    final projectDetails = ProjectDetail.details[widget.title]!;

    final horizontalPadding =
        ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? 40.0 : 250.0;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Column(
              children: [
                const HeaderSection(),
                Image(
                  image: AssetImage(projectDetails.pngAssetPath),
                  fit: BoxFit.scaleDown,
                ),
                const Gap(128),
                SelectableText(
                  projectDetails.title,
                  style: Theme.of(context).textTheme.headline1,
                ),
                const Gap(32),
                SelectableText(
                  projectDetails.description,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                const Gap(64),
                const ContactSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
