import 'package:lottie/lottie.dart';
import 'package:test_order_application/core_ui/resources/constants.dart';
import 'package:test_order_application/core_ui/resources/dimensions.dart';
import 'package:test_order_application/core_ui/utils/image_paths.dart';
import 'package:test_order_application/export.dart';
import 'package:test_order_application/navigation/app_router.gr.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar.large(
              elevation: Dimensions.size_0,
              backgroundColor: ApplicationColors.white,
              flexibleSpace: Lottie.asset(ImagePaths.appBarImage),
            ),
            SliverAnimatedList(
              initialItemCount: Dimensions.size_10.toInt(),
              itemBuilder: (BuildContext context, int index,
                  Animation<double> animation) {
                return Padding(
                  padding: const EdgeInsets.all(
                    Applicationpadding.padding_16,
                  ),
                  child: ListTile(
                    onTap: () {
                      context.pushRoute(OrderPage(tableId: index));
                    },
                    title: Text('${Constants.tableNumber} ${++index}'),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
