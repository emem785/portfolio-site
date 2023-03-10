import 'package:flutter/material.dart';

import 'project_overlay.dart';

class ProjectBannerThree extends StatelessWidget {
  final String projectTitle;
  final String assetPath;
  final String projectKey;
  const ProjectBannerThree({
    Key? key,
    required this.assetPath,
    required this.projectTitle,
    required this.projectKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final showContainer = ValueNotifier(false);
    return MouseRegion(
      onEnter: (event) => showContainer.value = true,
      onExit: (event) => showContainer.value = false,
      cursor: SystemMouseCursors.click,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Stack(
          children: [
            SizedBox(
              height: 300,
              child: Image(image: AssetImage(assetPath)),
            ),
            ValueListenableBuilder<bool>(
              valueListenable: showContainer,
              builder: (_, show, __) {
                return show
                    ? ProjectOverlay(
                        projectTitle: projectTitle,
                        projectKey: projectKey,
                      )
                    : const SizedBox();
              },
            )
          ],
        ),
      ),
    );
  }
}
