
import 'dart:async';

import 'package:flutter/services.dart';

class PigeonMiddleware {
  static const MethodChannel _channel = MethodChannel('pigeon_middleware');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
