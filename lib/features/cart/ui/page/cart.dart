import 'package:test_order_application/core_ui/resources/constants.dart';
import 'package:test_order_application/export.dart';

@RoutePage()
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartBloc, CartState>(
      listener: (BuildContext context, CartState state) {},
      builder: (BuildContext context, CartState state) {
        context.read<CartBloc>().add(FetchAllCartItemsEvent());

        final List<OrderEntity>? element = state.orders;
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              Constants.cart,
            ),
          ),
          body: ListView.builder(
            itemCount: element?.length ?? 0,
            itemBuilder: (
              BuildContext context,
              int index,
            ) {
              return ListTile(
                title: Text(
                    '${Constants.tableNumber} ${element?[index].tableNumber.toString() ?? ''}'),
                subtitle: Column(
                  children: <Widget>[
                    const Text(
                      Constants.goods,
                    ),
                    Text(
                      element?[index].goods[index].name ?? '',
                    )
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
