import 'package:flutter/material.dart';

class TProductTitleText extends StatelessWidget {
  const TProductTitleText({
    super.key,
    required this.title,
    this.smallSize = false,
    this.maxLines = 2,
    this.textAlign = TextAlign.left,
    this.style, // Add the style parameter
  });

  final String title;
  final bool smallSize;
  final int maxLines;
  final TextAlign? textAlign;
  final TextStyle? style; // Add the style parameter

  @override
  Widget build(BuildContext context) {
    final TextStyle baseStyle = smallSize
        ? Theme.of(context).textTheme.labelLarge!
        : Theme.of(context).textTheme.titleSmall!;

    final TextStyle textStyle = style ?? baseStyle; // Use the provided style or the base style
    return Text(
      title,
      style: textStyle,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}

// class TProductTitleText extends StatelessWidget {
//   const TProductTitleText({
//     super.key,
//     required this.title,
//     this.smallSize = false,
//     this.maxLines = 2,
//     this.textAlign = TextAlign.left,
//   });

//   final String title;
//   final bool smallSize;
//   final int maxLines;
//   final TextAlign? textAlign;

//   @override
//   Widget build(BuildContext context) {
//     final TextStyle baseStyle = smallSize
//         ? Theme.of(context).textTheme.labelLarge!
//         : Theme.of(context).textTheme.titleSmall!;

//     final TextStyle textStyle = baseStyle.copyWith(
//       fontWeight: FontWeight.bold,
//       fontSize: baseStyle.fontSize! + 2.0, // Increase the font size slightly
//     );

//     return Text(
//       title,
//       style: textStyle,
//       overflow: TextOverflow.ellipsis,
//       maxLines: maxLines,
//       textAlign: textAlign,
//     );
//   }
// }
