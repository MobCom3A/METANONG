import 'package:get/get.dart';
import 'package:metanong/providers/inbox_provider.dart';
import 'package:metanong/screens/auth/signup.dart';
import 'package:metanong/screens/main/home.dart';

import 'package:metanong/screens/main/wrapper.dart';
import 'package:metanong/screens/splash.dart';

import 'package:provider/provider.dart';

import '../screens/auth/signin.dart';
import '../screens/main/inbox.dart';
import '../screens/main/notifications.dart';
import '../screens/main/profile.dart';
import '../screens/main/search.dart';

class RoutingPages {
  List<GetPage<dynamic>> pages = [
    GetPage(
      name: '/splashpage',
      page: () => const SplashPage(),
    ),
    GetPage(
      name: '/signinpage',
      page: () => const SignInPage(),
    ),
    GetPage(
      name: '/signuppage',
      page: () => const SignUpPage(),
    ),
    GetPage(
      name: '/wrapper',
      page: () => WrapperManager(),
    ),
    GetPage(
      name: '/homepage',
      page: () => const HomePage(),
    ),
    GetPage(
      name: '/profilepage',
      page: () => const ProfilePage(),
    ),
    GetPage(
      name: '/searchpage',
      page: () => const SearchPage(),
    ),
    GetPage(
      name: '/notificationspage',
      page: () => const NotificationsPage(),
    ),
    GetPage(
      name: '/inboxpage',
      page: () => const InboxPage(),
    ),
    GetPage(
      name: '/msgspage',
      page: () => ChangeNotifierProvider(
        create: (context) => InboxProvider(),
      ),
    ),
  ];
}
