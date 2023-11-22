import 'package:test_order_application/export.dart';
import 'package:test_order_application/navigation/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')

/// The `AppRouter` class is responsible for defining the routes of the application.
class AppRouter extends $AppRouter {
  /// Returns a list of `AutoRoute` objects that define the routes of the application.
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(
          page: DashboardPage.page,
          initial: true,
          path: '/',
          children: <AutoRoute>[
            CustomRoute(
              page: OrderPage.page,
            ),
            CustomRoute(
              page: HomePage.page,
            ),
            CustomRoute(
              page: CartPage.page,
              maintainState: false,
            ),
          ],
        ),
      ];
}
