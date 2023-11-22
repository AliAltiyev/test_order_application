import 'package:test_order_application/domain/usecase/fetch_all_orders.dart';
import 'package:test_order_application/domain/usecase/save_order.dart';
import 'package:test_order_application/export.dart';

final GetIt getIt = GetIt.instance;

/// Initializes dependency injection using the GetIt package in Dart.
Future<void> initDependencyInjection() async {
  _initHiveAdapters();

  // Register lazy singletons for various classes
  getIt.registerLazySingleton<AppRouter>(AppRouter.new);

  getIt.registerLazySingleton<LocaleDataProviderImpl>(
    LocaleDataProviderImpl.new,
  );

  getIt.registerLazySingleton<LocaleDataProvider>(LocaleDataProviderImpl.new);
  // Register OrderRepository with an anonymous function that creates an instance of OrderRepositoryImpl
  // and injects the LocaleDataProviderImpl instance obtained from getIt
  getIt.registerLazySingleton<OrderRepository>(() {
    return OrderRepsitoryImpl(
        localeDataProvider: getIt<LocaleDataProviderImpl>());
  });

  // Register FetchAllGoodsUseCase with an anonymous function that creates an instance of FetchAllGoodsUseCase
  // and injects the OrderRepository instance obtained from getIt
  getIt.registerLazySingleton<FetchAllGoodsUseCase>(() {
    return FetchAllGoodsUseCase(orderRepository: getIt<OrderRepository>());
  });
  //The same thing
  getIt.registerLazySingleton<SaveOrderUseCase>(() {
    return SaveOrderUseCase(orderRepository: getIt<OrderRepository>());
  });

  getIt.registerLazySingleton<FetchAllOrders>(() {
    return FetchAllOrders(orderRepository: getIt<OrderRepository>());
  });
}

void _initHiveAdapters() {
  Hive.registerAdapter<Order>(OrderAdapter());
  Hive.registerAdapter(GoodsAdapter());
}
