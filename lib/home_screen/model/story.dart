import 'package:facebook_app/core/assets/app_assets.dart';

class Story{
  String img;
  String profileImg;

  Story({required this.profileImg,required this.img});

  static List <Story>story=[
    Story(profileImg: AppAssets.avaterStory1, img: AppAssets.story1),
    Story(profileImg: AppAssets.avaterStory2, img: AppAssets.story2),
    Story(profileImg: AppAssets.avaterStory1, img: AppAssets.story1),
    Story(profileImg: AppAssets.avaterStory2, img: AppAssets.story2),
    Story(profileImg: AppAssets.avaterStory1, img: AppAssets.story1),
    Story(profileImg: AppAssets.avaterStory2, img: AppAssets.story2),
    Story(profileImg: AppAssets.avaterStory2, img: AppAssets.story2),
    Story(profileImg: AppAssets.avaterStory1, img: AppAssets.story1),
    Story(profileImg: AppAssets.avaterStory1, img: AppAssets.story1),
    Story(profileImg: AppAssets.avaterStory2, img: AppAssets.story2),Story(profileImg: AppAssets.avaterStory1, img: AppAssets.story1),
    Story(profileImg: AppAssets.avaterStory2, img: AppAssets.story2),Story(profileImg: AppAssets.avaterStory1, img: AppAssets.story1),
    Story(profileImg: AppAssets.avaterStory2, img: AppAssets.story2),Story(profileImg: AppAssets.avaterStory1, img: AppAssets.story1),
    Story(profileImg: AppAssets.avaterStory2, img: AppAssets.story2),Story(profileImg: AppAssets.avaterStory1, img: AppAssets.story1),
    Story(profileImg: AppAssets.avaterStory2, img: AppAssets.story2),

  ];
}