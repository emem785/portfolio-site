import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_site/routing/route.gr.dart';

import '../gen/assets.gen.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          InkWell(
            onTap: () {
              if (context.router.current.name != MyHomeRoute.name) {
                context.router.pop();
              }
            },
            child: SvgPicture.asset(
              Assets.svg.logoInt,
              height: 50,
              fit: BoxFit.contain,
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: Text('Contact Me'),
            ),
          )
        ],
      ),
    );
  }
}
