import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:triple_pokedex/app/modules/home/home_controller.dart';
import 'package:triple_pokedex/app/modules/home/home_module.dart';
import 'package:triple_pokedex/app/shared/auth/http_provider.dart';

class HttpMock extends Mock implements HttpProvider{}

void main() {
  initModule(HomeModule());
  HomeController home;

  setUp(() {
    home = HomeModule.to.get<HomeController>();
  });

  group('HomeController Test', () {
    test("First Test", () {
      expect(home, isInstanceOf<HomeController>());
    });

  });
}
