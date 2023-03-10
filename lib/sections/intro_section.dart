import 'package:flutter/material.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          'Emem Isong',
          style: Theme.of(context).textTheme.headline1,
        ),
        SelectableText(
          'Flutter Developer',
          style: Theme.of(context).textTheme.headline2,
        ),
        const SelectableText(
          'Flutter developer looking for ideas to bring to life',
        ),
      ],
    );
  }
}
