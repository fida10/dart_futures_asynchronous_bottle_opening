import 'package:futures_asynchronous_bottle_opening/futures_asynchronous_bottle_opening.dart';
import 'package:test/test.dart';

void main() {
  group('Asynchronous Bottle Opening Tests', () {
    test('SodaBottle open method returns "Fizz fizz"', () async {
      var bottle = AsyncBottle.create();
      expect(await bottle.open(), equals('Fizz fizz'));
    });
  });
}
