// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:test_order_application/export.dart' as _i6;
import 'package:test_order_application/features/cart/ui/page/cart.dart' as _i1;
import 'package:test_order_application/features/dashboard/ui/page/dashboard.dart'
    as _i2;
import 'package:test_order_application/features/home/ui/page/home.dart' as _i3;
import 'package:test_order_application/features/order/ui/page/order.dart'
    as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    CartPage.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CartPage(),
      );
    },
    DashboardPage.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DashboardPage(),
      );
    },
    HomePage.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    OrderPage.name: (routeData) {
      final args =
          routeData.argsAs<OrderPageArgs>(orElse: () => const OrderPageArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.OrderPage(
          tableId: args.tableId,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.CartPage]
class CartPage extends _i5.PageRouteInfo<void> {
  const CartPage({List<_i5.PageRouteInfo>? children})
      : super(
          CartPage.name,
          initialChildren: children,
        );

  static const String name = 'CartPage';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DashboardPage]
class DashboardPage extends _i5.PageRouteInfo<void> {
  const DashboardPage({List<_i5.PageRouteInfo>? children})
      : super(
          DashboardPage.name,
          initialChildren: children,
        );

  static const String name = 'DashboardPage';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomePage]
class HomePage extends _i5.PageRouteInfo<void> {
  const HomePage({List<_i5.PageRouteInfo>? children})
      : super(
          HomePage.name,
          initialChildren: children,
        );

  static const String name = 'HomePage';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.OrderPage]
class OrderPage extends _i5.PageRouteInfo<OrderPageArgs> {
  OrderPage({
    int? tableId,
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          OrderPage.name,
          args: OrderPageArgs(
            tableId: tableId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'OrderPage';

  static const _i5.PageInfo<OrderPageArgs> page =
      _i5.PageInfo<OrderPageArgs>(name);
}

class OrderPageArgs {
  const OrderPageArgs({
    this.tableId,
    this.key,
  });

  final int? tableId;

  final _i6.Key? key;

  @override
  String toString() {
    return 'OrderPageArgs{tableId: $tableId, key: $key}';
  }
}
