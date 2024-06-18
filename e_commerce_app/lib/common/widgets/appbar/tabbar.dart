// import 'package:e_commerce_app/utils/constants/colors.dart';
// import 'package:e_commerce_app/utils/device/device_utility.dart';
// import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
// import 'package:flutter/material.dart';

// class TTabBar extends StatelessWidget implements PreferredSizeWidget {
//   const TTabBar({super.key, required this.tabs});

//   final List<Widget> tabs;

//   @override
//   Widget build(BuildContext context) {
//     final dark = THelperFunctions.isDarkMode(context);
//     return Material(
//       color: dark ? TColors.black : TColors.white,
//       child: TabBar(
//         tabs: tabs,
//         isScrollable: true,
//         indicatorColor: TColors.primary,
//         labelColor: dark ? TColors.white : TColors.primary,
//         unselectedLabelColor: TColors.darkGrey,
//       ),
//     );
//   }

//   // @override
//   // Size get PreferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
  
//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => throw UnimplementedError();
// }
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? TColors.black : TColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: TColors.primary,
        labelColor: dark ? TColors.white : TColors.primary,
        unselectedLabelColor: TColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
