import 'package:flutter_between_the_lines/src/pages/book_description/book_description_view.dart';
import 'package:flutter_between_the_lines/src/pages/favorite/favorite_view.dart';
import 'package:flutter_between_the_lines/src/pages/home/home_view.dart';
import 'package:flutter_between_the_lines/src/pages/search/search_view.dart';
import 'package:flutter_between_the_lines/src/pages/user/user_view.dart';
import 'package:flutter_between_the_lines/src/pages/user_profile/user_profile_view.dart';
import 'package:flutter_between_the_lines/src/pages/video_player/video_player_view.dart';
import 'package:get/get.dart';

import 'app_router_map_values.dart';

class AppRouter {
  static final page = [
    GetPage(name: AppRouterMapValues.HomePage, page: () => HomePage()),
    GetPage(name: AppRouterMapValues.SearchPage, page: () => SearchPage()),
    GetPage(name: AppRouterMapValues.FavoritePage, page: () => FavoritePage()),
    GetPage(name: AppRouterMapValues.UserPage, page: () => UserPage()),
    GetPage(name: AppRouterMapValues.BookDescriptionPage, page: () => BookDescriptionPage()),
    GetPage(name: AppRouterMapValues.VideoPlayerPage, page: () => VideoPlayerPage()),
    GetPage(name: AppRouterMapValues.UserProfilePage, page: () => UserProfilePage()),
  ];
}
