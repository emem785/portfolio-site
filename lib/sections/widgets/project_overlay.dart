import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../color_pallete.dart';
import '../../routing/route.gr.dart';

class ProjectOverlay extends StatelessWidget {
  final String projectTitle;
  final String projectKey;
  const ProjectOverlay({
    Key? key,
    required this.projectTitle,
    required this.projectKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            projectTitle,
            style: Theme.of(context).textTheme.headline1,
          ),
          const Gap(8),
          ElevatedButton(
            onPressed: () {
              context.pushRoute(ProjectWrapperRoute(title: projectKey));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorPalette.backgroundColor2,
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text("See More"),
                  Gap(4),
                  Icon(
                    Icons.arrow_forward,
                    size: 12.0,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
