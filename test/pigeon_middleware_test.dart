import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pigeon_middleware/pigeon_middleware.dart';

void main() {
  const MethodChannel channel = MethodChannel('pigeon_middleware');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await PigeonMiddleware.platformVersion, '42');
  });
}
