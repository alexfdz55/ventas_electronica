import 'package:ventas_electronica/app/helpers/dialog_helper.dart';
import 'package:ventas_electronica/app/services/app_exceptions.dart';

class BaseServiceController {
  void handleError(error) {
    if (error is BadRequestException) {
      hideLoading();
      var message = error.message;
      DialogHelper.showErrorDialog(description: message);
    } else if (error is FetchDataException) {
      var message = error.message;
      DialogHelper.showErrorDialog(description: message);
    } else if (error is ApiNotRespondingException) {
      DialogHelper.showErrorDialog(
          description:
              'Disculpe, la consulta ha tardado mas tiempo de lo normal.');
    }
  }

  showLoading([String? message]) {
    DialogHelper.showLoading(message);
  }

  hideLoading() {
    DialogHelper.hideLoading();
  }
}
