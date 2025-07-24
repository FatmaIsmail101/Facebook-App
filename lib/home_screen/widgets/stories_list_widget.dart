import 'package:facebook_app/core/assets/app_assets.dart';
import 'package:facebook_app/core/assets/app_strings.dart';
import 'package:facebook_app/core/colors/app_colors.dart';
import 'package:flutter/material.dart';

import '../model/story.dart';

class StoriesListWidget extends StatelessWidget {
  const StoriesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: AppColors.grey, width: 2),
          bottom: BorderSide(color: AppColors.grey, width: 2),
        ),
      ),

      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 18),
        itemCount: Story.story.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (index == 0) {
            return SizedBox(
              width: 130,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(

                  children: [
                    SizedBox(
                      width: 112,
                      height: 124,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children:[ Image.asset(AppAssets.storyProfile,
                        ),
                          Positioned(
                              top: 105,
                              left: 35,
                              child: Container(
                                height: 40,

                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: AppColors.blue,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: AppColors.white,
                                  width: 2)
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Icon(Icons.add,color: AppColors.white,
                                  ),
                                ),

                          )
                          
                          )
                        ]),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(AppStrings.createStory,style: TextStyle(
                        fontSize: 12,color: AppColors.black,
                        fontWeight: FontWeight.w600
                      ),),
                    )
                  ],
                ),
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.only(top: 8.0,bottom: 8),
              child: Stack(
                children: [
                  Image.asset(Story.story[index-1].img,
                  fit: BoxFit.cover,height: double.infinity,),
                  Container(
                      margin: EdgeInsets.only(top: 5,left: 5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,border: Border.all(
                        color: AppColors.blue,width: 1
                      )
                      ),
                      child: CircleAvatar(backgroundImage: AssetImage(Story.story[index-1].profileImg),))
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
