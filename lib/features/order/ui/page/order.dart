import 'dart:html';

import 'package:test_order_application/core_ui/resources/constants.dart';
import 'package:test_order_application/core_ui/utils/image_paths.dart';
import 'package:test_order_application/export.dart';
import 'package:test_order_application/features/order/bloc/order_bloc.dart';

@RoutePage()
class OrderPage extends StatelessWidget {
  final int? tableId;
  const OrderPage({
    this.tableId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return BlocBuilder<OrderBloc, OrderState>(
      builder: (BuildContext context, OrderState state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              '${Constants.tableNumber} $tableId ',
            ),
          ),
          body: GridView.builder(
            itemCount: state.goods.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: Dimensions.size_2.toInt(),
            ),
            itemBuilder: (
              BuildContext context,
              int index,
            ) {
              final List<GoodsEntity> element = state.goods;
              return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                  Dimensions.size_16,
                )),
                height: size.height / Dimensions.size_4,
                width: size.width / Dimensions.size_4,
                child: Padding(
                  padding: const EdgeInsets.all(
                    Applicationpadding.padding_16,
                  ),
                  child: Container(
                    height: size.height / Dimensions.size_5,
                    width: size.width / Dimensions.size_3,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          Dimensions.size_16,
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Image.asset(
                            ImagePaths.bread,
                            fit: BoxFit.fill,
                            isAntiAlias: true,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(
                            Dimensions.size_10,
                          ),
                          child: Text(
                            element[index].name,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              element[index].price.toString(),
                            ),
                            IconButton.filled(
                              onPressed: () {
                                final GoodsEntity elemment = element[index];
                                context.read<OrderBloc>().add(
                                      MakeOrderEvent(
                                        order: OrderEntity(
                                          id: elemment.id,
                                          goods: element,
                                          tableNumber: tableId ?? 0,
                                          orderTime: DateTime.now(),
                                        ),
                                      ),
                                    );
                              },
                              icon: const Icon(Icons.add),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
