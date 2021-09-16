import 'dart:async';

import 'package:flutter/services.dart';

class PluginZyutils {
  static const MethodChannel _channel = const MethodChannel('cn.kasax.plugin.action/zyutils');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
