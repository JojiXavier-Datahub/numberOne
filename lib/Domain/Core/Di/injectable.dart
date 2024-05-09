import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:number_one_academy_v2/Domain/Core/Di/injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', 
  preferRelativeImports: true, 
  asExtension: true, 
)
void configureDependencies() => getIt.init();