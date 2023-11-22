import 'package:nested/nested.dart';
import 'package:test_order_application/core/di/di.dart';
import 'package:test_order_application/export.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencyInjection();
  await _initHive();
  runApp(Application());
}

Future<void> _initHive() async {
  await Hive.initFlutter();
  await getIt<LocaleDataProviderImpl>().initBox();
}

class Application extends StatelessWidget {
  final AppRouter approuter = getIt<AppRouter>();

  Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <SingleChildWidget>[
        BlocProvider<OrderBloc>(
          create: (BuildContext context) => OrderBloc(
            saveOrderUseCase: getIt<SaveOrderUseCase>(),
            fetchAllGoodsUseCase: getIt<FetchAllGoodsUseCase>(),
          ),
        ),
        BlocProvider<CartBloc>(
          create: (BuildContext context) => CartBloc(
            fetchAllOrders: getIt<FetchAllOrders>(),
          ),
          child: Container(),
        )
      ],
      child: MaterialApp.router(
        routerConfig: approuter.config(),
      ),
    );
  }
}
