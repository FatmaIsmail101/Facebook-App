import 'package:facebook_app/home_screen/widgets/custom_appbar.dart';
import 'package:facebook_app/home_screen/widgets/new_post_widget.dart';
import 'package:facebook_app/home_screen/widgets/stories_list_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/post_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
static const String routeName="home screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(

slivers: [
  CustomAppbar(),
  SliverToBoxAdapter(child: NewPostWidget()),
  SliverToBoxAdapter(child: StoriesListWidget()),
  SliverToBoxAdapter(child: PostWidget(),)

],

      ),
    );
  }
}
