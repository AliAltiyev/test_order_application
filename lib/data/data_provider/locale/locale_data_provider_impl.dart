import 'package:test_order_application/export.dart';

/// The `LocaleDataProviderImpl` class is an implementation of the `LocaleDataProvider` interface.
/// It provides methods for managing orders in a Hive database.
class LocaleDataProviderImpl implements LocaleDataProvider {
  late Box<Order> box;

  /// Constructs a new `LocaleDataProviderImpl` instance with the given `box`.
  /// @param box The Hive box used to interact with the database.
  LocaleDataProviderImpl();

  /// Returns a list of all orders stored in the Hive database.
  /// @return A list of orders.
  @override
  List<Order> getAllGoods() {
    return box.values.toList();
  }

  /// Removes all orders from the Hive database.
  @override
  Future<void> removeAllOrders() async {
    await box.clear();
  }

  /// Removes a specific order from the Hive database.
  /// @param order The order to remove.
  @override
  Future<void> removeOrder(Order order) async {
    await box.delete(order.id);
  }

  /// Saves an order to the Hive database.
  /// @param order The order to save.
  @override
  Future<void> saveOrder(Order order) async {
    await box.put(order.id, order);
  }

  @override
  List<Goods> get goods => <Goods>[
        Goods(
          group: 'Хлебобулочные изделия',
          name: 'Хлеб белый',
          price: 25.0,
          imagePath: 'https://picsum.photos/200/300?image=1027',
          id: 1,
        ),
        Goods(
          group: 'Хлебобулочные изделия',
          name: 'Хлеб черный',
          price: 30.0,
          imagePath: 'https://picsum.photos/200/300?image=1028',
          id: 2,
        ),
        Goods(
          group: 'Хлебобулочные изделия',
          name: 'Булочка сдобная',
          price: 15.0,
          imagePath: 'https://picsum.photos/200/300?image=1029',
          id: 3,
        ),
        Goods(
          group: 'Хлебобулочные изделия',
          name: 'Булочка с маком',
          price: 18.0,
          imagePath: 'https://picsum.photos/200/300?image=1030',
          id: 4,
        ),
        Goods(
          group: 'Хлебобулочные изделия',
          name: 'Булочка с изюмом',
          price: 20.0,
          imagePath: 'https://picsum.photos/200/300?image=1031',
          id: 5,
        ),
        Goods(
          group: 'Хлебобулочные изделия',
          name: 'Багет',
          price: 25.0,
          imagePath: 'https://picsum.photos/200/300?image=1032',
          id: 6,
        ),
        Goods(
          group: 'Хлебобулочные изделия',
          name: 'Батон',
          price: 30.0,
          imagePath: 'https://picsum.photos/200/300?image=1033',
          id: 7,
        ),
        Goods(
          group: 'Хлебобулочные изделия',
          name: 'Пирожок с мясом',
          price: 25.0,
          imagePath: 'https://picsum.photos/200/300?image=1034',
          id: 8,
        ),
        Goods(
          group: 'Хлебобулочные изделия',
          name: 'Пирожок с капустой',
          price: 20.0,
          imagePath: 'https://picsum.photos/200/300?image=1035',
          id: 9,
        ),
        Goods(
          group: 'Хлебобулочные изделия',
          name: 'Пирожок с грибами',
          price: 25.0,
          imagePath: 'https://picsum.photos/200/300?image=1036',
          id: 10,
        ),
        Goods(
          group: 'Молочные продукты',
          name: 'Молоко',
          price: 90.0,
          imagePath: 'https://picsum.photos/200/300?image=1037',
          id: 11,
        ),
      ];

  @override
  Future<void> initBox() async {
    box = await Hive.openBox('order');
  }
}
