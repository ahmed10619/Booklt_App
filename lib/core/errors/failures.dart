import 'package:dio/dio.dart';

abstract class Failures {
  final String errorMasg;

  Failures(this.errorMasg);
}

class FailureService extends Failures {
  FailureService(super.errorMasg);
  factory FailureService.fromDioError(DioException dioerror) {
    switch (dioerror.type) {
      case DioExceptionType.connectionTimeout:
        return FailureService('Connection TimeOut with ApiSevices');
      case DioExceptionType.sendTimeout:
        return FailureService('Send TimeOut with ApiSevices');
      case DioExceptionType.receiveTimeout:
        return FailureService('Receive TimeOut with ApiSevices');

      case DioExceptionType.badResponse:
        return FailureService.fromRespones(
            dioerror.response!.statusCode, dioerror.response!.data);
      case DioExceptionType.cancel:
        return FailureService('Cancel with ApiSevices');
      case DioExceptionType.connectionError:
        return FailureService('Connection with ApiSevices');
      case DioExceptionType.unknown:
        return FailureService('Connection with ApiSevices');
      default:
        return FailureService('opp there was an error, Try Again');
    }
  }

  factory FailureService.fromRespones(int? statecode, dynamic response) {
    if (statecode == 400 || statecode == 401 || statecode == 403) {
      return FailureService(response['error']['message']);
    } else if (statecode == 404) {
      return FailureService('Your Request Not Found, Try Again');
    } else if (statecode == 500) {
      return FailureService('Error Server, Try late');
    } else {
      return FailureService('opp there was an error, Try Again');
    }
  }
}
