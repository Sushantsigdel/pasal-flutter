import 'package:flutter/material.dart';
import 'package:pasal/utils/constants/colors.dart';

class PSectionHeading extends StatelessWidget {
  const PSectionHeading(
      {super.key,
      this.textColor = PColors.white,
      this.showActionButton = true,
      required this.title,
      this.buttonTitle = 'View All',
      this.onPressed});

  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Popular Categories',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(onPressed: () {}, child: Text(buttonTitle))
      ],
    );
  }
}
