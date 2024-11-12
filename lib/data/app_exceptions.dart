// ignore_for_file: prefer_typing_uninitialized_variables

class AppExceptions implements Exception {
  final _message;
  final _prefix;
  AppExceptions([this._message, this._prefix]);

  String toString() {
    return '$_prefix$_message';
  }
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? messege])
      : super(messege, 'Error during communication');
}

class BadReqException extends AppExceptions {
  BadReqException([String? messege])
      : super(messege, 'Invalid request communication');
}

class UnAuthException extends AppExceptions {
  UnAuthException([String? messege]) : super(messege, 'UnAuthorized request');
}

class InvalidInputException extends AppExceptions {
  InvalidInputException([String? messege])
      : super(messege, 'Invalid Input request');
}
