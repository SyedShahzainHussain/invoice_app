import 'package:invoices/data/network/base_api_services.dart';
import 'package:invoices/data/network/network_api_services.dart';

class AuthRepository {
  final BaseApiServices baseApiServices = NetworkApiServices();

  Future loginpostApi(dynamic body) async {
    try {
      final respose = await baseApiServices.getPostApiResponse("", body);
      return respose;
    } catch (e) {
      rethrow;
    }
  }

  Future forgotPasswordPostApi(dynamic body) async {
    try {
      final respose = await baseApiServices.getPostApiResponse("", body);
      return respose;
    } catch (e) {
      rethrow;
    }
  }
}
