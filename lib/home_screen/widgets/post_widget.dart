import 'package:facebook_app/core/assets/app_assets.dart';
import 'package:facebook_app/core/assets/app_strings.dart';
import 'package:facebook_app/core/colors/app_colors.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  PostWidget({super.key});
  List<String> posts = [
    AppAssets.routePost,
    AppAssets.tourist,
    AppAssets.dog,
    AppAssets.sea,
    AppAssets.palmetree,
  ];
  List<String> profilePic = [
    AppAssets.routeProfilePIC,
    AppAssets.model1,
    AppAssets.model2,
    AppAssets.model3,
    AppAssets.model4,
  ];
  List<String> names = [
    AppStrings.user1,
    AppStrings.user2,
    AppStrings.user3,
    AppStrings.user4,
    AppStrings.user5,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.separated(

        itemBuilder: (context, index) => Column(
          children: [
            ListTile(
              leading: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image.asset(profilePic[index], width: 53, height: 53),
              ),
              title: Text(
                names[index],
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Row(
                children: [
                  Text(
                    "8h",
                    style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 7),
                  Icon(Icons.public, color: AppColors.grey, size: 20),
                ],
              ),
              trailing: Icon(Icons.more_horiz, color: AppColors.black),
            ),

            Image.asset(posts[index]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                spacing: 10,
                children: [
                  Icon(Icons.favorite_border, color: AppColors.black),
                  Icon(Icons.comment, color: AppColors.black),
                  Icon(Icons.send, color: AppColors.black),
                  Spacer(),
                  Icon(Icons.bookmark_border_outlined, color: AppColors.black),
                ],
              ),
            ),
          ],
        ),
        separatorBuilder: (context, index) =>
            Divider(color: AppColors.black, thickness: 1),

        itemCount: posts.length,
      ),
    );
  }
}
