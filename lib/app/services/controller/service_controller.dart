import 'package:ventas_electronica/app/services/controller/base_service_controller.dart';

import '../base_client.dart';

class ServiceController with BaseServiceController {
  void getData() async {
    showLoading('Obteniendo Data');
    var response = await BaseClient()
        .get('https://jsonplaceholder.typicode.com', '/todos/1')
        .catchError(handleError);
    if (response == null) return;
    hideLoading();
    print(response);
  }

  void posData() async {
    var request = {'message': 'Esto es una Prueba'};
    showLoading('Enviando Data');
    var response = await BaseClient()
        .post('https://jsonplaceholder.typicode.com', '/posts', request)
        .catchError(handleError);
    if (response == null) return;
    hideLoading();
    print(response);
  }
}
