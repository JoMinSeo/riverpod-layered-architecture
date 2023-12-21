import 'package:logger/logger.dart';

var logger = Logger(
  printer: PrettyPrinter(
    methodCount: 4,
    colors: true,
    printEmojis: true,
  ),
);

var loggerNoMethod = Logger(
  printer: PrettyPrinter(
    methodCount: 0,
    colors: true,
    printEmojis: true,
    lineLength: 150,
  ),
);

void logD(String message) => logger.d(message);

void logI(String message) => loggerNoMethod.i(message);

void logW(String message) => loggerNoMethod.w(message);

void logE(String message) => logger.e(message);

void logT(String message) => loggerNoMethod.t(message);
