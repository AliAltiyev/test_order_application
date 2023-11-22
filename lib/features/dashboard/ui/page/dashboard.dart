import 'package:test_order_application/core_ui/resources/constants.dart';
import 'package:test_order_application/export.dart';
import 'package:test_order_application/navigation/app_router.gr.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: <PageRouteInfo>[
        const HomePage(),
        OrderPage(),
        const CartPage(),
      ],
      transitionBuilder: (
        BuildContext context,
        Widget child,
        Animation<double> animation,
      ) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      builder: (BuildContext context, Widget child) {
        final TabsRouter tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  label: Constants.tables,
                  icon: Icon(
                    Icons.table_bar,
                  )),
              BottomNavigationBarItem(
                  label: Constants.goods,
                  icon: Icon(
                    Icons.view_list,
                  )),
              BottomNavigationBarItem(
                label: Constants.cart,
                icon: Icon(
                  Icons.production_quantity_limits,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
