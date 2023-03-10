import 'package:auto_route/auto_route.dart';
import 'package:portfolio_site/main.dart';

import '../project_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: MyHomePage, initial: true),
    AutoRoute(
      path: "/projects/:title",
      page: ProjectWrapperPage,
    ),
  ],
)
class $AppRouter {}
