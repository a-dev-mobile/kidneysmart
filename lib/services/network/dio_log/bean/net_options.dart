import 'err_options.dart';
import 'req_options.dart';
import 'res_options.dart';

///Требуемые классы сетевых данных
class NetOptions {
  ReqOptions? reqOptions;
  ResOptions? resOptions;
  ErrOptions? errOptions;
  NetOptions({
    this.reqOptions,
    this.resOptions,
    this.errOptions,
  });
}

///Определите, являются ли возвращенные данные ненормальными
typedef ResError = bool Function(NetOptions res);
