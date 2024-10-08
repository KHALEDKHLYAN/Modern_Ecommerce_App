import 'package:logger/logger.dart';

class LoggerHelper{
  static final Logger _loggger = Logger(
    printer: PrettyPrinter(),
    //Customize the log levels based on your needs
    level: Level.all,
  );
  
  static get message => null;

  static void debug(String messsage){
    _loggger.d(message);
  }

  static void info(String message){
    _loggger.i(message);
  }

  static void warning(String message){
    _loggger.w(message);
  }

  static void error(String message, [dynamic error]){
    _loggger.e(message, error:error, stackTrace: StackTrace.current);
  }
}
