import 'package:easy_test/secand_page/view.dart';
import 'package:go_router/go_router.dart';

import 'main.dart';

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MyHomePage( ),
    ),   GoRoute(
      path: '/view',
      builder: (context, state) => const TestWidget( ),
    ),
    // Add more routes here
  ],
);
