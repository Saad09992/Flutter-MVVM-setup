import 'package:flutter/material.dart';
import 'package:mvvm/repos/auth_repo.dart';
import 'package:mvvm/utils/routes/routes_name.dart';
import 'package:mvvm/utils/utils.dart';

class AuthModel with ChangeNotifier {
  final _myRepo = AuthRepo();
  bool _loading = false;
  bool get loading => _loading;

  setLoading(bool val) {
    _loading = val;
    notifyListeners();
  }

  Future<void> signUpApi(dynamic data, BuildContext context) async {
    setLoading(true);
    _myRepo.signUpApi(data).then((value) {
      Utils.flushBarSuccessMessage(value.toString(), context);
      Navigator.pushNamed(context, RoutesName.login);
      setLoading(false);
    }).onError((error, StackTrace) {
      Utils.flushBarErrorMessage(error.toString(), context);
      setLoading(false);
    });
  }

  Future<void> loginApi(dynamic data, BuildContext context) async {
    setLoading(true);
    _myRepo.loginApi(data).then((value) {
      Utils.flushBarSuccessMessage(value.toString(), context);
      Navigator.pushNamed(context, RoutesName.home);
    }).onError((error, StackTrace) {
      Utils.flushBarErrorMessage(error.toString(), context);
    });
  }
}
