// ignore_for_file: annotate_overrides

import 'package:mvvm/data/response/status.dart';

class ApiResponse<T> {
  Status? status;
  T? data;
  String? message;

  ApiResponse(this.status, this.data, this.message);

  ApiResponse.loading() {
    this.status = Status.LOADING;
  } // : status = Status.LOADING;
  ApiResponse.completed() {
    this.status = Status.COMPLETED;
  } // : status = Status.COMPLETED;
  ApiResponse.error() {
    this.status = Status.ERROR;
  } // : status = Status.ERROR;

  String toString() {
    return 'Status: $status \n Message : $message \n Data : $data';
  }
}
