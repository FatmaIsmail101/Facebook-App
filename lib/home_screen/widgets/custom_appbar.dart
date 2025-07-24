import 'package:facebook_app/core/assets/app_assets.dart';
import 'package:facebook_app/core/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: false,
      title: Image.asset(AppAssets.facebook, width: 156, height: 36),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.add_circle_rounded, color: AppColors.black),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search, color: AppColors.black),
        ),
        IconButton(
          onPressed: () {},
          icon: ImageIcon(AssetImage(AppAssets.messenger)),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: Size(0, 55),
        child: DefaultTabController(
          length: 6,
          child: TabBar(
            indicatorColor: AppColors.blue,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: AppColors.blue,
            unselectedLabelColor: AppColors.grey,

            tabs: [
              Tab(child: Icon(Iconsax.home_1_bold)),
              Tab(child: Icon(Iconsax.youtube_bold)),
              Tab(child: Icon(Iconsax.shop_bold)),
              Tab(child: Icon(Iconsax.profile_circle_bold)),
              Tab(child: Icon(Iconsax.notification_bold)),
              Tab(child: ImageIcon(AssetImage(AppAssets.profilePIC))),
            ],
          ),

        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(0, 100);
}
