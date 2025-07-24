import 'package:facebook_app/core/assets/app_assets.dart';
import 'package:facebook_app/core/assets/app_strings.dart';
import 'package:facebook_app/core/colors/app_colors.dart';
import 'package:flutter/material.dart';

class NewPostWidget extends StatelessWidget {
  const NewPostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(AppAssets.profilePIC),
          ),
          Text(AppStrings.newPost,style: TextStyle(fontSize: 16,
          color: AppColors.grey,fontWeight: FontWeight.w400),),
          Spacer(),
          Image.asset(AppAssets.photos,color: Color(0xff0DE571),)
        ],
      ),
    );
  }
}
