import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../gen/assets.gen.dart';

class PotraitSection extends StatelessWidget {
  const PotraitSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Assets.svg.flutterCode,
      fit: BoxFit.contain,
      height: 300,
    );
  }
}
