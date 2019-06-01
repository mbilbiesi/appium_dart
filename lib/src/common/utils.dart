import 'package:appium_dart/src/handler/w3c_handler.dart';
import 'package:appium_dart/src/common/webdriver_handler.dart';

import 'package:webdriver/src/common/spec.dart';
import 'package:webdriver/src/handler/json_wire_handler.dart';

// TODO: will be AppiumWebDriverHandler
AppiumWebDriverHandler getHandler(WebDriverSpec spec) {
  switch (spec) {
    case WebDriverSpec.JsonWire:
      return JsonWireWebDriverHandler() as AppiumWebDriverHandler; // TODO: fix
    case WebDriverSpec.W3c:
      return W3cWebDriverHandler();
    case WebDriverSpec.Auto:
      return W3cWebDriverHandler(); // TODO: will apply only W3C spec
    default:
      throw UnsupportedError('Unexpected web driver spec: $spec.');
  }
}