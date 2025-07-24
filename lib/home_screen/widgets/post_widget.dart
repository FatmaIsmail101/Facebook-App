import 'package:facebook_app/core/assets/app_assets.dart';
import 'package:facebook_app/core/colors/app_colors.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.separated(
          itemBuilder: (context,index)=>Column(
            children: [
             ListTile(
               leading: Image.asset(AppAssets.routeProfilePIC,width: 53,height: 53,)
               ,
             )
            ],
          ),
          separatorBuilder: (context,index)=>
          Divider(
            color: AppColors.black,thickness: 1,
          ),

          itemCount: 20),
    );
  }
}
